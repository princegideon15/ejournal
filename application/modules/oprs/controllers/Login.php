<?php if (!defined('BASEPATH')) {
	exit('No direct script access allowed');
}
class Login extends OPRS_Controller {
	public function __construct() {
		parent::__construct();
		$this->load->model('Login_model');
		$this->load->model('User_model');
		$this->load->model('Manuscript_model');
		$this->load->model('Review_model');
		$this->load->model('Library_model');
		$objMail = $this->my_phpmailer->load();
	}

	// public function delete_captcha() {
	// 	$dir = $_SERVER['DOCUMENT_ROOT'] . '/oprs/assets/image_for_captcha/';
	// 	$files = scandir($dir);
	// 	foreach ($files as $file) {
	// 		// unlink($dir.$file, 0777);
	// 		@chmod($dir . $file, 0777);
	// 		@unlink($dir . $file);
	// 	}
	// }

	/**
	 * Display login page
	 *
	 * @return void
	 */
	public function index() {

		if ($this->session->userdata('_oprs_logged_in')) {
			if ($this->session->userdata('sys_acc') == 1 || $this->session->userdata('sys_acc') == 3) {
				redirect('admin/dashboard');
			} else {
					redirect('oprs/dashboard');
			}
		}

		// $this->delete_captcha();
		// $config = array(
		// 	'img_url' => base_url() . 'assets/image_for_captcha/',
		// 	'img_path' => 'assets/image_for_captcha/',
		// 	'word_length' => 5,
		// 	'img_width' => 150,
		// 	'font_path' => FCPATH . 'captcha/font/verdana.ttf',
		// 	'font_size' => 20,
		// );
		// $captcha = create_captcha($config);
		// $data['cword'] = $captcha['word'];
		// $data['captchaImg'] = $captcha['image'];

		$data['main_title'] = "OPRS";
		$data['titles'] = $this->Library_model->get_titles();
		$data['main_content'] = "oprs/login";
		$this->_LoadPage('common/body', $data);
		$this->session->unset_userdata('_oprs_login_msg');
		$this->session->unset_userdata('_oprs_sign_up_msg');
	}

	/**
	 * Authenticate login credentials
	 *
	 * @return  void
	 */
	public function authenticate() {
		$login = $this->input->post('admin_login', true);
		$remember = $this->input->post('oprs_remember', true);
		$x = 0;
		if (isset($login)) {
			$usr_name = $this->input->post('usr_username', true);
			$usr_password = $this->input->post('usr_password', true);
			$usr_role = $this->input->post('usr_role');
			if ($this->Login_model->authenticate_user($usr_name, $usr_role)) {
				$hash = $this->Login_model->authenticate_user($usr_name, $usr_role);
				$count_hash = count($hash);
				foreach ($hash as $row) {
					$pass = $row->usr_password;
					$type_num = $row->usr_role;
					$type = $row->usr_desc;
					$id = $row->usr_id;
					$dp = $row->usr_dp;
					$sys = $row->usr_sys_acc;
					if (password_verify($usr_password, $pass)) {
						// privilege session
						$priv = $this->User_model->get_privilege($id);
						if($priv){
							foreach ($priv as $row) {
								$priv_sess = array('_prv_add' => $row->prv_add,
									'_prv_edt' => $row->prv_edit,
									'_prv_del' => $row->prv_delete,
									'_prv_view' => $row->prv_view,
									'_prv_exp' => $row->prv_export);
							}
						}
						else{
							$priv_sess = array('_prv_add' => 0,
							'_prv_edt' => 0,
							'_prv_del' => 0,
							'_prv_view' => 0,
							'_prv_exp' => 0);
						}
						
						$this->session->set_userdata($priv_sess);
						if ($sys == 1 || $sys == 3) {
							// login session
							$sess = array('_oprs_logged_in' => true,
								'_oprs_username' => $usr_name,
								'_oprs_type' => $type,
								'_oprs_type_num' => $type_num,
								'_oprs_user_id' => $id,
								'_oprs_user_dp' => $dp,
								'sys_acc' => $sys);
								
							is_online($id);
							$this->session->set_userdata($sess);
							save_log_oprs(_UserIdFromSession(), 'login', 0, _UserRoleFromSession());
							
							redirect('admin/dashboard');
						} else {
							
							// privilege session
							// login session
							$sess = array('_oprs_logged_in' => true,
								'_oprs_username' => $usr_name,
								'_oprs_type' => $type,
								'_oprs_type_num' => $type_num,
								'_oprs_user_id' => $id,
								'_oprs_user_dp' => $dp,
								'_oprs_srce' => '_op',
								'sys_acc' => $sys);
							is_online($id);
							$this->session->set_userdata($sess);
							save_log_oprs(_UserIdFromSession(), 'login', 0,  _UserRoleFromSession());
							if (_UserRoleFromSession() == 3 || _UserRoleFromSession() == 8) {
								redirect('oprs/dashboard');
							} else {
								redirect('oprs/manuscripts');
							}
						}
						// remember me
						$expire = time() + 3600;
						if (!empty($_POST['oprs_remember'])) {
							$this->input->set_cookie('oprs_cookie_user',
								$usr_name,
								3600);
							$this->input->set_cookie('oprs_cookie_pass',
								$usr_password,
								3600);
							$this->input->set_cookie('oprs_remember_me',
								$remember,
								3600);
						} else {
							delete_cookie('oprs_cookie_user');
							delete_cookie('oprs_cookie_pass');
							delete_cookie('oprs_remember_me');
						}
					} else {
						$x++;
					}
				}
				if ($x == 2 && $count_hash == 2) {
					// incorrect password
					$array_msg = array('icon' => 'fa fa-times', 'class' => 'alert-danger', 'msg' => 'Incorrect Password.');
					$this->session->set_flashdata('_oprs_login_msg', $array_msg);
					redirect('oprs/login');
				} else {
					// incorrect password
					$array_msg = array('icon' => 'fa fa-times', 'class' => 'alert-danger', 'msg' => 'Incorrect Password.');
					$this->session->set_flashdata('_oprs_login_msg', $array_msg);
					redirect('oprs/login');
				}
			} else {
				if ($this->Login_model->authenticate_member($usr_name)) {
					$hash = $this->Login_model->authenticate_member($usr_name);
					foreach ($hash as $row) {
						$pass = $row->usr_password;
						$type_num = 1;
						$type = 'Author';
						$id = $row->usr_id;
						$dp = '';
					}
					if (password_verify($usr_password, $pass)) {
						$sess = array('_oprs_logged_in' => true,
							'_oprs_username' => $usr_name,
							'_oprs_type' => $type,
							'_oprs_type_num' => $type_num,
							'_oprs_user_id' => $id,
							'_oprs_user_dp' => $dp,
							'_oprs_srce' => '_sk');
						is_online($id);
						$this->session->set_userdata($sess);
						save_log_oprs(_UserIdFromSession(), 'login', 0, _UserRoleFromSession());
						// remember me
						$year = time() + 31536000;
						if (isset($_POST['remember'])) {
							setcookie('oprs_cookie_user', $usr_name, $year);
							setcookie('oprs_cookie_pass', $usr_password, $year);
							setcookie('oprs_remember_me', $remember, $year);
						} else {
							$past = time() - 100;
							setcookie('oprs_remember_me', '', $past);
							setcookie('oprs_cookie_user', '', $past);
							setcookie('oprs_cookie_pass', '', $past);
						}
						redirect('oprs/manuscripts');
					} else {
						// incorrect password
						$array_msg = array('icon' => 'fa fa-times', 'class' => 'alert-danger', 'msg' => 'Incorrect Password.');
						$this->session->set_flashdata('_oprs_login_msg', $array_msg);
						redirect('oprs/login');
					}
				} else {
					// invalid user
					$array_msg = array('icon' => 'fa fa-user-times', 'class' => 'alert-danger', 'msg' => 'User not found.');
					$this->session->set_flashdata('_oprs_login_msg', $array_msg);
					redirect('oprs/login');
				}
			}
		}
	}

	/**
	 * Logout
	 *
	 * @return  [type]  [return description]
	 */
	public function logout() {
		save_log_oprs(_UserIdFromSession(), 'logout', 0, _UserRoleFromSession());
		is_offline(_UserIdFromSession());
		session_unset();
		redirect('oprs/login');
	}

	/**
	 * Create temporary reviewer account if manuscript request accepted
	 * 
	 *
	 * @param   int  $man_id  manuscript id
	 * @param   int  $action  accept/decline
	 * @param   int  $id      reviewer id
	 * @param   int  $days    review duration
	 *
	 * @return  void
	 */
	public function reviewer($man_id, $action, $id, $days = null) {
		$output = $this->Login_model->check_reveiwer_status($id, $man_id);
		foreach ($output as $key => $row) {
			$status = $row->rev_status;
			$response = $row->rev_date_respond;
		}
		if ($status == 0 || $status == 1) {
			// determine if reviewer has clicked accept or decline already
			$action = ($status == 1) ? 'accepted' : 'declined';
			$array_msg = array('icon' => 'fa fa-exclamation-triangle', 'class' => 'alert-warning', 'msg' => 'Sorry, you have already ' . $action . ' the request.');
			$this->session->set_flashdata('_oprs_login_msg', $array_msg);
			redirect('oprs/login');
			$this->session->unset_userdata('_oprs_login_msg');
		} else if ($status == 3) {
			$array_msg = array('icon' => 'fa fa-exclamation-triangle', 'class' => 'alert-danger', 'msg' => 'Sorry, the request has been expired.');
			$this->session->set_flashdata('_oprs_login_msg', $array_msg);
			redirect('oprs/login');
			$this->session->unset_userdata('_oprs_login_msg');
		} else {
		
			if ($action == 1) {
				// accept
				// get info reviewer
				$output = $this->Login_model->get_reviewer_info($id);
				foreach($output as $row){
					$rev_username = $row->rev_email;
					$rev_man_id = $row->rev_man_id;
				}
				if ($this->Login_model->authenticate_user($rev_username, 5)) {
					$array_msg = array('icon' => 'fa fa-check-square', 'class' => 'alert-success', 'msg' => 'Thank you for accepting the review request. <br/><br/>
					You already have a temporary account. Please use your
					existing username and password to begin the review. You have <strong>' . $days . ' days</strong> to accomplish and submit the score/evaluation sheet.');
				} else {
					$rev_password = 'nrcp' . rand(100, 1000);
					$rev_password_hash = password_hash($rev_password, PASSWORD_BCRYPT);
					// create temporary account
					$temp['usr_username'] = $rev_username;
					$temp['usr_password'] = $rev_password_hash;
					$temp['usr_desc'] = 'Reviewer';
					$temp['usr_role'] = 5;
					$temp['usr_sys_acc'] = 2;
					$temp['date_created'] = date('Y-m-d H:i:s');
					$temp['usr_id'] = $id;
					$this->User_model->create_temp_reviewer(array_filter($temp));
					save_log_oprs($id, 'accepted review request for', $rev_man_id, 5);
					$array_msg = array('icon' => 'fa fa-check-square', 'class' => 'alert-success', 'msg' => 'Thank you for accepting the review request. <br/><br/>
					To begin with review, please login to your temporary account
					with this username and password. <br/></br>
					Username: <strong>' . $rev_username . '</strong><br/>
					Password : <strong>' . $rev_password . '</strong><br/><br/>
					Please check your email for more details. You have <strong>' . $days . ' days</strong> to accomplish and submit the score/evaluation sheet.');
					// $this->send_password_copy($rev_username, $rev_password);
				}

				// Please take note of your username and password for your next login. You have <strong>' . $days . ' days</strong> to accomplish and submit the score/evaluation sheet.');
				
				// update reviewer
				$revs['rev_status'] = $action;
				$revs['rev_notif_status'] = 0;
				$revs['rev_date_respond'] = date('Y-m-d H:i:s');
				$where['rev_id'] = $id;
				$where['rev_man_id'] = $man_id;
				$this->Manuscript_model->update_reviewer(array_filter($revs), $where);

				// send toke for apprection mail to reviewer
				$this->send_appreciation_msg($id, $rev_password);
				// $this->send_appreciation_msg($rev_username);

				// add flag to tblscores
				$post_scr['scr_man_id'] = $man_id;
				$post_scr['scr_man_rev_id'] = $id;
				$post_scr['scr_status'] = 2;
				$this->Review_model->save_review(array_filter($post_scr));
				$this->session->set_flashdata('_oprs_login_msg', $array_msg);
				redirect('oprs/login');
				$this->session->unset_userdata('_oprs_login_msg');
			} else {
				$rev_username = $this->Login_model->get_reviewer_info($id);
				$this->decline_request($rev_username, $man_id, $id);

				// decline
				// update reviewer
				$revs['rev_status'] = '$action';
				$revs['rev_date_respond'] = date('Y-m-d H:i:s');
				$where['rev_id'] = $id;
				$where['rev_man_id'] = $man_id;
				$this->Manuscript_model->update_reviewer(array_filter($revs), $where);
				$array_msg = array('icon' => 'fa fa-times-circle', 'class' => 'alert-warning', 'msg' => 'Request declined.');
				$this->session->set_flashdata('_oprs_login_msg', $array_msg);
				redirect('oprs/login');
				$this->session->unset_userdata('_oprs_login_msg');
			}
		}
	}


	/**
	 * Send email of password copy of reviewer who accepted the request
	 *
	 * @param   string  $email  reviewer email
	 * @param   string  $pass   reviewer password
	 *
	 * @return  void
	 */
	// public function send_password_copy($email, $pass) {
	// 	$nameuser = 'eJournal Admin';
	// 	$usergmail = 'nrcp.ejournal@gmail.com';
	// 	$password = '<<NRCP!!ejournal>>';
	// 	$mail = new PHPMailer;
	// 	$mail->isSMTP();
	// 	$mail->Host = "smtp.gmail.com";
	// 	// Specify main and backup server
	// 	$mail->SMTPAuth = true;
	// 	$mail->Port = 465;
	// 	// Enable SMTP authentication
	// 	$mail->Username = $usergmail;
	// 	// SMTP username
	// 	$mail->Password = $password;
	// 	// SMTP password
	// 	$mail->SMTPSecure = 'ssl';
	// 	// Enable encryption, 'ssl' also accepted
	// 	$mail->From = $usergmail;
	// 	$mail->FromName = $nameuser;
	// 	$mail->AddCC('gerardbalde15@gmail.com');
	// 	// $mail->AddCC('nrcpeditorial2021@gmail.com');
	// 	// $mail->AddCC('oed@nrcp.dost.gov.ph');
	// 	$mail->AddAddress($email);
	// 	$mail->Subject = "OPRS Password Copy";
	// 	$mail->Body = $pass . ' Please change your password after logging in.';
	// 	$mail->IsHTML(true);
	// 	$mail->smtpConnect([
	// 		'ssl' => [
	// 			'verify_peer' => false,
	// 			'verify_peer_name' => false,
	// 			'allow_self_signed' => true,
	// 		],
	// 	]);
	// 	if (!$mail->Send()) {
	// 		echo '</br></br>Message could not be sent.</br>';
	// 		echo 'Mailer Error: ' . $mail->ErrorInfo . '</br>';
	// 		exit;
	// 	}
	// }

	/**
	 * Send email of password copy of reviewer who accepted the request
	 *
	 * @param   string  $email  reviewer email
	 * @param   string  $pass   reviewer password
	 *
	 * @return  void
	 */
	public function send_appreciation_msg($id, $rev_password) {
		
		$output = $this->Manuscript_model->get_reviewer_by_id($id);

		foreach($output as $row){
			$email = $row->rev_email;
			$dear = $row->rev_name;
			$man_id = $row->rev_man_id;
		}

		
		// get manuscript info
		$manus_info = $this->Manuscript_model->get_manus_for_email($man_id);
		foreach ($manus_info as $key => $val) {
			$man_pdf = $val->man_file;
			$man_word = $val->man_word;
		}

		$link = 'https://researchjournal.nrcp.dost.gov.ph/oprs/login';

		$nameuser = 'eJournal Admin';
		$usergmail = 'nrcp.ejournal@gmail.com';
		$password = '<<NRCP!!ejournal>>';
		$mail = new PHPMailer;
		$mail->isSMTP();
		$mail->Host = "smtp.gmail.com";
		// Specify main and backup server
		$mail->SMTPAuth = true;
		$mail->Port = 465;
		// Enable SMTP authentication
		$mail->Username = $usergmail;
		// SMTP username
		$mail->Password = $password;
		// SMTP password
		$mail->SMTPSecure = 'ssl';
		// Enable encryption, 'ssl' also accepted
		$mail->From = $usergmail;
		$mail->FromName = $nameuser;
		$mail->AddBCC('gerardbalde15@gmail.com');
		$mail->AddCC('lanie.manalo@nrcp.dost.gov.ph');
		//$mail->AddBCC('nrcpeditorial2021@gmail.com');
		// $mail->AddBCC('oed@nrcp.dost.gov.ph');
		$mail->AddAddress($email);
		$nda = '/var/www/html/ejournal/assets/oprs/uploads/SAMPLE_NDA_NRCP.doc';
		$mail->addAttachment($nda);
		$word = '/var/www/html/ejournal/assets/oprs/uploads/manuscriptsdoc/' . $man_word;
		$mail->addAttachment($word);
		$pdf = '/var/www/html/ejournal/assets/oprs/uploads/manuscripts/' . $man_pdf;
		$mail->addAttachment($pdf);
		$mail->Subject = "Thank you for accepting";

		$htmlBody = 'Dear ' . $dear . ', <br/><br/>' . 

		'Thank you for accepting our invitation to be a reviewer. <br/><br/>' . 

		'Please login to your temporary account: <br/><br/>' . 
		'Username: <strong>' . $email . '</strong><br/>' .
		'Password: <strong>' . $rev_password . '</strong><br/><br/>' .
		
		'Click <a href="' . $link .'" target="_blank">' . $link .'</a> to login. <br/><br/><br/>'.

		'Full text manuscript in PDF and Evaluation form will appear upon clicking "Start Review" button when you logged in. <br/><br/>' .


		'Please see attached NDA and Full text manuscript.<br/><br/>'.


		'Thank you. <br/><br/>

		Managing Editor <br/>
		NRCP Research Journal <br/><br/>
		
		** THIS IS AN AUTOMATED MESSAGE PLEASE DO NOT REPLY **';


		$mail->Body = $htmlBody;
		$mail->IsHTML(true);
		$mail->smtpConnect([
			'ssl' => [
				'verify_peer' => false,
				'verify_peer_name' => false,
				'allow_self_signed' => true,
			],
		]);
		if (!$mail->Send()) {
			echo '</br></br>Message could not be sent.</br>';
			echo 'Mailer Error: ' . $mail->ErrorInfo . '</br>';
			exit;
		}
	}

	/**
	 * Check multiple account for password recovery
	 *
	 * @param   string  $email  user acount
	 *
	 * @return  int          number of account found
	 */
	public function check_multiple_account($email) {
		$output = $this->Login_model->check_multiple_account($email);
		echo json_encode($output);
	}

	/**
	 * Send email if reviewer decline
	 *
	 * @param   string  $email   reivewer email
	 * @param   int  $id      manuscript id
	 * @param   int  $rev_id  reviewer id
	 *
	 * @return  void
	 */
	public function decline_request($email, $id, $rev_id) {
		// get manuscript info
		$manus_info = $this->Manuscript_model->get_manus_for_email($id);
		foreach ($manus_info as $key => $val) {
			$man_title = $val->man_title;
			$file_name = $val->man_file;
			$man_author = $val->man_author;
			$man_affiliation = $val->man_affiliation;
			$date_avail = date_format(new DateTime($val->man_date_available), 'F j, Y, g:i a');
		}

		// get reviewer information
		$rev_info = $this->Manuscript_model->get_rev_info($rev_id);
		foreach ($rev_info as $key => $val) {
			$timeframe = $val->rev_timeframe;
			$rev_timer = $val->rev_request_timer;
		}

		// get managing editor
		$man_edit = $this->Manuscript_model->get_man_editor_email($id);
		 
		// email
		$nameuser = 'eJournal Admin';
		$usergmail = 'nrcp.ejournal@gmail.com';
		$password = '<<NRCP!!ejournal>>';
		$mail = new PHPMailer;
		$mail->isSMTP();
		$mail->Host = "smtp.gmail.com";
		// Specify main and backup server
		$mail->SMTPAuth = true;
		$mail->Port = 465;
		// Enable SMTP authentication
		$mail->Username = $usergmail;
		// SMTP username
		$mail->Password = $password;
		// SMTP password
		$mail->SMTPSecure = 'ssl';
		// Enable encryption, 'ssl' also accepted
		$mail->From = $usergmail;
		$mail->FromName = $nameuser;
		// $link_to = base_url() . 'oprs/login/reviewer';
		// Server
		// $file_to_attach = '/var/www/html/ejournal/assets/oprs/uploads/manuscripts/';
		//Localhost
		// $file_to_attach = $_SERVER['DOCUMENT_ROOT'].'/oprs/assets/uploads/manuscripts/';
		$rev_c = 0;
		$mail->AddBCC('gerardbalde15@gmail.com');
		$mail->AddCC('lanie.manalo@nrcp.dost.gov.ph');
		$mail->AddCC($man_edit);
		//$mail->AddCC('nrcpeditorial2021@gmail.com');
		// $mail->AddCC('oed@nrcp.dost.gov.ph');
		$mail->AddAddress($email);
		// $mail->addAttachment($file_to_attach . $file_name);
		$reviewer_info = $this->Review_model->get_rev_info($rev_id);
		if (strpos($rev_id, 'R') !== false) {
			foreach ($reviewer_info as $key => $val) {
				$header = '<span style="text-transform:uppercase"><strong>' . $val->rev_title . ' ' . $val->rev_name . '</strong></span><br/>' .
				$val->rev_contact . '<br/><br/>';
				$dear = 'Dear <span style="text-transform:uppercase"><strong>' . $val->rev_title . ' ' . $val->rev_name . '</strong></span> : <br/><br/>';
				$exp = $val->rev_specialization;
			}
		} else if (strpos($rev_id, 'NM') !== false) {
			foreach ($reviewer_info as $key => $val) {
				$header = '<span style="text-transform:uppercase"><strong>' . $val->non_title . ' ' . $val->non_first_name . ' ' . $val->non_middle_name . ' ' . $val->non_last_name . '</strong></span><br/>' .
				$val->non_affiliation . '<br/>' .
				$val->non_contact . '<br/><br/>';
				$dear = 'Dear <span style="text-transform:uppercase"><strong>' . $val->non_title . ' ' . $val->non_last_name . '</strong></span> : <br/><br/>';
				$exp = $val->non_specialization;
			}
		} else {
			foreach ($reviewer_info as $key => $val) {
				$header = '<span style="text-transform:uppercase"><strong>' . $val->title_name . ' ' . $val->pp_first_name . ' ' . $val->pp_middle_name . ' ' . $val->pp_last_name . ' ' . $val->pp_extension . '</strong></span><br/>' .
				$val->emp_pos_id . '<br/>' .
				$val->emp_div_dept . '<br/>' .
				$val->emp_ins_id . '<br/>' .
				$val->emp_address . '<br/><br/>';
				$dear = 'Dear <span style="text-transform:uppercase"><strong>' . $val->title_name . ' ' . $val->pp_last_name . '</strong></span> : <br/><br/>';
				$exp = $val->mpr_specialization;
			}
		}

		// email content
		$htmlBody = date("F j, Y") . '<br/><br/>' .
			$header .
			$dear .
			'We understand your busy schedule. We are looking forward to work with you in the future issues. <br/><br/>'.
			'Thank you. <br/><br/>'.
			'Very truly yours,<br/>'.
			'Managing Editor<br/>'.
			'NRCP Research Journal<br/><br/>'.
			'** THIS IS AN AUTOMATED MESSAGE PLEASE DO NOT REPLY **';
		$mail->Subject = "NRCP Journal Publication : Manuscript Request Declined";
		$mail->Body = $htmlBody;
		$mail->IsHTML(true);
		$mail->smtpConnect([
			'ssl' => [
				'verify_peer' => false,
				'verify_peer_name' => false,
				'allow_self_signed' => true,
			],
		]);
		if (!$mail->Send()) {
			echo '</br></br>Message could not be sent.</br>';
			echo 'Mailer Error: ' . $mail->ErrorInfo . '</br>';
			exit;
		}
		$rev_c++;
	}
}

/* End of file Login.php */