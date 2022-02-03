<?php if (!defined('BASEPATH')) {
	exit('No direct script access allowed');
}
class Email extends OPRS_Controller {
	public function __construct() {
		parent::__construct();
		$objMail = $this->my_phpmailer->load();
		$this->load->model('Manuscript_model');
		$this->load->model('Review_model');
	}

	/**
	 * this function check review request if accepted or rejected
	 *
	 * @return  void
	 */
	public function check_mail_request() {
		$output = $this->Manuscript_model->get_reviewer_status();
		foreach ($output as $key => $val) {
			$future_date = date('Y-m-d H:i:s', strtotime($val->date_created . " + $val->rev_request_timer days"));
			$future = strtotime($future_date);
			$timeleft = $future - strtotime(date('Y-m-d H:i:s'));
			$daysleft = ((($timeleft / 24) / 60) / 60);
			$notif_sent = $val->rev_notif_status;
			$r_days = (int)$daysleft;

			if ($r_days < 7 && $notif_sent == 0) {
				if ($val->rev_request_timer != 1){
					// send notif if 1 day left and notif not sent yet
					$this->email_notification_content($val->rev_email, $val->rev_man_id, $val->rev_id, $r_days);
				}

				// $post['rev_notif_status'] = 1;
				// $where['row_id'] = $val->row_id;
				// $this->Manuscript_model->update_reviewer(array_filter($post), $where);
			} elseif($r_days == 1 && $notif_sent == 0){
				if ($val->rev_request_timer != 1){
					// send notif if 1 day left and notif not sent yet
					$this->email_notification_content($val->rev_email, $val->rev_man_id, $val->rev_id, $r_days);
				}

				$post['rev_notif_status'] = 1;
				$where['row_id'] = $val->row_id;
				$this->Manuscript_model->update_reviewer(array_filter($post), $where);
			} elseif ($r_days == 0 && $notif_sent == 1) {
				// expire
				$post['rev_status'] = 3;
				$where['row_id'] = $val->row_id;
				$this->Manuscript_model->update_reviewer(array_filter($post), $where);
				$this->email_lapsed($val->rev_email, $val->rev_man_id, $val->rev_id);
			}
		}
	}
	
	/**
	 * this function check if reviewer completed the review
	 *
	 * @return  void
	 */
	public function check_mail_reviewer() {
		$output = $this->Manuscript_model->get_review_status();
		foreach ($output as $key => $val) {
			$future_date = date('Y-m-d H:i:s', strtotime($val->rev_date_respond . " + $val->rev_timeframe days"));
			$future = strtotime($future_date);
			$timeleft = $future - strtotime(date('Y-m-d H:i:s'));
			$daysleft = ((($timeleft / 24) / 60) / 60);
			$notif_sent = $val->rev_notif_status;
			$r_days = (int)$daysleft;

			if ($r_days > 1 && $r_days < 7 && $notif_sent == 0) {
				// send notif if 5 days left and notif not sent yet
				$this->email_notification_content_review($val->rev_email, $val->rev_man_id, $val->rev_id, $r_days);
				// $post['rev_notif_status'] = 1;
				// $where['row_id'] = $val->row_id;
				// $this->Manuscript_model->update_reviewer(array_filter($post), $where);
			} elseif($r_days == 1 && $notif_sent == 0){
				// send notif if 1 day left and notif not sent yet
				$this->email_notification_content_review($val->rev_email, $val->rev_man_id, $val->rev_id, $r_days);
				$post['rev_notif_status'] = 1;
				$where['row_id'] = $val->row_id;
				$this->Manuscript_model->update_reviewer(array_filter($post), $where);
			} elseif ($r_days == 0 && $notif_sent == 1) {
				// disable reviewer account if 0 day left and notif sent already
				$post['usr_status'] = 2;
				$where['row_id'] = $val->row_id;
				$this->User_model->disable_reviewer(array_filter($post), $where);
				$post_scr['scr_man_id'] = $val->rev_man_id;
				$post_scr['scr_man_rev_id'] = $val->rev_id;
				$post_scr['scr_status'] = 3;
				$this->Review_model->save_review(array_filter($post_scr));
				$this->email_lapsed($val->rev_email, $val->rev_man_id, $val->rev_id);
			} 
		}
	}

	/**
	 * this function sends email to remind request
	 *
	 * @param   string  $email   reviewer's email
	 * @param   int  $id      manuscript's id
	 * @param   int  $rev_id  reviewer's id
	 *
	 * @return  void
	 */
	public function email_notification_content($email, $id, $rev_id, $r_days) {
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
		$link_to = base_url() . 'oprs/login/reviewer';
		// Server
		$file_to_attach = '/var/www/html/ejournal/assets/oprs/uploads/manuscripts/';
		// Localhost
		// $file_to_attach = $_SERVER['DOCUMENT_ROOT'].'/oprs/assets/uploads/manuscripts/';
		$rev_c = 0;
		$mail->AddBCC('gerardbalde15@gmail.com');
		$mail->AddAddress($email);
		$mail->addAttachment($file_to_attach . $file_name);
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
			'Please be reminded that there is only '.$r_days.' day/s left for you to ' .
			'<u><a href="' . $link_to . '/' . $id . '/1/' . $rev_id . '/' . $timeframe . '" target="_blank" style="color:green;cursor:pointer;">ACCEPT</a></u> or <u><a href="' . $link_to . '/' . $id . '/0/' . $rev_id . '"' .
			'style="color:red;cursor:pointer;">DECLINE</a></u> the request for review on manuscript titled <em>' . $man_title . '</em> for publication to the NRCP Research Journal. <br/><br/>' .
				
			'Thank you. <br/><br/>'.
			
			'Very truly yours,<br/>'.
			'Managing Editor<br/>'.
			'NRCP Research Journal<br/><br/>'.
			'** THIS IS AN AUTOMATED MESSAGE PLEASE DO NOT REPLY **';
		$mail->Subject = "NRCP Journal Publication : Request for Manuscript Review (".$r_days." day(s) left)";
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

	/**
	 * this function sends email to remind review
	 *
	 * @param   string  $email   reviewer's email
	 * @param   int  $id      manuscript's id
	 * @param   int  $rev_id  reviewer's id
	 *
	 * @return  void
	 */
	public function email_notification_content_review($email, $id, $rev_id, $r_days) {
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
		$link_to = base_url() . 'oprs/login/reviewer';
		// Server
		$file_to_attach = '/var/www/html/ejournal/assets/oprs/uploads/manuscripts/';
		// Localhost
		// $file_to_attach = $_SERVER['DOCUMENT_ROOT'].'/oprs/assets/uploads/manuscripts/';
		$rev_c = 0;
		$mail->AddBCC('gerardbalde15@gmail.com');
		$mail->AddAddress($email);
		$mail->addAttachment($file_to_attach . $file_name);
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
			'May we remind you of your Review on the manuscript <em>"' . $man_title . '"</em> ' .
			'which is being considered for publication in the NRCP Research Journal. Given the deadline set, may we expect the '. 
			'accomplished evaluation/score sheet within the next '.$r_days.' days?  <br/><br/>' .

			'In case we do not hear from you, we shall automatically render your username and password deactivated. <br/>' .

			'Thank you. <br/><br/>' .

			'Very truly yours,<br/>' .
			'Managing Editor<br/>'. 
			'NRCP Research Journal <br/><br/>' .
			'** THIS IS AN AUTOMATED MESSAGE PLEASE DO NOT REPLY **';
		$mail->Subject = "NRCP Journal Publication : Manuscript Review (".$r_days." day left)";
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

	/**
	 * this function sends email to lapsed requests and reviews
	 *
	 * @param   string  $email   reviewer's email
	 * @param   int  $id      manuscript's id
	 * @param   int  $rev_id  reviewer's id
	 *
	 * @return  void
	 */
	public function email_lapsed($email, $id, $rev_id) {
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
		// Localhost
		// $file_to_attach = $_SERVER['DOCUMENT_ROOT'].'/oprs/assets/uploads/manuscripts/';
		$rev_c = 0;
		$mail->AddBCC('gerardbalde15@gmail.com');
		$mail->AddCC('lanie.manalo@nrcp.dost.gov.ph');
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
		$mail->Subject = "NRCP Journal Publication : Manuscript Review Lapsed";
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