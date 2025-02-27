<?php if (!defined('BASEPATH')) {
	exit('No direct script access allowed');
}
class Manuscripts extends OPRS_Controller {
	public function __construct() {
		parent::__construct();
		if (!$this->session->userdata('_oprs_logged_in')) {
			redirect('oprs/login');
		}
		$this->load->model('Manuscript_model');
		$this->load->model('Login_model');
		$this->load->model('Coauthor_model');
		$this->load->model('Review_model');
		$this->load->model('Library_model');
		$this->load->model('Dashboard_model');
		$this->load->model('Log_model');
		$this->load->model('User_model');
		$this->load->model('Feedback_model');
		$this->load->model('Email_model');
		$objMail = $this->my_phpmailer->load();
		$this->check_expired_request();
	}

	/**
	 * Display manuscript
	 *
	 * @return void
	 */
	public function index() {

		if ($this->session->userdata('_oprs_logged_in')) {
			if($this->session->userdata('sys_acc') == 2 || $this->session->userdata('sys_acc') == 3 )
			{
				$data['manus'] = $this->Manuscript_model->get_manus($this->session->userdata('_oprs_srce'), $this->session->userdata('_oprs_username'));
				$data['u_man_jor'] = $this->Manuscript_model->get_oprs_journal();
				$data['publish'] = $this->Dashboard_model->get_publishables();
				$data['u_journal'] = $this->Manuscript_model->get_unique_journal();
				$data['u_year'] = $this->Manuscript_model->get_unique_journal_year();
				$data['criteria'] = $this->Review_model->get_criterias();
				$data['logs'] = $this->Log_model->count_logs();
				$data['main_title'] = "OPRS";
				$data['main_content'] = "oprs/manuscripts";
				$data['titles'] = $this->Library_model->get_titles();
				$data['man_count'] = $this->Manuscript_model->get_manuscripts(0);
				$data['man_new'] = $this->Manuscript_model->get_manuscripts(1);
				$data['man_onreview'] = $this->Manuscript_model->get_manuscripts(2);
				$data['man_reviewed'] = $this->Manuscript_model->get_manuscripts(3);
				$data['completed'] = $this->Manuscript_model->get_completed_reviews();
				$data['editorial'] = $this->Manuscript_model->get_manuscripts(4);
				$data['man_final'] = $this->Manuscript_model->get_manuscripts(5);
				$data['man_for_p'] = $this->Manuscript_model->get_manuscripts(6);
				$data['man_lay'] = $this->Manuscript_model->get_manuscripts(7);	
				$data['publishables'] = $this->Manuscript_model->get_manuscripts(8);	
				$data['published'] = $this->Manuscript_model->get_manuscripts(9);		
				$data['usr_count'] = $this->User_model->count_user();
				$data['feed_count'] = $this->Feedback_model->count_feedbacks();
				$data['existing'] = $this->Manuscript_model->get_manuscripts(99);
				$this->_LoadPage('common/body', $data);
			}else{
				redirect('admin/dashboard');
			}
		}
	}


	/**
	 * Retrieve journals with publishable manuscripts
	 *
	 * @param   string  $jor  journal, volume, issue and year
	 *
	 * @return  array	list of manuscripts
	 */
	public function get_publishable_manus($jor)
	{	
		$output = $this->Manuscript_model->get_publishable_manus($jor);
		echo json_encode($output);
	}

	/**
	 * Retrieve all SKMS members
	 *
	 * @return void
	 */
	public function members() {
		$mem = $this->Manuscript_model->get_members();
		echo json_encode($mem);
	}

	// public function non_members() {
	// 	$mem = $this->Manuscript_model->get_non_members();
	// 	echo json_encode($mem);
	// }
	// public function non_member_info($id) {
	// 	$output = $this->Review_model->get_non_member_info($id);
	// 	echo json_encode($output);
	// }

	/**
	 * Retrieve manuscript authors and coauthors
	 *
	 * @param   string  $action  action
	 * @param   int  $id      manuscript id
	 *
	 * @return  array           list of authors
	 */
	public function authors($action = null, $id = null) {
		if ($action == 'get') {
			$output = $this->Coauthor_model->get_manus_acoa($id);
			echo json_encode($output);
		} else {
			$output = $this->Manuscript_model->get_author_coa();
			echo json_encode($output);
		}
	}
	
	/**
	 * Upload manuscript by Managing Editor (bypass)
	 *
	 * @return  void
	 */
	public function upload() {
		$tableName = 'tblmanuscripts';
		$oprs = $this->load->database('dboprs', true);
		$result = $oprs->list_fields($tableName);
		$post = array();
		$uploader_id = $this->input->post('man_usr_id', true);

		if($uploader_id == ''){
			$user_id = _UserIdFromSession();
			$source = '_me';
		}else{
			$user_id = $this->input->post('man_usr_id', true);
			$source = '_sk_r'; // uploaded by managing editor
		}

		foreach ($result as $i => $field) {
			$post[$field] = $this->input->post($field, true);
			//full manuscript
			$file_string_man = str_replace(" ", "_", $_FILES['man_file']['name']);
			$file_no_ext_man = preg_replace("/\.[^.	]+$/", "", $file_string_man);
			$clean_file_man = preg_replace('/[^A-Za-z0-9\-]/', '_', $file_no_ext_man);

			$filename_man = $_FILES["man_file"]["name"];
			$file_ext_man = pathinfo($filename_man, PATHINFO_EXTENSION);

			$post['man_file'] = date('YmdHis') . '_' . $clean_file_man . '.' . $file_ext_man;
			$upload_file_man = $post['man_file'];

			//abstract
			$file_string_abs = str_replace(" ", "_", $_FILES['man_abs']['name']);
			$file_no_ext_abs = preg_replace("/\.[^.]+$/", "", $file_string_abs);
			$clean_file_abs = preg_replace('/[^A-Za-z0-9\-]/', '_', $file_no_ext_abs);

			$filename_abs = $_FILES["man_abs"]["name"];
			$file_ext_abs = pathinfo($filename_abs, PATHINFO_EXTENSION);

			$post['man_abs'] = date('YmdHis') . '_' . $clean_file_abs . '.' . $file_ext_abs;
			$upload_file_abs = $post['man_abs'];

			//word
			$file_string_word = str_replace(" ", "_", $_FILES['man_word']['name']);
			$file_no_ext_word = preg_replace("/\.[^.]+$/", "", $file_string_word);
			$clean_file_word = preg_replace('/[^A-Za-z0-9\-]/', '_', $file_no_ext_word);

			$filename_word = $_FILES["man_word"]["name"];
			$file_ext_word = pathinfo($filename_word, PATHINFO_EXTENSION);

			$post['man_word'] = date('YmdHis') . '_' . $clean_file_word . '.' . $file_ext_word;
			$upload_file_word = $post['man_word'];
		}

		$post['date_created'] = date('Y-m-d H:i:s');
		$post['man_user_id'] = $user_id;
		$post['man_status'] = 1;
		$post['man_source'] = $source; 

		//local
		// $dir_man = $_SERVER['DOCUMENT_ROOT'] . '/ejournal/assets/oprs/uploads/manuscripts/';
		//server
		$dir_man = '/var/www/html/ejournal/assets/oprs/uploads/initial_manuscripts_pdf/';
	
		//upload full manuscript
		$config_man['upload_path'] = $dir_man;
		$config_man['allowed_types'] = 'pdf';
		$config_man['file_name'] = $upload_file_man;

		$this->load->library('upload', $config_man);
		$this->upload->initialize($config_man);

		if (!$this->upload->do_upload('man_file')) {
			$error = $this->upload->display_errors();
		} else {
			$data = $this->upload->data();
		}

		//local
		// $dir_abs = $_SERVER['DOCUMENT_ROOT'] . '/ejournal/assets/oprs/uploads/abstracts/';
		//server
		 $dir_abs = '/var/www/html/ejournal/assets/oprs/uploads/initial_abstracts_pdf/';
	
		//upload full manuscript
		$config_abs['upload_path'] = $dir_abs;
		$config_abs['allowed_types'] = 'pdf';
		$config_abs['file_name'] = $upload_file_abs;

		$this->load->library('upload', $config_abs);
		$this->upload->initialize($config_abs);

		if (!$this->upload->do_upload('man_abs')) {
			$error = $this->upload->display_errors();
		} else {
			$data = $this->upload->data();
		}

		//local
		// $dir_word = $_SERVER['DOCUMENT_ROOT'] . '/ejournal/assets/oprs/uploads/manuscriptsdoc/';
		//server
		 $dir_word = '/var/www/html/ejournal/assets/oprs/uploads/initial_manuscripts_word/';
	
		//upload full manuscript word
		$config_word['upload_path'] = $dir_word;
		$config_word['allowed_types'] = 'doc|docx';
		$config_word['file_name'] = $upload_file_word;

		$this->load->library('upload', $config_word);
		$this->upload->initialize($config_word);

		if (!$this->upload->do_upload('man_word')) {
			$error = $this->upload->display_errors(); 
		} else {
			$data = $this->upload->data();
		}


		$output = $this->Manuscript_model->save_manuscript(array_filter($post));

		//save tracking
		$track['trk_man_id'] = $output;
		$track['trk_processor'] = $user_id;
		$track['trk_process_datetime'] = date('Y-m-d H:i:s');
		$track['trk_source'] = $source;
		$this->Manuscript_model->tracking(array_filter($track));

		$coauthors = $this->input->post('coa_name', true);
		$affiliations = $this->input->post('coa_affiliation', true);
		$emails = $this->input->post('coa_email', true);
		$coa = array();

		if ($coauthors != '') {
			for ($i = 0; $i < count($coauthors); $i++) {
				$coa['coa_name'] = $coauthors[$i];
				$coa['coa_affiliation'] = $affiliations[$i];
				$coa['coa_email'] = $emails[$i];
				$coa['coa_man_id'] = $output;
				$coa['date_created'] = date('Y-m-d H:i:s');
				$this->Manuscript_model->save_coauthors($coa);
			}
		}

		//send email to author if submit successfull
		// $this->send_email_author($user_id);
	}

	/**
	 * Process, add reviewer and send email to the selected reviewers
	 *
	 * @param   int  $id  manuscript id
	 *
	 * @return  void
	 */
	public function process($id) {
		$oprs = $this->load->database('dboprs', TRUE);
		// get manuscript info
		$manus_info = $this->Manuscript_model->get_manus_for_email($id);
		foreach ($manus_info as $key => $row) {
			$title = $row->man_title;
			$author = $row->man_author;
			$affiliation = $row->man_affiliation;
			$abs = $row->man_abs;
			$author_mail = $row->man_email;
			$status = $row->man_status;
			$date_avail = date_format(new DateTime($row->man_date_available), 'F j, Y, g:i a');
			$post['man_status'] = ($row->man_status == 3) ? 3 : 2;
		}

		if($status == 1){
			// send email on-review
			$this->notify_author_on_review($id);
		}

		// update manuscript status
		if ($this->input->post('jor_volume')) {
			$post['man_volume'] = $this->input->post('jor_volume', true);
			$post['man_issue'] = $this->input->post('jor_issue', true);
			$post['man_year'] = $this->input->post('jor_year', true);
		} else if ($this->input->post('art_year')) {
			$split_jor = explode("-", $this->input->post('art_issue', true));
			$post['man_volume'] = $split_jor[0];
			$post['man_issue'] = $split_jor[1];
			$post['man_year'] = $this->input->post('art_year', true);
		}
		$post['last_updated'] = date('Y-m-d H:i:s');
		$where['row_id'] = $id;
		$this->Manuscript_model->process_manuscript(array_filter($post), $where);

		// save tracking
		$tableName = 'tbltracking';
		$result = $oprs->list_fields($tableName);
		$track = array();
		$mails = array();
		foreach ($result as $i => $field) {
			if ($field != 'row_id') {
				$track[$field] = $this->input->post($field, true);
				$remarks = $this->input->post('trk_remarks', true);
				$timeframe = $this->input->post('trk_timeframe', true);
				$rev_timer = $this->input->post('trk_request_timer', true);
				$req_day_week = $this->input->post('trk_req_day_week');
				$rev_day_week = $this->input->post('trk_rev_day_week');
			}
		}

		$track['trk_man_id'] = $id;
		$track['trk_processor'] = _UserIdFromSession();
		$track['trk_process_datetime'] = date('Y-m-d H:i:s');
		$this->Manuscript_model->tracking(array_filter($track));

		// save reviewers
		$trk_title = $this->input->post('trk_title', true);
		$trk_rev = $this->input->post('trk_rev', true);
		$rev_mail = $this->input->post('trk_rev_email', true);
		$rev_num = $this->input->post('trk_rev_num', true);
		$rev_spec = $this->input->post('trk_rev_spec', true);
		$rev_id = $this->input->post('trk_rev_id', true);
		$rev_email = $this->input->post('tiny_mail');

		$revs = array();
		$rev_id_validated = array();

		$request = ($req_day_week == 2) ? $rev_timer * 7 : $rev_timer;
		$review = ($rev_day_week == 2) ? $timeframe * 7 : $timeframe;

		$revs['rev_request_timer'] = $request;
		$revs['rev_timeframe'] = $review;

		if ($trk_rev != '') {
			for ($i = 0; $i < count($trk_rev); $i++) {
				$revs['rev_title'] = $trk_title[$i];
				$revs['rev_name'] = $trk_rev[$i];
				$revs['rev_email'] = $rev_mail[$i];
				$revs['rev_contact'] = $rev_num[$i];
				$revs['rev_specialization'] = $rev_spec[$i];
				$revs['rev_man_id'] = $id;
				// $revs['rev_id'] = ($rev_id[$i] == '') ? 'R' . rand(1, 9999) : $rev_id[$i];
				if ($rev_id[$i] == '') {
					$check = $this->Review_model->check_reviewer($rev_mail[$i]);
					if ($check == '0') {
						$revs['rev_id'] = 'R' . md5(uniqid('', TRUE));
					} else {
						$revs['rev_id'] = $check;
					}
				} else {
					$revs['rev_id'] = $rev_id[$i];
				}
				array_push($rev_id_validated, $revs['rev_id']);
				$revs['rev_status'] = 2;
				$revs['date_created'] = date('Y-m-d H:i:s');
				$revs['rev_hide_auth'] = $this->input->post('rev_hide_auth');
				$revs['rev_hide_rev'] = $this->input->post('rev_hide_rev');
				$revs['rev_man_id'] = $id;
				$this->Manuscript_model->save_reviewers(array_filter($revs), $id);
			}
		}

		// get email notification content
		$email_contents = $this->Email_model->get_email_content(2);

		// add cc/bcc
		foreach($email_contents as $row){
			$email_subject = $row->enc_subject;

			if( strpos($row->enc_cc, ',') !== false ) {
				$email_cc = explode(',', $row->enc_cc);
		    }else{
				$email_cc = array();
				array_push($email_cc, $row->enc_cc);
			}

			if( strpos($row->enc_bcc, ',') !== false ) {
				$email_bcc = explode(',', $row->enc_bcc);
		    }else{
				$email_bcc = array();
				array_push($email_bcc, $row->enc_bcc);
			}

			if( strpos($row->enc_user_group, ',') !== false ) {
				$email_user_group = explode(',', $row->enc_user_group);
		    }else{
				$email_user_group = array();
				array_push($email_user_group, $row->enc_user_group);
			}
			
		}

		// add exisiting email as cc
		if(count($email_user_group) > 0){
			$user_group_emails = array();
			foreach($email_user_group as $grp){
				$username = $this->Email_model->get_user_group_emails($grp);
				foreach($username as $uname){
					array_push($user_group_emails, $uname);
				}
			}
		}

		$link_to = base_url() . 'oprs/login/reviewer';
		$sender = 'eJournal Admin';
		$sender_email = 'nrcp.ejournal@gmail.com';
		$password = 'fpzskheyxltsbvtg';
		// server
		$man_abs = '/var/www/html/ejournal/assets/oprs/uploads/initial_abstracts_pdf/' . $abs;
		// $nda = '/var/www/html/ejournal/assets/oprs/uploads/SAMPLE_NDA_NRCP.doc';
		// Localhost
		// $file_to_attach = $_SERVER['DOCUMENT_ROOT'].'/ejournal/assets/oprs/uploads/SAMPLE_NDA_NRCP.doc';
		// $file_to_attach = $_SERVER['DOCUMENT_ROOT'].'/ejournal/assets/oprs/uploads/abstracts/';
		// $nda =  $_SERVER['DOCUMENT_ROOT'].'/ejournal/assets/oprs/uploads/SAMPLE_NDA_NRCP.doc/';
		// $nda = '/var/www/html/ejournal/assets/oprs/uploads/SAMPLE_NDA_NRCP.doc';
		

		// setup email config
		$mail = new PHPMailer;
		$mail->isSMTP();
		$mail->Host = "smtp.gmail.com";
		// Specify main and backup server
		$mail->SMTPAuth = true;
		$mail->Port = 465;
		// Enable SMTP authentication
		$mail->Username = $sender_email;
		// SMTP username
		$mail->Password = $password;
		// SMTP password
		$mail->SMTPSecure = 'ssl';
		// Enable encryption, 'ssl' also accepted
		$mail->From = $sender_email;
		$mail->FromName = $sender;

	

		$rev_c = 0;
		foreach ($rev_mail as $m) {
			$mail->AddAddress($m);
			$mail->addAttachment($man_abs);
			// add cc if any
			if(count($email_cc) > 0){
				foreach($email_cc as $cc){
					$mail->AddCC($cc);
				}
			}
			// add bcc if any
			if(count($email_bcc) > 0){
				foreach($email_bcc as $bcc){
					$mail->AddBCC($bcc);
				}
			}
			// add existing as cc
			if(count($user_group_emails) > 0){
				foreach($user_group_emails as $grp){
					$mail->AddCC($grp->usr_username);
				}
			}
		
			
			
			// replace reserved words
		
			// time to expect accept request
			$date = date('Y-m-d');
			$deadline = date('Y-m-d', strtotime($date. ' + ' . $request . ' days'));
			$format_deadline = new DateTime($deadline);
			$format_deadline = date_format($format_deadline, 'd F Y');
			$mail_time = 'May we get your acceptance on or before <strong>' . $format_deadline . '</strong>?';
			$emailBody = str_replace('[TIME]', $mail_time, $rev_email[$rev_c]);
			
			// review deadline
			$mail_due = 'Your review will be due after ' . $review . ' days of your acceptance. If you are unable to review at the moment, we would greatly appreciate if you can recommend alternate reviewers.';
			$emailBody = str_replace('[DUE]', $mail_due, $emailBody);
			
			// accept or decline
			$acc_dec = "Please click <u><a href='" . $link_to . "/" . $id . "/1/" . $rev_id_validated[$rev_c] . "/" . $review . "' target='_blank' style='color:green;cursor:pointer;'>
						ACCEPT</a></u> or <u><a href='" . $link_to . "/" . $id . "/0/" . $rev_id_validated[$rev_c] . "' style='color:red;cursor:pointer;'>
						DECLINE</a></u>. ";
			$days = "This request will expire in " . $request . " days from the date of this email.
					If you click ACCEPT button, you will be redirected/taken to the Online Peer Review System (eReview)
					wherein you can find your username and password for the login. ";
			$timer = "Subsequently, you will be given " . $review . " days to complete the reveiw task.";
			$accept_decline = $acc_dec . $days . $timer;
			$emailBody = str_replace('[ACCEPT/DECLINE]', $accept_decline, $emailBody);

			// if ($this->input->post('rev_hide_auth') == 1) {
			// 	$emailBody = str_replace($author, '<em>Undisclosed</em>', $emailBody);
			// 	$emailBody = str_replace($affiliation, '<em>Undisclosed</em>', $emailBody);
			// }
			

			//todo tom

			
			// send email
			$mail->Subject = $email_subject;
			$mail->Body = $emailBody;
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
			$mail->ClearAllRecipients();
			$rev_c++;
		}
	}

	/**
	 * Process, add editor and send email to the selected editor
	 *
	 * @param   int  $id  manuscript id
	 *
	 * @return  void
	 */
	public function editor($id) { 
		$oprs = $this->load->database('dboprs', TRUE);
		// get manuscript info
		$manus_info = $this->Manuscript_model->get_manus_for_email($id);
		foreach ($manus_info as $key => $row) {
			$title = $row->man_title;
			$author = $row->man_author;
			$affiliation = $row->man_affiliation;
			$abs = $row->man_abs;
			$author_mail = $row->man_email;
			$status = $row->man_status;
			$date_avail = date_format(new DateTime($row->man_date_available), 'F j, Y, g:i a');
		}

		// send email on-review
		// $this->notify_author_on_editor_review($id, 12);
		

		// update manuscript status
		$post['man_status'] = 4;
		$post['last_updated'] = date('Y-m-d H:i:s');
		$where['row_id'] = $id;
		$this->Manuscript_model->process_manuscript(array_filter($post), $where);

		// save tracking
		$track = array();
		$track['trk_man_id'] = $id;
		$track['trk_processor'] = _UserIdFromSession();
		$track['trk_description'] = 'EDITOR';
		$track['trk_process_datetime'] = date('Y-m-d H:i:s');
		$track['trk_remarks'] = $this->input->post('editor_remarks', true);
		$this->Manuscript_model->tracking(array_filter($track));

		// save editor
		$titles = $this->input->post('editor_title', true);
		$editors = $this->input->post('editor_rev', true);
		$edit_mail = $this->input->post('editor_rev_email', true);
		$edit_num = $this->input->post('editor_rev_num', true);
		$edit_spec = $this->input->post('editor_rev_spec', true);
		$edit_id = $this->input->post('editor_rev_id', true);
		$editor_email = $this->input->post('editor_tiny_mail');
		
		$timeframe = $this->input->post('editor_timeframe', true);
		// $rev_timer = $this->input->post('editor_request_timer', true);
		// $req_day_week = $this->input->post('editor_req_day_week');
		$rev_day_week = $this->input->post('editor_rev_day_week');

		$edits = array();
		$edit_id_validated = array();

		// $request = ($req_day_week == 2) ? $rev_timer * 7 : $rev_timer;
		$review = ($rev_day_week == 2) ? $timeframe * 7 : $timeframe;

		// $edits['rev_request_timer'] = $request;
		$edits['edit_timeframe'] = $review;

		if ($editors != '') {
			for ($i = 0; $i < count($editors); $i++) {
				$edits['edit_title'] = $titles[$i];
				$edits['edit_name'] = $editors[$i];
				$edits['edit_email'] = $edit_mail[$i];
				$edits['edit_contact'] = $edit_num[$i];
				$edits['edit_specialization'] = $edit_spec[$i];
				$edits['edit_man_id'] = $id;
				if ($edit_id[$i] == '') {
					$check = $this->Review_model->check_reviewer($edit_mail[$i]);
					if ($check == '0') {
						$edits['edit_id'] = 'E' . md5(uniqid('', TRUE));
					} else {
						$edits['edit_id'] = $check;
					}
				} else {
					$edits['edit_id'] = $edit_id[$i];
				}
				array_push($edit_id_validated, $edits['edit_id']);
				$edits['edit_status'] = 2;
				$edits['date_created'] = date('Y-m-d H:i:s');
				// $edits['edit_hide_auth'] = $this->input->post('edit_hide_auth');
				// $edits['edit_hide_edit'] = $this->input->post('edit_hide_edit');
				$edits['edit_man_id'] = $id;
				$this->Manuscript_model->save_editors(array_filter($edits), $id);
			}
		}

		// get email notification content
		$email_contents = $this->Email_model->get_email_content(10);

		// add cc/bcc
		foreach($email_contents as $row){
			$email_subject = $row->enc_subject;

			if( strpos($row->enc_cc, ',') !== false ) {
				$email_cc = explode(',', $row->enc_cc);
		    }else{
				$email_cc = array();
				array_push($email_cc, $row->enc_cc);
			}

			if( strpos($row->enc_bcc, ',') !== false ) {
				$email_bcc = explode(',', $row->enc_bcc);
		    }else{
				$email_bcc = array();
				array_push($email_bcc, $row->enc_bcc);
			}

			if( strpos($row->enc_user_group, ',') !== false ) {
				$email_user_group = explode(',', $row->enc_user_group);
		    }else{
				$email_user_group = array();
				array_push($email_user_group, $row->enc_user_group);
			}
			
		}

		// add exisiting email as cc
		if(count($email_user_group) > 0){
			$user_group_emails = array();
			foreach($email_user_group as $grp){
				$username = $this->Email_model->get_user_group_emails($grp);
				foreach($username as $uname){
					array_push($user_group_emails, $uname);
				}
			}
		}

		$link_to = base_url() . 'oprs/login/editor';
		$sender = 'eJournal Admin';
		$sender_email = 'nrcp.ejournal@gmail.com';
		$password = 'fpzskheyxltsbvtg';
		// server
		// $man_abs = '/var/www/html/ejournal/assets/oprs/uploads/abstracts/' . $abs;
		// $nda = '/var/www/html/ejournal/assets/oprs/uploads/SAMPLE_NDA_NRCP.doc';
		// Localhost
		// $file_to_attach = $_SERVER['DOCUMENT_ROOT'].'/ejournal/assets/oprs/uploads/SAMPLE_NDA_NRCP.doc';
		// $file_to_attach = $_SERVER['DOCUMENT_ROOT'].'/ejournal/assets/oprs/uploads/abstracts/';
		// $nda =  $_SERVER['DOCUMENT_ROOT'].'/ejournal/assets/oprs/uploads/SAMPLE_NDA_NRCP.doc/';
		// $nda = '/var/www/html/ejournal/assets/oprs/uploads/SAMPLE_NDA_NRCP.doc';
		

		// setup email config
		$mail = new PHPMailer;
		$mail->isSMTP();
		$mail->Host = "smtp.gmail.com";
		// Specify main and backup server
		$mail->SMTPAuth = true;
		$mail->Port = 465;
		// Enable SMTP authentication
		$mail->Username = $sender_email;
		// SMTP username
		$mail->Password = $password;
		// SMTP password
		$mail->SMTPSecure = 'ssl';
		// Enable encryption, 'ssl' also accepted
		$mail->From = $sender_email;
		$mail->FromName = $sender;

	

		$rev_c = 0;
		foreach ($edit_mail as $m) {
			$mail->AddAddress($m);
			$mail->addAttachment($man_abs);
			// add cc if any
			if(count($email_cc) > 0){
				foreach($email_cc as $cc){
					$mail->AddCC($cc);
				}
			}
			// add bcc if any
			if(count($email_bcc) > 0){
				foreach($email_bcc as $bcc){
					$mail->AddBCC($bcc);
				}
			}
			// add existing as cc
			if(count($user_group_emails) > 0){
				foreach($user_group_emails as $grp){
					$mail->AddCC($grp->usr_username);
				}
			}
			
			// replace reserved words	
			// review deadline
	
            $emailBody = $editor_email[$rev_c];

			if($review > 0){
				$due = 'Your review will be due after ' . $review . ' days of your acceptance. If you are unable to review at the moment, we would greatly appreciate if you can recommend alternate reviewers.'; 
				$emailBody = str_replace('[DUE]', $due, $emailBody);
			}else{
				$emailBody = str_replace('[DUE]', '', $emailBody);
			}


			// accept or decline
			$link = "Please click <u><a href='" . $link_to . "/" . $id . "/1/" . $edit_id_validated[$rev_c] ."' target='_blank' style='cursor:pointer;'>
						HERE</a></u> to login.";
		
			$emailBody = str_replace('[LINK]', $link, $emailBody);
			
			// send email
			$mail->Subject = $email_subject;
			$mail->Body = $emailBody;
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
			$mail->ClearAllRecipients();
			$rev_c++;
		}
	}

	/**
	 * Save reviewer's review to a manuscript
	 *
	 * @param   int  $id  manuscript id
	 *
	 * @return  void
	 */
	public function review($id) {

		$oprs = $this->load->database('dboprs', TRUE);
		// save scores
		$tableName = 'tblscores';
		$result = $oprs->list_fields($tableName);
		$post = array();
		foreach ($result as $i => $field) {
			if ($field != 'row_id') {
				$post[$field] = $this->input->post($field, true);
			}
		}
		
		if($_FILES['scr_file']['name'] != ''){
			// upload edited manuscript word
			$file_string = str_replace(" ", "_", $_FILES['scr_file']['name']);
			$file_no_ext = preg_replace("/\.[^.]+$/", "", $file_string);
			$clean_file = preg_replace('/[^A-Za-z0-9\-]/', '_', $file_no_ext);
			$filename = $_FILES["scr_file"]["name"];
			$file_ext = pathinfo($filename, PATHINFO_EXTENSION);
			$post['scr_file'] = date('YmdHis') . '_' . $clean_file . '.' . $file_ext;
			$upload_file = $post['scr_file'];

			if ($post['scr_file'] != '') {
				$config['upload_path'] = './assets/oprs/uploads/reviewersdoc/';
				$config['allowed_types'] = '*';
				$config['file_name'] = $upload_file;
				$this->load->library('upload', $config);
				$this->upload->initialize($config);
				if (!$this->upload->do_upload('scr_file')) {
					$error = $this->upload->display_errors();
				} else {
					$data = $this->upload->data();
				}
			}
		}

		if($_FILES['scr_nda']['name'] != ''){
			// upload nda
			$file_string_nda = str_replace(" ", "_", $_FILES['scr_nda']['name']);
			$file_no_ext_nda = preg_replace("/\.[^.]+$/", "", $file_string_nda);
			$clean_file_nda = preg_replace('/[^A-Za-z0-9\-]/', '_', $file_no_ext_nda);
			$filename_nda = $_FILES["scr_nda"]["name"];
			$file_ext_nda = pathinfo($filename_nda, PATHINFO_EXTENSION);
			$post['scr_nda'] = date('YmdHis') . '_' . $clean_file_nda . '.' . $file_ext_nda;
			$upload_file_nda = $post['scr_nda'];

			if ($post['scr_nda'] != '') {
				$config['upload_path'] = './assets/oprs/uploads/nda/';
				$config['allowed_types'] = '*';
				$config['file_name'] = $upload_file_nda;
				$this->load->library('upload', $config);
				$this->upload->initialize($config);
				if (!$this->upload->do_upload('scr_nda')) {
					$error = $this->upload->display_errors();
				} else {
					$data = $this->upload->data();
				}
			}
		}


		$post['date_reviewed'] = date('Y-m-d H:i:s');
		$where_rev['scr_man_rev_id'] = _UserIdFromSession();
		$where_rev['scr_man_id'] = $id;
		// $this->Review_model->save_review(array_filter($post));
		$this->Review_model->update_review(array_filter($post), $where_rev, $id);
		
		// save tracking
		$tableName = 'tbltracking';
		$result = $oprs->list_fields($tableName);
		$track = array();
		$track['trk_man_id'] = $id;
		$track['trk_processor'] = _UserIdFromSession();
		$track['trk_remarks'] = $this->input->post('scr_remarks', true);
		$track['trk_process_datetime'] = date('Y-m-d H:i:s');
		if (strpos(_UserIdFromSession(), 'NM') !== false) {
			$track['trk_source'] = '_op';
		} else if (strpos(_UserIdFromSession(), 'R') !== false) {
			$track['trk_source'] = '_op';
		} else {
			$track['trk_source'] = '_sk_r';
		}
		$this->Manuscript_model->tracking(array_filter($track));
		$man['man_status'] = 3;
		$man['last_updated'] = date('Y-m-d H:i:s');
		$where['row_id'] = $id;
		$this->Manuscript_model->process_manuscript(array_filter($man), $where);

		$this->send_certification(_UserIdFromSession(), $id);
	
	}

	public function test_send_cert($x, $y){
		echo $x . ' ' . $y;
	}
	
	public function send_certification($rev_id, $man_id){

		$cert['scr_cert'] = 1;
		$where['scr_man_rev_id'] = $rev_id;
		$where['scr_man_id'] = $man_id;
		$this->Review_model->update_review(array_filter($cert), $where, 'eCert');

		// get manus info
		$info = $this->Manuscript_model->get_manus_info($man_id);
		foreach ($info as $key => $value) {
			$manuscript = $value->man_title;
		}

		$rev_info = $this->Manuscript_model->get_rev_info($rev_id);
		foreach ($rev_info as $key => $val) {
			$email = $val->rev_email;
			$title = $val->rev_title;
			$name = $val->rev_name;
		}


		// get email notification content
		$email_contents = $this->Email_model->get_email_content(18);

		// add cc/bcc
		foreach($email_contents as $row){
			$email_subject = $row->enc_subject;
			$email_contents = $row->enc_content;

			if( strpos($row->enc_cc, ',') !== false ) {
				$email_cc = explode(',', $row->enc_cc);
		    }else{
				$email_cc = array();
				array_push($email_cc, $row->enc_cc);
			}

			if( strpos($row->enc_bcc, ',') !== false ) {
				$email_bcc = explode(',', $row->enc_bcc);
		    }else{
				$email_bcc = array();
				array_push($email_bcc, $row->enc_bcc);
			}

			if( strpos($row->enc_user_group, ',') !== false ) {
				$email_user_group = explode(',', $row->enc_user_group);
		    }else{
				$email_user_group = array();
				array_push($email_user_group, $row->enc_user_group);
			}
			
		}

		// add exisiting email as cc
		if(count($email_user_group) > 0){
			$user_group_emails = array();
			foreach($email_user_group as $grp){
				$username = $this->Email_model->get_user_group_emails($grp);
				foreach($username as $uname){
					array_push($user_group_emails, $uname);
				}
			}
		}

		
		// $link = "<a href='https://researchjournal.nrcp.dost.gov.ph/' target='_blank'>https://researchjournal.nrcp.dost.gov.ph/</a>";
		// $link = 'http://localhost/ejournal/oprs/certification/generate_cert/'.$rev_id.'/'.$man_id.'';
		$link = "<a href='https://researchjournal.nrcp.dost.gov.ph/oprs/certification/generate_cert/".$rev_id."/".$man_id."'
		style='box-shadow: 0px 0px 0px 2px #97c4fe;
		background:linear-gradient(to bottom, #3d94f6 5%, #1e62d0 100%);
		background-color:#3d94f6;
		border-radius:42px;
		border:1px solid #337fed;
		display:inline-block;
		cursor:pointer;
		color:#ffffff;
		font-family:Arial;
		font-size:19px;
		padding:10px 21px;
		text-decoration:none;
		text-shadow:0px 1px 50px #1570cd;'
		>Download Certification 
		</a>";
		$sender = 'eJournal Admin';
		$sender_email = 'nrcp.ejournal@gmail.com';
		$password = 'fpzskheyxltsbvtg';

		// setup email config	
		$mail = new PHPMailer;
		$mail->isSMTP();
		$mail->Host = "smtp.gmail.com";
		// Specify main and backup server
		$mail->SMTPAuth = true;
		$mail->Port = 465;
		// Enable SMTP authentication
		$mail->Username = $sender_email;
		// SMTP username
		$mail->Password = $password;
		// SMTP password
		$mail->SMTPSecure = 'ssl';
		// Enable encryption, 'ssl' also accepted
		$mail->From = $sender_email;
		$mail->FromName = $sender;
		$mail->AddAddress($email);

		// add cc if any
		if(count($email_cc) > 0){
			foreach($email_cc as $cc){
				$mail->AddCC($cc);
			}
		}
		// add bcc if any
		if(count($email_bcc) > 0){
			foreach($email_bcc as $bcc){
				$mail->AddBCC($bcc);
			}
		}
		// add existing as cc
		if(count($user_group_emails) > 0){
			foreach($user_group_emails as $grp){
				$mail->AddCC($grp->usr_username);
			}
		}

		// replace reserved words
	
		$emailBody = str_replace('[FULL NAME]', $name, $email_contents);
		$emailBody = str_replace('[TITLE]', $title, $emailBody);
		$emailBody = str_replace('[MANUSCRIPT]', $manuscript, $emailBody);
		$emailBody = str_replace('[CERTIFICATION]', $link, $emailBody);
		
		// send email
		$mail->Subject = $email_subject;
		$mail->Body = $emailBody;
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
	 * Publish manuscripts
	 *
	 * @return  [type]  [return description]
	 */
	public function publish(){
		$pages = $this->input->post('man_page_position');
		$man_id = $this->input->post('man_id');

		// get manus info
		$info = $this->Manuscript_model->get_manus_info($man_id);
		foreach ($info as $key => $value) {
			$volume = $value->man_volume;
			$issue = $value->man_issue;
			$year = $value->man_year;
			$title = $value->man_title;
			$author = $value->man_author;
			$email = $value->man_email;
			$aff = $value->man_affiliation;
			$file = $value->man_file;
			$abs = $value->man_abs;
			$keys = $value->man_keywords;
			$user_id = $value->man_user_id;
		}

		
		$from_abs = '/var/www/html/ejournal/assets/oprs/uploads/final_abstracts/' . $abs;
		$to_abs = '/var/www/html/ejournal/assets/uploads/abstract/' . $abs;
		if (!copy($from_abs, $to_abs)) {
			echo "failed to copy $from_abs...\n";
		} else {
			echo "copied $from_abs into $to_abs\n";
		}

		$from_pdf = '/var/www/html/ejournal/assets/oprs/uploads/final_manuscripts/' . $file;
		$to_pdf = '/var/www/html/ejournal/assets/uploads/pdf/' . $file;
		if (!copy($from_pdf, $to_pdf)) {
			echo "failed to copy $from_abs...\n";
		} else {
			echo "copied $from_pdf into $to_pdf\n";
		}

		// get coauthors
		$coas = $this->Coauthor_model->get_manus_acoa($man_id);

		// check if journal exists
		$jor_id = $this->Manuscript_model->check_journal($volume, $issue);
		if ($jor_id > 0) {
			// if journal exist save as article
			$post_art = array();
			$post_art['art_title'] = $title;
			$post_art['art_author'] = $author;
			$post_art['art_affiliation'] = $aff;
			$post_art['art_email'] = $email;
			$post_art['art_abstract_file'] = $abs;
			$post_art['art_full_text_pdf'] = $file;
			$post_art['art_year'] = $year;
			$post_art['art_page'] = $pages;
			$post_art['art_keywords'] = $keys;
			$post_art['art_jor_id'] = $jor_id;
			$post_art['art_keywords'] = $keys;
			$post_art['art_usr_id'] = $user_id;
			$post_art['date_created'] = date('Y-m-d H:i:s');		
			$art_id = $this->Manuscript_model->add_article(array_filter($post_art));
		} else {
			// if journal not exist create journal
			$post_jor = array();
			$post_jor['jor_volume'] = $volume;
			$post_jor['jor_issue'] = $issue;
			$post_jor['jor_year'] = $year;
			$post_jor['jor_issn'] = '0117-3294';
			$post_jor['jor_cover'] = 'unavailable.jpg';
			$post_jor['date_created'] = date('Y-m-d H:i:s');
			$jor_new_id = $this->Manuscript_model->create_journal(array_filter($post_jor));
			$post_art = array();
			$post_art['art_title'] = $title;
			$post_art['art_author'] = $author;
			$post_art['art_affiliation'] = $aff;
			$post_art['art_email'] = $email;
			$post_art['art_abstract_file'] = $abs;
			$post_art['art_full_text_pdf'] = $file;
			$post_art['art_keywords'] = $keys;
			$post_art['art_jor_id'] = $jor_new_id;
			$post_art['date_created'] = date('Y-m-d H:i:s');
			$post_art['art_year'] = $year;
			$post_art['art_page'] = $pages;		
			$post_art['art_usr_id'] = $user_id;
				// echo json_encode($post_art);exit;
			$art_id = $this->Manuscript_model->add_article(array_filter($post_art));
		}

		// add coauthors if any
		if (!empty($coas)) {
			$coa = array();
			foreach ($coas as $key => $val) {
				$coa['coa_name'] = $val->coa_name;
				$coa['coa_affiliation'] = $val->coa_affiliation;
				$coa['coa_email'] = $val->coa_email;
				$coa['coa_art_id'] = $art_id;
				$coa['date_created'] = date('Y-m-d H:i:s');
				$this->Manuscript_model->save_acoa(array_filter($coa));
			}
		}

		// update manuscript
		$post['man_status'] = 9;
		$post['man_page_position'] = $pages;
		$post['last_updated'] = date('Y-m-d H:i:s');
		$where['row_id'] = $man_id;
		$this->Manuscript_model->process_manuscript(array_filter($post), $where, 3);
		
		// save tracking
		$track['trk_man_id'] = $man_id;
		$track['trk_processor'] = _UserIdFromSession();
		$track['trk_process_datetime'] = date('Y-m-d H:i:s');
		$track['trk_description'] = 'PUBLISHED';
		$issue = (
			($issue == 5) ? 'Special Issue No. 1' :
			(($issue == 6) ? 'Special Issue No. 2' :
				(($issue == 7) ? 'Special Issue No. 3' :
					(($issue == 8) ? 'Special Issue No. 4' : 'Issue ' . $issue)))
		);
		$track['trk_remarks'] = 'Published to eJournal Volume ' . $volume . ', ' . $issue;
		$this->Manuscript_model->tracking(array_filter($track));
	}


	public function publishx()
	{
		$files = $_FILES['man_file']['name'];
	
		foreach($files as $id => $value)
		{
			$_FILES['file']['name'] = $_FILES['man_file']['name'][$id];
			$_FILES['file']['type'] = $_FILES['man_file']['type'][$id];
			$_FILES['file']['tmp_name'] = $_FILES['man_file']['tmp_name'][$id];
			$_FILES['file']['error'] = $_FILES['man_file']['error'][$id];
			$_FILES['file']['size'] = $_FILES['man_file']['size'][$id];

			$config_pdf['upload_path'] = './assets/oprs/uploads/manuscripts/'; 
			$config_pdf['allowed_types'] = 'pdf';
			$config_pdf['file_name'] = $_FILES['file']['name'];
			$this->load->library('upload', $config_pdf);
			$this->upload->initialize($config_pdf);
			
			if (!$this->upload->do_upload('file')) {
				$error = $this->upload->display_errors();
			} else {
				$data = $this->upload->data();
			}
	
		}
	
		$pages = $this->input->post('man_page_position');

		foreach($pages as $id => $page)
		{
		
			// get manus info
			$info = $this->Manuscript_model->get_manus_info($id);
			foreach ($info as $key => $value) {
				$volume = $value->man_volume;
				$issue = $value->man_issue;
				$year = $value->man_year;
				$title = $value->man_title;
				$author = $value->man_author;
				$email = $value->man_email;
				$aff = $value->man_affiliation;
				$file = $value->man_file;
				$abs = $value->man_abs;
				$keys = $value->man_keywords;
			}

			$from_abs = '/var/www/html/ejournal/assets/oprs/uploads/abstracts/' . $abs;
			$to_abs = '/var/www/html/ejournal/assets/uploads/abstract/' . $abs;
			if (!copy($from_abs, $to_abs)) {
				echo "failed to copy $from_abs...\n";
			} else {
				echo "copied $from_abs into $to_abs\n";
			}

			$from_pdf = '/var/www/html/ejournal/assets/oprs/uploads/manuscripts/' . $file;
			$to_pdf = '/var/www/html/ejournal/assets/uploads/pdf/' . $file;
			if (!copy($from_pdf, $to_pdf)) {
				echo "failed to copy $from_abs...\n";
			} else {
				echo "copied $from_pdf into $to_pdf\n";
			}

			// get coauthors
			$coas = $this->Coauthor_model->get_manus_acoa($id);

			// check if journal exists
			$jor_id = $this->Manuscript_model->check_journal($volume, $issue);
			if ($jor_id > 0) {
				// if journal exist save as article
				$post_art = array();
				$post_art['art_title'] = $title;
				$post_art['art_author'] = $author;
				$post_art['art_affiliation'] = $aff;
				$post_art['art_email'] = $email;
				$post_art['art_abstract_file'] = $abs;
				$post_art['art_full_text_pdf'] = $file;
				$post_art['art_year'] = $year;
				$post_art['art_page'] = $page;
				$post_art['art_keywords'] = $keys;
				$post_art['art_jor_id'] = $jor_id;
				$post_art['date_created'] = date('Y-m-d H:i:s');		
				$art_id = $this->Manuscript_model->add_article(array_filter($post_art));
			} else {
				// if journal not exist create journal
				$post_jor = array();
				$post_jor['jor_volume'] = $volume;
				$post_jor['jor_issue'] = $issue;
				$post_jor['jor_year'] = $year;
				$post_jor['jor_issn'] = '0117-3294';
				$post_jor['jor_cover'] = 'unavailable.jpg';
				$post_jor['date_created'] = date('Y-m-d H:i:s');
				$jor_new_id = $this->Manuscript_model->create_journal(array_filter($post_jor));
				$post_art = array();
				$post_art['art_title'] = $title;
				$post_art['art_author'] = $author;
				$post_art['art_affiliation'] = $aff;
				$post_art['art_email'] = $email;
				$post_art['art_abstract_file'] = $abs;
				$post_art['art_full_text_pdf'] = $file;
				$post_art['art_keywords'] = $keys;
				$post_art['art_jor_id'] = $jor_new_id;
				$post_art['date_created'] = date('Y-m-d H:i:s');
				$post_art['art_year'] = $year;
				$post_art['art_page'] = $page;		
					// echo json_encode($post_art);exit;
				$art_id = $this->Manuscript_model->add_article(array_filter($post_art));
			}

			// add coauthors if any
			if (!empty($coas)) {
				$coa = array();
				foreach ($coas as $key => $val) {
					$coa['coa_name'] = $val->coa_name;
					$coa['coa_affiliation'] = $val->coa_affiliation;
					$coa['coa_email'] = $val->coa_email;
					$coa['coa_art_id'] = $art_id;
					$coa['date_created'] = date('Y-m-d H:i:s');
					$this->Manuscript_model->save_acoa(array_filter($coa));
				}
			}

			// update manuscript
			$post['man_status'] = 6;
			$post['man_page_position'] = $page;
			$post['man_file'] = $config_pdf['file_name'];
			$post['last_updated'] = date('Y-m-d H:i:s');
			$where['row_id'] = $id;
			$this->Manuscript_model->process_manuscript(array_filter($post), $where, 3);
			
			// save tracking
			$track['trk_man_id'] = $id;
			$track['trk_processor'] = _UserIdFromSession();
			$track['trk_process_datetime'] = date('Y-m-d H:i:s');
			$track['trk_description'] = 'PUBLISHED';
			$issue = (
				($issue == 5) ? 'Special Issue No. 1' :
				(($issue == 6) ? 'Special Issue No. 2' :
					(($issue == 7) ? 'Special Issue No. 3' :
						(($issue == 8) ? 'Special Issue No. 4' : 'Issue ' . $issue)))
			);
			$track['trk_remarks'] = 'Published to eJournal Volume ' . $volume . ', ' . $issue;
			$this->Manuscript_model->tracking(array_filter($track));
		}
	}

		// for publish (for finalization)
		// $articles = $this->input->post('ids');
		
		// foreach($articles as $a)
		// {
		// 	//get manus info
		// 	$output = $this->Manuscript_model->get_manus_info($a);
		// 	foreach ($output as $key => $value) {
		// 		$volume = $value->man_volume;
		// 		$issue = $value->man_issue;
		// 		$year = $value->man_year;
		// 		$title = $value->man_title;
		// 		$author = $value->man_author;
		// 		$email = $value->man_email;
		// 		$aff = $value->man_affiliation;
		// 		$file = $value->man_file;
		// 		$abs = $value->man_abs;
		// 		$keys = $value->man_keywords;
		// 	}
	
		// 	//get coauthors
		// 	$coas = $this->Coauthor_model->get_manus_acoa($a);
		// 	//check if journal exists
		// 	$jor_id = $this->Manuscript_model->check_journal($volume, $issue);
		// 	if ($jor_id > 0) {
		// 		//if journal exist save as article
		// 		$post_art = array();
		// 		$post_art['art_title'] = $title;
		// 		$post_art['art_author'] = $author;
		// 		$post_art['art_affiliation'] = $aff;
		// 		$post_art['art_email'] = $email;
		// 		$post_art['art_abstract_file'] = $abs;
		// 		$post_art['art_full_text_pdf'] = $file;
		// 		$post_art['art_year'] = $year;
		// 		$post_art['art_page'] = $pages;
		// 		$post_art['art_keywords'] = $keys;
		// 		$post_art['art_jor_id'] = $jor_id;
		// 		$post_art['date_created'] = date('Y-m-d H:i:s');
		// 		$art_id = $this->Manuscript_model->add_article(array_filter($post_art));
		// 	} else {
		// 		//if journal not exist create journal
		// 		$post_jor = array();
		// 		$post_jor['jor_volume'] = $volume;
		// 		$post_jor['jor_issue'] = $issue;
		// 		$post_jor['jor_year'] = $year;
		// 		$post_jor['jor_issn'] = '0117-3294';
		// 		$post_jor['jor_cover'] = 'unavailable.jpg';
		// 		$post_jor['date_created'] = date('Y-m-d H:i:s');
		// 		$jor_new_id = $this->Manuscript_model->create_journal(array_filter($post_jor));
		// 		$post_art = array();
		// 		$post_art['art_title'] = $title;
		// 		$post_art['art_author'] = $author;
		// 		$post_art['art_affiliation'] = $aff;
		// 		$post_art['art_email'] = $email;
		// 		$post_art['art_abstract_file'] = $abs;
		// 		$post_art['art_full_text_pdf'] = $file;
		// 		$post_art['art_keywords'] = $keys;
		// 		$post_art['art_jor_id'] = $jor_new_id;
		// 		$post_art['date_created'] = date('Y-m-d H:i:s');
		// 		$post_art['art_year'] = $year;
		// 		$post_art['art_page'] = $pages;
		// 		$art_id = $this->Manuscript_model->add_article(array_filter($post_art));
		// 	}
		// 	//add coauthors if any
		// 	if (!empty($coas)) {
		// 		$coa = array();
		// 		foreach ($coas as $key => $val) {
		// 			$coa['coa_name'] = $val->coa_name;
		// 			$coa['coa_affiliation'] = $val->coa_affiliation;
		// 			$coa['coa_email'] = $val->coa_email;
		// 			$coa['coa_art_id'] = $art_id;
		// 			$coa['date_created'] = date('Y-m-d H:i:s');
		// 			$this->Manuscript_model->save_acoa(array_filter($coa));
		// 		}
		// 	}
		// 	//copy file to another directory
		// 	//local
		// 	// $from = $_SERVER['DOCUMENT_ROOT'].'/oprs/assets/uploads/manuscripts/'.$file;
		// 	// $to = $_SERVER['DOCUMENT_ROOT'].'/ejournal/assets/uploads/pdf/'.$file;
		// 	//server manuscript
		// 	$from = '/var/www/html/ejournal/assets/oprs/uploads/manuscripts/' . $file;
		// 	$to = '/var/www/html/ejournal/assets/uploads/pdf/' . $file;
		// 	if (!copy($from, $to)) {
		// 		echo "failed to copy $from...\n";
		// 	} else {
		// 		echo "copied $from into $to\n";
		// 	}
		// 	//server abstract
		// 	$from2 = '/var/www/html/ejournal/assets/oprs/uploads/abstracts/' . $abs;
		// 	$to2 = '/var/www/html/ejournal/assets/uploads/abstract/' . $abs;
		// 	if (!copy($from2, $to2)) {
		// 		echo "failed to copy $from...\n";
		// 	} else {
		// 		echo "copied $from into $to\n";
		// 	}
		// 	//update manuscript
		// 	$post['man_status'] = 6;
		// 	$post['man_page_position'] = $pages;
		// 	$post['last_updated'] = date('Y-m-d H:i:s');
		// 	$where['row_id'] = $a;
		// 	$this->Manuscript_model->process_manuscript(array_filter($post), $where, 4);
		// 	//save tracking
		// 	$track['trk_man_id'] = $a;
		// 	$track['trk_processor'] = _UserIdFromSession();
		// 	$track['trk_process_datetime'] = date('Y-m-d H:i:s');
		// 	$track['trk_description'] = 'PUBLISHED';
		// 	$issue = (
		// 		($issue == 5) ? 'Special Issue No. 1' :
		// 		(($issue == 6) ? 'Special Issue No. 2' :
		// 			(($issue == 7) ? 'Special Issue No. 3' :
		// 				(($issue == 8) ? 'Special Issue No. 4' : 'Issue ' . $issue)))
		// 	);
		// 	$track['trk_remarks'] = 'Published to eJournal Volume ' . $volume . ', ' . $issue;
		// 	$this->Manuscript_model->tracking(array_filter($track));
		// }
	// }
	
	
	// public function approve($id, $pages) {
	// 	//update manuscript
	// 	$post['man_status'] = 5;
	// 	$post['man_page_position'] = $pages;
	// 	$post['last_updated'] = date('Y-m-d H:i:s');
	// 	$where['row_id'] = $id;
	// 	$this->Manuscript_model->process_manuscript(array_filter($post), $where, 3);
	// 	//save tracking
	// 	$track['trk_man_id'] = $id;
	// 	$track['trk_processor'] = _UserIdFromSession();
	// 	$track['trk_process_datetime'] = date('Y-m-d H:i:s');
	// 	$track['trk_description'] = 'APPROVED';
	// 	// $issue = (
	// 	// 	($issue == 5) ? 'Special Issue No. 1' :
	// 	// 	(($issue == 6) ? 'Special Issue No. 2' :
	// 	// 		(($issue == 7) ? 'Special Issue No. 3' :
	// 	// 			(($issue == 8) ? 'Special Issue No. 4' : 'Issue ' . $issue)))
	// 	// );
	// 	// $track['trk_remarks'] = 'Manuscript approved and published to eJournal Volume ' . $volume . ', ' . $issue;
	// 	$track['trk_remarks'] = 'Manuscript approved.';
	// 	$this->Manuscript_model->tracking(array_filter($track));
	// }

	/**
	 * Check if request lapsed
	 *
	 * @return  void
	 */
	public function check_expired_request() {
		$output = $this->Manuscript_model->get_reviewer_status();
		foreach ($output as $key => $val) {
			$future_date = date('Y-m-d H:i:s', strtotime($val->date_created . " +$val->rev_request_timer days"));
			$future = strtotime($future_date);
			$timeleft = $future - strtotime(date('Y-m-d H:i:s'));
			$daysleft = ((($timeleft / 24) / 60) / 60);
			if ($daysleft <= 0) {
				// update reviewer
				$post['rev_status'] = 3;
				$where['row_id'] = $val->row_id;
				$this->Manuscript_model->update_reviewer(array_filter($post), $where);
			} else {
				// counting
			}
		}
	}

	/**
	 * Retrieve tracking by manuscript id
	 *
	 * @param   int  $id  manuscript id
	 *
	 * @return  array       tracking
	 */
	public function tracker($id) {
		$output = $this->Manuscript_model->tracker($id);
		echo json_encode($output);
	}

	/**
	 * Retrieve manuscript data by id
	 *
	 * @param   int  $id  manuscript id
	 *
	 * @return  array       manuscript data
	 */
	public function get_manuscript_by_id($id)
	{
		$output = $this->Manuscript_model->get_manus_info($id);
		echo json_encode($output);
	}

	/**
	 * Retrieve manuscript title only by manuscript id
	 *
	 * @param   int  $id  manuscript id
	 *
	 * @return  string       manuscript title
	 */
	public function get_manuscript_title($id)
	{
		echo $this->Manuscript_model->get_manus_title($id);
		
	}


	/**
	 * Save final review of editorial board/publication committee
	 *
	 * @return void
	 */
	// public function final_review(){

	// 	$manus_id = $this->input->post('com_man_id', true);

	// 	$post['com_man_id'] = $manus_id; 
	// 	$post['com_review'] = $this->input->post('com_rev', true);
	// 	$post['com_remarks'] = $this->input->post('com_remarks', true);
	// 	$post['com_usr_id'] = _UserIdFromSession();
	// 	$post['date_created'] = date('Y-m-d H:i:s');

	// 	$this->Manuscript_model->final_review(array_filter($post));

	// 	$man['man_status'] = 4;
	// 	$man['last_updated'] = date('Y-m-d H:i:s');
	// 	$where['row_id'] = $manus_id;

	// 	$this->Manuscript_model->process_manuscript(array_filter($man), $where);

	// 	$track['trk_man_id'] = $manus_id;
	// 	$track['trk_processor'] = _UserIdFromSession();
	// 	$track['trk_process_datetime'] = date('Y-m-d H:i:s');
	// 	$track['trk_description'] = 'FINAL';
		
	// 	$this->Manuscript_model->tracking(array_filter($track));

		
	// 	// email
	// 	$this->notify_author_publication($manus_id);
		

	// }

	/**
	 * Save final review of editorial board/publication committee
	 *
	 * @return void
	 */
	public function editorial_review(){
		

		$man_id = $this->input->post('edit_man_id', true);

		$post['edit_man_id'] = $man_id; 
		$post['edit_usr_id'] = _UserIdFromSession(); 
		$post['edit_remarks'] = $this->input->post('edit_remarks', true);
		$post['edit_file'] = $this->input->post('edit_file', true);
		$post['date_created'] = date('Y-m-d H:i:s');

	
        $file_string = str_replace(" ", "_", $_FILES['edit_file']['name']);
		$file_no_ext = preg_replace("/\.[^.]+$/", "", $file_string);
		$clean_file = preg_replace('/[^A-Za-z0-9\-]/', '_', $file_no_ext);
		$filename = $_FILES["edit_file"]["name"];
		$file_ext = pathinfo($filename, PATHINFO_EXTENSION);
		$post['edit_file'] = date('YmdHis') . '_' . $clean_file . '.' . $file_ext;
		$upload_file = $post['edit_file'];

		if ($post['edit_file'] != '') {
			$config['upload_path'] = './assets/oprs/uploads/editorial/';
		    $config['allowed_types'] = '*';
			$config['file_name'] = $upload_file;
			$this->load->library('upload', $config);
			$this->upload->initialize($config);
			if (!$this->upload->do_upload('edit_file')) {
				$error = $this->upload->display_errors();
			} else {
				$data = $this->upload->data();
			}
		}


		$this->Manuscript_model->save_editorial_review(array_filter($post));

		$man['man_status'] = 5;
		$man['last_updated'] = date('Y-m-d H:i:s');
		$where['row_id'] = $man_id;

		$this->Manuscript_model->process_manuscript(array_filter($man), $where);

		$track['trk_man_id'] = $man_id;
		$track['trk_processor'] = _UserIdFromSession();
		$track['trk_description'] = 'FINAL';
		$track['trk_process_datetime'] = date('Y-m-d H:i:s');
		
		$this->Manuscript_model->tracking(array_filter($track));

		
		// send email on-review
		$this->notify_author_on_editor_review($man_id, 13);
	}

	/**
	 * Retrieve all manuscripts
	 *
	 * @param   int  $id      manuscript id
	 * @param   string  $action  action
	 *
	 * @return  array           manuscript data
	 */
	public function manuscript($id, $action = null) {
		if ($id == 999) {
			$output = $this->Manuscript_model->get_all_manus_info();
		} else {
			$output = $this->Manuscript_model->get_manus_info($id);
		}
		echo json_encode($output);
	}

	/**
	 * Retrieve issues by journal id
	 *
	 * @param   string  $jor  journal
	 *
	 * @return  array        journal data
	 */
	public function journal($jor = null) {
		$output = $this->Manuscript_model->get_issues($jor);
		echo json_encode($output);
	}

	/**
	 * Retrieve reviewers by manuscript id
	 *
	 * @param   int  $id    manuscript id
	 * @param   string  $time  time
	 *
	 * @return  array         list of reviewers
	 */
	public function reviewers($id, $time) {
		$output = $this->Manuscript_model->get_reviewers($id, $time);
		echo json_encode($output);
	}

	/**
	 * Retrieve editors by manuscript id
	 *
	 * @param   int  $id    manuscript id
	 * @param   string  $time  time
	 *
	 * @return  array         list of reviewers
	 */
	public function editors($id) {
		$output = $this->Manuscript_model->get_editors($id);
		echo json_encode($output);
	}

	/**
	 * Retrieve reviews per manuscrip by editor id
	 *
	 * @param   int  $id    manuscript id
	 * @param   string  $time  time
	 *
	 * @return  array         list of reviewers
	 */
	public function reviews($id) {
		$output = $this->Manuscript_model->get_reviews($id);
		echo json_encode($output);
	}

	/**
	 * Retrieve review result for tracking
	 *
	 * @param   int  $id      reviewer id
	 * @param   int  $man_id  manuscript id
	 *
	 * @return  array           review result
	 */
	public function tracker_review($id, $man_id) {
		$output = $this->Review_model->get_review($id, $man_id);
		echo json_encode($output);
	}

	/**
	 * Retrieve reviewer info
	 *
	 * @param   int  $id  reviewer id
	 *
	 * @return  array       reviewer data
	 */
	public function reviewer_info($id) {
		$output = $this->Review_model->get_rev_info($id);
		echo json_encode($output);
	}

	/**
	 * Retrieve review status
	 *
	 * @param   int  $rev_id  reviewer id
	 * @param   int  $man_id  manuscript id
	 *
	 * @return  array           review result
	 */
	public function review_status($rev_id, $man_id) {
		$output = $this->Review_model->get_rev_status($rev_id, $man_id);
		echo json_encode($output);
	}

	/**
	 * Retrieve volume and issue
	 *
	 * @param   string  $value  year
	 *
	 * @return  array          journal data
	 */
	public function volume_issue($value) {
		$output = $this->Manuscript_model->get_journal_by_year($value);
		echo json_encode($output);
	}

	/**
	 * Count article by journal
	 *
	 * @param   string  $vol   volume
	 * @param   string  $iss   issue
	 * @param   string  $year  year
	 *
	 * @return  int         number of articles by journal
	 */
	public function get_jor_id($vol, $iss, $year) {
		$id = $this->Manuscript_model->get_jor_id($vol, $iss, $year);
		$output = $this->Manuscript_model->count_article_by_journal($id);
		echo $output;
	}

	/**
	 * Verify reviewer email
	 *
	 * @param   int  $id  reviewer id
	 *
	 * @return	array		reviewer data
	 */
	public function verify_reviewer_email($id) {
		$output = $this->Review_model->verify_reviewer_email($rev_mail = $this->input->post('trk_rev_email1', true), $id);
		echo json_encode($output);
	}

	/**
	 * Hide reviewer
	 *
	 * @param   int  $id    reviewer id
	 * @param   string  $user  user
	 *
	 * @return  array         user data
	 */
	public function hide_rev($id, $user) {
		$output = $this->Manuscript_model->hide_rev($id, $user);
		echo json_encode($output);
	}

	/**
	 * Set default author
	 *
	 * @return  array  author data
	 */
	public function default_auth() {
		$output = $this->Manuscript_model->default_auth(_UserIdFromSession());
		echo json_encode($output);
	}

	/**
	 * Send email to author (for finalization)
	 *
	 * @param   int  $id  author id
	 *
	 * @return  void
	 */
	public function notify_author_publication($id) {
		$output = $this->Review_model->get_manus_author_info($id);

		foreach ($output as $key => $value) {
			$title = $value->man_title;
			$dear = 'Dear ' . $val->man_author_title . ' ' . $value->man_author . '<br/><br/>';
			$email = $value->man_email;
		}

		$nameuser = 'eJournal Admin';
		$usergmail = 'nrcp.ejournal@gmail.com';
		$password = 'fpzskheyxltsbvtg';
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
		$mail->AddAddress($email);
		$dir = "https://skms.nrcp.dost.gov.ph/user/login";
		$htmlBody = date("F j, Y") . '<br/><br/>' .
			$dear .
			'A publication committee has sent final evaluation on the manuscript <em>' . $title . '</em> which <br/>' .
			'you have submitted for publication to the NRCP Research Journal. <br/><br/>' .
			'Please <u><a href="' . $dir . '" target="_blank" style="color:blue;cursor:pointer;">' .
			'log in</a></u> to your SKMS account.<br/><br/>' .

			'Very truly yours,<br/>'.
			'Managing Editor<br/>'.
			'NRCP Research Journal<br/><br/>'.
			
			'** THIS IS AN AUTOMATED MESSAGE PLEASE DO NOT REPLY **';
	
		// email content
		$mail->Subject = "NRCP Journal Publication : Manuscript Review Result";
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

	public function notify_author_on_review($id){
		$output = $this->Review_model->get_manus_author_info($id);

		foreach ($output as $key => $value) {
			$manuscript = $value->man_title;
			$title = $value->man_author_title;
			$author = $value->man_author;
			$email = $value->man_email;
		}

		
		// get email notification content
		$email_contents = $this->Email_model->get_email_content(3);

		// add cc/bcc
		foreach($email_contents as $row){
			$email_subject = $row->enc_subject;
			$email_contents = $row->enc_content;

			if( strpos($row->enc_cc, ',') !== false ) {
				$email_cc = explode(',', $row->enc_cc);
		    }else{
				$email_cc = array();
				array_push($email_cc, $row->enc_cc);
			}

			if( strpos($row->enc_bcc, ',') !== false ) {
				$email_bcc = explode(',', $row->enc_bcc);
		    }else{
				$email_bcc = array();
				array_push($email_bcc, $row->enc_bcc);
			}

			if( strpos($row->enc_user_group, ',') !== false ) {
				$email_user_group = explode(',', $row->enc_user_group);
		    }else{
				$email_user_group = array();
				array_push($email_user_group, $row->enc_user_group);
			}
			
		}

		// add exisiting email as cc
		if(count($email_user_group) > 0){
			$user_group_emails = array();
			foreach($email_user_group as $grp){
				$username = $this->Email_model->get_user_group_emails($grp);
				foreach($username as $uname){
					array_push($user_group_emails, $uname);
				}
			}
		}

		$dir = "https://skms.nrcp.dost.gov.ph/user/login";
		$sender = 'eJournal Admin';
		$sender_email = 'nrcp.ejournal@gmail.com';
		$password = 'fpzskheyxltsbvtg';

		// setup email config	
		$mail = new PHPMailer;
		$mail->isSMTP();
		$mail->Host = "smtp.gmail.com";
		// Specify main and backup server
		$mail->SMTPAuth = true;
		$mail->Port = 465;
		// Enable SMTP authentication
		$mail->Username = $sender_email;
		// SMTP username
		$mail->Password = $password;
		// SMTP password
		$mail->SMTPSecure = 'ssl';
		// Enable encryption, 'ssl' also accepted
		$mail->From = $sender_email;
		$mail->FromName = $sender;
		$mail->AddAddress($email);

		// add cc if any
		if(count($email_cc) > 0){
			foreach($email_cc as $cc){
				$mail->AddCC($cc);
			}
		}
		// add bcc if any
		if(count($email_bcc) > 0){
			foreach($email_bcc as $bcc){
				$mail->AddBCC($bcc);
			}
		}
		// add existing as cc
		if(count($user_group_emails) > 0){
			foreach($user_group_emails as $grp){
				$mail->AddCC($grp->usr_username);
			}
		}

		// replace reserved words
	
		$emailBody = str_replace('[FULL NAME]', $author, $email_contents);
		$emailBody = str_replace('[TITLE]', $title, $emailBody);
		$emailBody = str_replace('[MANUSCRIPT]', $manuscript, $emailBody);
		
		// send email
		$mail->Subject = $email_subject;
		$mail->Body = $emailBody;
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

	public function notify_author_on_editor_review($id, $content){
		$output = $this->Review_model->get_manus_author_info($id);

		foreach ($output as $key => $value) {
			$manuscript = $value->man_title;
			$title = $value->man_author_title;
			$name = $value->man_author;
			$email = $value->man_email;
		}

		
		// get email notification content
		$email_contents = $this->Email_model->get_email_content($content);

		// add cc/bcc
		foreach($email_contents as $row){
			$email_subject = $row->enc_subject;
			$email_contents = $row->enc_content;

			if( strpos($row->enc_cc, ',') !== false ) {
				$email_cc = explode(',', $row->enc_cc);
		    }else{
				$email_cc = array();
				array_push($email_cc, $row->enc_cc);
			}

			if( strpos($row->enc_bcc, ',') !== false ) {
				$email_bcc = explode(',', $row->enc_bcc);
		    }else{
				$email_bcc = array();
				array_push($email_bcc, $row->enc_bcc);
			}

			if( strpos($row->enc_user_group, ',') !== false ) {
				$email_user_group = explode(',', $row->enc_user_group);
		    }else{
				$email_user_group = array();
				array_push($email_user_group, $row->enc_user_group);
			}
			
		}

		// add exisiting email as cc
		if(count($email_user_group) > 0){
			$user_group_emails = array();
			foreach($email_user_group as $grp){
				$username = $this->Email_model->get_user_group_emails($grp);
				foreach($username as $uname){
					array_push($user_group_emails, $uname);
				}
			}
		}

		$dir = "https://skms.nrcp.dost.gov.ph/user/login";
		$sender = 'eJournal Admin';
		$sender_email = 'nrcp.ejournal@gmail.com';
		$password = 'fpzskheyxltsbvtg';

		// setup email config	
		$mail = new PHPMailer;
		$mail->isSMTP();
		$mail->Host = "smtp.gmail.com";
		// Specify main and backup server
		$mail->SMTPAuth = true;
		$mail->Port = 465;
		// Enable SMTP authentication
		$mail->Username = $sender_email;
		// SMTP username
		$mail->Password = $password;
		// SMTP password
		$mail->SMTPSecure = 'ssl';
		// Enable encryption, 'ssl' also accepted
		$mail->From = $sender_email;
		$mail->FromName = $sender;
		$mail->AddAddress($email);

		// add cc if any
		if(count($email_cc) > 0){
			foreach($email_cc as $cc){
				$mail->AddCC($cc);
			}
		}
		// add bcc if any
		if(count($email_bcc) > 0){
			foreach($email_bcc as $bcc){
				$mail->AddBCC($bcc);
			}
		}
		// add existing as cc
		if(count($user_group_emails) > 0){
			foreach($user_group_emails as $grp){
				$mail->AddCC($grp->usr_username);
			}
		}

		// replace reserved words
		if($content == 16){
			$link = "<a href='https://researchjournal.nrcp.dost.gov.ph/' target='_blank'>https://researchjournal.nrcp.dost.gov.ph/</a>";
		}else{
			$link = "Please click <a href='https://skms.nrcp.dost.gov.ph/user/login' target='_blank'>HERE</a> to login your SKMS account.";
		}
		$emailBody = str_replace('[FULL NAME]', $name, $email_contents);
		$emailBody = str_replace('[TITLE]', $title, $emailBody);
		$emailBody = str_replace('[MANUSCRIPT]', $manuscript, $emailBody);
		$emailBody = str_replace('[LINK]', $link, $emailBody);
		
		// send email
		$mail->Subject = $email_subject;
		$mail->Body = $emailBody;
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
	 * Retrieve title (mr., ms., etc)
	 *
	 * @return  array  titles
	 */
	public function get_titles() {
		$output = $this->Library_model->get_titles();
		echo json_encode($output);
	}

	/**
	 * Retrieve editorial board/publication committee final review
	 *
	 * @param [type] $id
	 * @return void
	 */
	public function get_committee_review($id){
		$output = $this->Manuscript_model->get_com_rev($id);
		echo json_encode($output);
	}

	/**
	 * Delete manuscript
	 *
	 * @param [type] $id
	 * @return void
	 */
	public function remove_manus($id){
		$output = $this->Manuscript_model->get_manus_info($id);
		foreach($output as $row){
			$dir_abs = '/var/www/html/ejournal/assets/oprs/uploads/initial_abstracts_pdf/';
			// $dir_abs = $_SERVER['DOCUMENT_ROOT'] . '/ejournal/assets/oprs/uploads/abstracts/';
			unlink($dir_abs . $row->man_abs);
			
			$dir_file = '/var/www/html/ejournal/assets/oprs/uploads/initial_manuscripts_pdf/';
			// $dir_file = $_SERVER['DOCUMENT_ROOT'] . '/ejournal/assets/oprs/uploads/manuscripts/';
			unlink($dir_file . $row->man_file);
			
			$dir_word = '/var/www/html/ejournal/assets/oprs/uploads/initial_manuscripts_word/';
			// $dir_word = $_SERVER['DOCUMENT_ROOT'] . '/ejournal/assets/oprs/uploads/manuscriptsdoc/';
			unlink($dir_word . $row->man_word);
		}
		$where_m['row_id'] = $id;
		$this->Manuscript_model->remove_manus_by_man_id($where_m);
		$where_r['rev_man_id'] = $id;
		$this->Manuscript_model->remove_reviewers_by_man_id($where_r);
		$where_t['trk_man_id'] = $id;
		$this->Manuscript_model->remove_tracking_by_man_id($where_t);
		$where_c['coa_man_id'] = $id;
		$this->Manuscript_model->remove_coa_by_man_id($where_c);
		$where_l['log_insert_id'] = $id;
		$this->Manuscript_model->remove_logs_by_man_id($where_l);
	}

	/**
	 * Send email to author (for finalization)
	 *
	 * @param [type] $id
	 * @return void
	 */
	public function send_email_author($id){

		$output = $this->Manuscript_model->get_member_info($id);
        // echo json_encode($output);

		foreach ($output as $key => $row) {
			$dear = 'Dear ' . $row->TITLE. ' ' . $row->NAME . '<br/><br/>';
			$email = $row->pp_email;
		}
		
		$nameuser = 'eJournal Admin';
		$usergmail = 'nrcp.ejournal@gmail.com';
		$password = 'fpzskheyxltsbvtg';
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
		$mail->AddAddress($email);
		$dir = "https://skms.nrcp.dost.gov.ph/user/login";
		$htmlBody = date("F j, Y") . '<br/><br/>' .
			$dear .
			'Your manuscript has been uploaded to the NRCP Research Journal for review. This will be processed and subjected to the next step - eReview.' .
			'<br/><br/>' . 

			'Thank you' . 
			'<br/><br/>' . 

			'NRCP Research Journal' .
			'<br/><br/>' .

			
			'** THIS IS AN AUTOMATED MESSAGE PLEASE DO NOT REPLY **';
	
		// email content
		$mail->Subject = "NRCP Journal Publication : Manuscript uploaded successfully";
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
			echo '<br/><br/>Message could not be sent.<br/>';
			echo 'Mailer Error: ' . $mail->ErrorInfo . '<br/>';
			exit;
		}
	}
	
	public function add_remarks(){
		$where['row_id'] = $this->input->post('man_id', TRUE);
		$post['man_remarks'] = $this->input->post('man_remarks', TRUE);
		
		$this->Manuscript_model->update_remarks(array_filter($post), $where);
		
	}

	public function upload_nda(){
		$post = array();
        $file_string = str_replace(" ", "_", $_FILES['scr_nda']['name']);
		$file_no_ext = preg_replace("/\.[^.]+$/", "", $file_string);
		$clean_file = preg_replace('/[^A-Za-z0-9\-]/', '_', $file_no_ext);
		$filename = $_FILES["scr_nda"]["name"];
		$file_ext = pathinfo($filename, PATHINFO_EXTENSION);
		$post['scr_nda'] = date('YmdHis') . '_' . $clean_file . '.' . $file_ext;
		$upload_file = $post['scr_nda'];

		if ($post['scr_nda'] != '') {
			$config['upload_path'] = './assets/oprs/uploads/nda/';
		    $config['allowed_types'] = '*';
			$config['file_name'] = $upload_file;
			$this->load->library('upload', $config);
			$this->upload->initialize($config);
			if (!$this->upload->do_upload('scr_nda')) {
				$error = $this->upload->display_errors();
			} else {
				$data = $this->upload->data();
			}
		}


		$where_rev['scr_man_rev_id'] = _UserIdFromSession();
		$where_rev['scr_man_id'] = $this->input->post('scr_man_id', true);
		$this->Review_model->update_review(array_filter($post), $where_rev, 'nda');
	}

	public function for_publication(){
		$man_id = $this->input->post('man_id', true);

		// update manuscript status
		$post['man_status'] = 7;
		$where['row_id'] = $man_id;
		$output = $this->Manuscript_model->process_manuscript(array_filter($post), $where);

		// save trackingpublish_articles
		$track['trk_man_id'] = $man_id;
		$track['trk_processor'] = _UserIdFromSession();
		$track['trk_process_datetime'] = date('Y-m-d H:i:s');
		$track['trk_remarks'] = $this->input->post('trk_remarks', true);
		$track['trk_description'] = 'LAYOUT';
		$this->Manuscript_model->tracking(array_filter($track));

		// send email for publication
		$this->notify_author_on_editor_review($man_id, 15);

	}

	public function upload_publishable(){
		$man_id = $this->input->post('man_id', true);

		$post = array();

		// final abstract
        $file_string = str_replace(" ", "_", $_FILES['man_abs']['name']);
		$file_no_ext = preg_replace("/\.[^.]+$/", "", $file_string);
		$clean_file = preg_replace('/[^A-Za-z0-9\-]/', '_', $file_no_ext);
		$filename = $_FILES["man_abs"]["name"];
		$file_ext = pathinfo($filename, PATHINFO_EXTENSION);
		$post['man_abs'] = date('YmdHis') . '_' . $clean_file . '.' . $file_ext;
		$upload_file = $post['man_abs'];
		
		// final manuscript
        $file_string = str_replace(" ", "_", $_FILES['man_file']['name']);
		$file_no_ext = preg_replace("/\.[^.]+$/", "", $file_string);
		$clean_file = preg_replace('/[^A-Za-z0-9\-]/', '_', $file_no_ext);
		$filename = $_FILES["man_file"]["name"];
		$file_ext = pathinfo($filename, PATHINFO_EXTENSION);
		$post['man_file'] = date('YmdHis') . '_' . $clean_file . '.' . $file_ext;
		$upload_file = $post['man_file'];

		if ($post['man_abs'] != '') {
			$config['upload_path'] = './assets/oprs/uploads/final_abstracts/';
		    $config['allowed_types'] = '*';
			$config['file_name'] = $upload_file;
			$this->load->library('upload', $config);
			$this->upload->initialize($config);
			if (!$this->upload->do_upload('man_abs')) {
				$error = $this->upload->display_errors();
			} else {
				$data = $this->upload->data();
			}
		}

		if ($post['man_file'] != '') {
			$config['upload_path'] = './assets/oprs/uploads/final_manuscripts/';
		    $config['allowed_types'] = '*';
			$config['file_name'] = $upload_file;
			$this->load->library('upload', $config);
			$this->upload->initialize($config);
			if (!$this->upload->do_upload('man_file')) {
				$error = $this->upload->display_errors();
			} else {
				$data = $this->upload->data();
			}
		}

		$post['last_updated'] = date('Y-m-d H:i:s');
		$post['man_status'] = 8;
		$where['row_id'] = $man_id;
		$this->Manuscript_model->process_manuscript(array_filter($post), $where);

		// save tracking
		$track = array();
		$track['trk_man_id'] = $man_id;
		$track['trk_processor'] = _UserIdFromSession();
		$track['trk_description'] = 'PUBLISHABLE';
		$track['trk_process_datetime'] = date('Y-m-d H:i:s');
		$this->Manuscript_model->tracking(array_filter($track));

		// send email for published articls
		$this->notify_author_on_editor_review($man_id, 16);

	}

	public function change_status($id, $status){

		$post['last_updated'] = date('Y-m-d H:i:s');
		$post['man_status'] = $status;
		$where['row_id'] = $id;
		$this->Manuscript_model->process_manuscript(array_filter($post), $where);

		// save tracking
		$track = array();
		$track['trk_man_id'] = $id;
		$track['trk_processor'] = _UserIdFromSession();
		$track['trk_description'] = 'PUBLISHED TO OTHER JOURNAL PLATFORM';
		$track['trk_process_datetime'] = date('Y-m-d H:i:s');
		$this->Manuscript_model->tracking(array_filter($track));
	

		$manus_info = $this->Manuscript_model->get_manus_info($id);

		foreach($manus_info as $key => $row){
			$man_title = $row->man_title;
			$title = $row->man_author_title;
			$author = $row->man_author;
			$recepient = $row->man_email;
		}

		// get email notification content
		$email_contents = $this->Email_model->get_email_content(19);

		// add cc/bcc
		foreach($email_contents as $row){
			$email_body = $row->enc_content;
			$email_subject = $row->enc_subject;

			if( strpos($row->enc_cc, ',') !== false ) {
				$email_cc = explode(',', $row->enc_cc);
		    }else{
				$email_cc = array();
				array_push($email_cc, $row->enc_cc);
			}

			if( strpos($row->enc_bcc, ',') !== false ) {
				$email_bcc = explode(',', $row->enc_bcc);
		    }else{
				$email_bcc = array();
				array_push($email_bcc, $row->enc_bcc);
			}

			if( strpos($row->enc_user_group, ',') !== false ) {
				$email_user_group = explode(',', $row->enc_user_group);
		    }else{
				$email_user_group = array();
				array_push($email_user_group, $row->enc_user_group);
			}
			
		}

		// add exisiting email as cc 
		if(count($email_user_group) > 0){
			$user_group_emails = array();
			foreach($email_user_group as $grp){
				$username = $this->Email_model->get_user_group_emails($grp);
				foreach($username as $uname){
					array_push($user_group_emails, $uname);
				}
			}
		}

		$dir = "https://skms.nrcp.dost.gov.ph/main/login";
		$link = '<a href="' . $dir . '" target="_blank">skms.nrcp.dost.gov.ph</a>';
		$sender = 'eJournal Admin';
		$sender_mail = 'nrcp.ejournal@gmail.com';
		$password = 'fpzskheyxltsbvtg';
		
		// replace reserved words
		$emailBody = str_replace('[TITLE]', $title, $email_body);
		$emailBody = str_replace('[FULL NAME]', $author, $emailBody);
		$emailBody = str_replace('[MANUSCRIPT]', $man_title, $emailBody);
		$emailBody = $emailBody;

		// setup email config
		$mail = new PHPMailer;
		$mail->isSMTP();
		$mail->Host = "smtp.gmail.com";
		// Specify main and backup server
		$mail->SMTPAuth = true;
		$mail->Port = 465;
		// Enable SMTP authentication
		$mail->Username = $sender_mail;
		// SMTP username
		$mail->Password = $password;
		// SMTP password
		$mail->SMTPSecure = 'ssl';
		// Enable encryption, 'ssl' also accepted
		$mail->From = $sender_mail;
		$mail->FromName = $sender;
		$mail->AddAddress($recepient);
		// add cc if any
		if(count($email_cc) > 0){
			foreach($email_cc as $cc){
				$mail->AddCC($cc);
			}
		}
		// add bcc if any
		if(count($email_bcc) > 0){
			foreach($email_bcc as $bcc){
				$mail->AddBCC($bcc);
			}
		}
		// add existing as cc
		if(count($user_group_emails) > 0){
			foreach($user_group_emails as $grp){
				$mail->AddCC($grp->usr_username);
			}
		}
		// send email
		$mail->Subject = $email_subject;
		$mail->Body = $emailBody;
		$mail->IsHTML(true);
		$mail->smtpConnect([
			'ssl' => [
				'verify_peer' => false,
				'verify_peer_name' => false,
				'allow_self_signed' => true,
			],
		]);
		if (!$mail->Send()) {
			return '<br/><br/>Message could not be sent.<br/>
					Mailer Error: ' . $mail->ErrorInfo . '<br/>';
			exit;
		}else{
			return $emailBody;
		}
		
		echo 1;
	}

	public function tester(){
		$value = '3,9';
		if( strpos($value, ',') !== false ) {
			$email_user_group = explode(',', $value);
		}else{
			$email_user_group = array();
			array_push($email_user_group, $value);
		}

		// add exisiting email as cc
		if(count($email_user_group) > 0){
			$user_group_emails = array();
			foreach($email_user_group as $grp){
				$username = $this->Email_model->get_user_group_emails($grp);
				foreach($username as $uname){
					array_push($user_group_emails, $uname);
				}
			}
			echo count($user_group_emails);
			print_r($user_group_emails);
		}

		foreach($user_group_emails as $name){
			echo $name->usr_username;
		}
	}

	
	

}

/* End of file Manuscripts.php */