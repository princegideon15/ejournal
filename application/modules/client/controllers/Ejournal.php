<?php if (!defined('BASEPATH')) {
	exit('No direct script access allowed');
}

/**
 * File Name: Ejournal.php
 * ----------------------------------------------------------------------------------------------------
 * Purpose of this file:
 * To manage data to display in client landing page
 * ----------------------------------------------------------------------------------------------------
 * System Name: Online Research Journal System
 * ----------------------------------------------------------------------------------------------------
 * Author: -
 * ----------------------------------------------------------------------------------------------------
 * Date of revision: -
 * ----------------------------------------------------------------------------------------------------
 * Copyright Notice:
 * Copyright (C) 2018 by the Department of Science and Technology - National Research Council of the Philiipines
 */

class Ejournal extends EJ_Controller {

	public function __construct() {
		parent::__construct();

		$this->load->model('Client_journal_model');
		$this->load->model('Library_model');
		$this->load->model('Search_model');
		$this->load->model('CSF_model');
		$this->load->model('Admin/Email_model');
		$this->load->library("My_phpmailer");
		$objMail = $this->my_phpmailer->load();
		$this->load->helper('visitors_helper');
		$this->load->helper('string');
	}

	/**
	 * Display langing page
	 *
	 * @return void
	 */
	public function index() {

		$data['main_title'] = "eJournal";
		$data['country'] = $this->Library_model->get_library('tblcountries');
		$data['main_content'] = "client/journal";
		$data['journals'] = $this->Client_journal_model->get_journals();
		$data['popular'] = $this->Client_journal_model->top_five();
		$data['client_count'] = $this->Client_journal_model->all_client();
		$data['hits_count'] = $this->Client_journal_model->all_hits();
		$data['latest'] = $this->Client_journal_model->latest_journal();
		$this->_LoadPage('common/body', $data);

		// store visitor information
		ip_info(); 
	}

	/**
	 * Display langing page
	 *
	 * @return void
	 */
	public function about() {

	
		$data['main_title'] = "eJournal";
		$data['main_content'] = "client/about";
		$data['journals'] = $this->Client_journal_model->get_journals();
		$this->_LoadPage('common/body', $data);
	}

	/**
	 * Display langing page
	 *
	 * @return void
	 */
	public function guidelines() {
		$data['main_title'] = "eJournal";
		$data['main_content'] = "client/guidelines";
		$data['journals'] = $this->Client_journal_model->get_journals();
		$this->_LoadPage('common/body', $data);
	}

	/**
	 * Display langing page
	 *
	 * @return void
	 */
	public function editorial() {

	
		$data['main_title'] = "eJournal";
		$data['main_content'] = "client/editorial";
		$data['editorials_vol_year'] = $this->Client_journal_model->get_unique_editorials();
		$data['journals'] = $this->Client_journal_model->get_journals();
		$this->_LoadPage('common/body', $data);
	}

	/**
	 * Retrieve articles by journal id
	 *
	 * @param [int] $id
	 * @return void
	 */
	public function get_articles($vol,$id) {
		$data['main_title'] = "eJournal";
		$data['main_content'] = "client/articles";
		$data['articles'] = $this->Client_journal_model->get_articles($id);
		$data['journals'] = $this->Client_journal_model->get_journals();
		$data['selected_journal'] = $vol;
		$this->_LoadPage('common/body', $data);
	}
	
	/**
	 * Retrieve articles by journal id
	 *
	 * @param [int] $id
	 * @return void
	 */
	public function get_issues($id) {
		$data['main_title'] = "eJournal";
		$data['main_content'] = "client/issues";
		$data['issues'] = $this->Client_journal_model->get_issues($id);
		$data['journals'] = $this->Client_journal_model->get_journals();
		$data['selected_journal'] = $id;
		$this->_LoadPage('common/body', $data);
	}
	

	/**
	 * Retrieve articles by journal id
	 *
	 * @param [int] $id
	 * @return void
	 */
	public function get_index($id = null) {
		$data['main_title'] = "eJournal";
		$data['main_content'] = "client/indexes";
		$data['articles'] = $this->Client_journal_model->get_index($id);
		$data['journals'] = $this->Client_journal_model->get_journals();
		$data['article_index'] = $id;
		$this->_LoadPage('common/body', $data);
	}

	/**
	 * Retrieve authors/coauthors by article id
	 *
	 * @param [int] $id
	 * @return void
	 */
	public function get_coauthors($id) {
		$output = $this->Client_journal_model->get_coauthors($id);
		echo json_encode($output);
	}

	/**
	 * Retrieve articles in a journal by journal id
	 *
	 * @param [type] $id
	 * @return void
	 */
	public function get_journal($id) {
		$output = $this->Client_journal_model->get_journal($id);
		echo json_encode($output);
	}

	/**
	 * Save client info after requesting full text pdf
	 *
	 * @return void
	 */
	public function download_pdf() {
		// whether ip is from share internet
		if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
			$ip_address = $_SERVER['HTTP_CLIENT_IP'];
		}
		// whether ip is from proxy
		elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
			$ip_address = $_SERVER['HTTP_X_FORWARDED_FOR'];
		}
		// whether ip is from remote address
		else {
			$ip_address = $_SERVER['REMOTE_ADDR'];
		}

		$tableName = 'tblclients';
		$result = $this->db->list_fields($tableName);
		$post = array();

		foreach ($result as $i => $field) {
			if ($field != 'clt_id') {
				$post[$field] = $this->input->post($field, TRUE);
			}
		}

		$client_member = $this->input->post('clt_member');
		$download_id = $post['clt_journal_downloaded_id'];
		$recipient = $post['clt_email'];

		$post['clt_download_date_time'] = date('Y-m-d H:i:s');
		$post['clt_ip_address'] = $ip_address;
		
		$client_id = $this->Client_journal_model->save_client(array_filter($post));

		$ref = random_string('alnum', 8) . date('ymdhis');
		$fdbk_sess = array(
			'client_id' => $client_id,
			'fdbk_ref' => $ref,
		);
		$this->session->set_userdata($fdbk_sess);

		// echo $client_id;

	    $this->download_pdf_continue($client_id, $download_id, $recipient);

		// send email to author
		$this->notify_author($client_id, $download_id, 1); // 1 - downloaded article

	
	}

	/**
	 * Send email to author if client requested/downloaded his/her full text pdf
	 *
	 * @param [int] $id		client row id
	 * @param [int] $download_id	author email
	 * @param [int] $flag		determine if download or citation
	 * @return void
	 */
	public function notify_author($id, $download_id, $flag){

		$author_email = $this->Client_journal_model->get_author_email($download_id);
	
		if($author_email == '') { $author_email = 'nrcp.ejournal@gmail.com'; }

		$link = "<a href='https://researchjournal.nrcp.dost.gov.ph/' target='_blank'>https://researchjournal.nrcp.dost.gov.ph/</a>";
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
		$mail->AddAddress($author_email);

		if($flag == 1){ // full text pdf downloaded
			$client_info = $this->Client_journal_model->get_client_info_download($id);

			foreach ($client_info as $key => $row) {
				
				$author = $row->art_author;
				$name = $row->clt_name;
				$affiliation = $row->clt_affiliation;
				$country = $row->clt_country;
				$purpose = $row->clt_purpose;
				$date = $row->clt_download_date_time;
				$member = ($row->clt_member == 1) ? '(NRCP member)' : '';
				$article = $row->art_title;
			}


			// get email notification content
			$email_contents = $this->Email_model->get_email_content(2);

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
					array_push($user_group_emails, $username);
				}
			}

			
			$emailBody = str_replace('[FULL NAME]', $author, $email_contents);
			$emailBody = str_replace('[ARTICLE]', $article, $emailBody);
			$emailBody = str_replace('[NAME]', $name, $emailBody);
			$emailBody = str_replace('[MEMBER]', $member, $emailBody);
			$emailBody = str_replace('[AFFILIATION]', $affiliation, $emailBody);
			$emailBody = str_replace('[COUNTRY]', $country, $emailBody);
			$emailBody = str_replace('[PURPOSE]', $purpose, $emailBody);
			$emailBody = str_replace('[LINK]', $link, $emailBody);
			
	
		}else{ // articles cited
			$client_info = $this->Client_journal_model->get_client_info_citation($id);

			foreach ($client_info as $key => $row) {
				
				$author = $row->art_author;
				$name = $row->cite_name;
				$client_email = $row->cite_email;
				$affiliation = $row->cite_affiliation;
				$country = $row->cite_country;
				$date = $row->cite_date;
				$member = ($row->cite_member == 1) ? '(NRCP member)' : '';
				$article = $row->art_title;
			}

			// get email notification content
			$email_contents = $this->Email_model->get_email_content(1);

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
					array_push($user_group_emails, $username);
				}
			}

			$link = "<a href='https://researchjournal.nrcp.dost.gov.ph/' target='_blank'>https://researchjournal.nrcp.dost.gov.ph/</a>";
			$emailBody = str_replace('[FULL NAME]', $author, $email_contents);
			$emailBody = str_replace('[ARTICLE]', $article, $emailBody);
			$emailBody = str_replace('[NAME]', $name, $emailBody);
			$emailBody = str_replace('[MEMBER]', $member, $emailBody);
			$emailBody = str_replace('[EMAIL]', $client_email, $emailBody);
			$emailBody = str_replace('[LINK]', $link, $emailBody);
			$emailBody = str_replace('[AFFILIATION]', $affiliation, $emailBody);
			$emailBody = str_replace('[COUNTRY]', $country, $emailBody);
		
		}

		// replace reserved words
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
				$mail->AddCC($grp);
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
			echo '</br></br>Message could not be sent.</br>';
			echo 'Mailer Error: ' . $mail->ErrorInfo . '</br>';
			exit;
		}
	}

	/**
	 * Send email with attached full text pdf to the client
	 *
	 * @param [id] $download_id		article id
	 * @param [string] $recipient		client's email
	 * @return void
	 */
	public function download_pdf_continue($client_id, $download_id, $recipient) {



		//Server
		$file_to_attach = '/var/www/html/ejournal/assets/uploads/pdf/';
		//Localhost
		// $file_to_attach = $_SERVER['DOCUMENT_ROOT'].'/ejournal/assets/uploads/pdf/';
		$file_name = $this->Client_journal_model->get_pdf_to_sent($download_id);
		$file_size = filesize($file_to_attach . $file_name);

		$output = $this->Client_journal_model->get_article($download_id);

		foreach ($output as $row) {
			$title = $row->art_title;
			$author = $row->art_author;
			$aff = $row->art_affiliation;
			$aemail = $row->art_email;
			$att = $row->art_full_text_pdf;
		}

		$client = $this->Client_journal_model->get_client_by_id($client_id);

		foreach ($client as $row) {
			$client_title = $row->clt_title;
			$client_name = $row->clt_name;
			$client_aff = $row->clt_affiliation;
			$client_country = $row->clt_country;
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
				array_push($user_group_emails, $username);
			}
		}
				
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

		if ($file_size >= 26214400) {
			$show_file = '*** Requested file exceeds 25MB. Please contact us. ***';
		} else {

			$show_file = $file_name;
			$mail->addAttachment($file_to_attach . $file_name);
		}

		$mail->AddAddress($recipient);

		// replace reserved words
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
				$mail->AddCC($grp);
			}
		}

		$link = "<a href='https://researchjournal.nrcp.dost.gov.ph/client/ejournal/customer_service' 
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
		>&#8594; DOST-NRCP Satisfaction Feedback Form
		</a>";

		$emailBody = str_replace('[CLIENT_TITLE]', $client_title, $email_contents);
		$emailBody = str_replace('[CLIENT_NAME]', $client_name, $emailBody);
		$emailBody = str_replace('[CLIENT_AFFILIATION]', $client_aff, $emailBody);
		$emailBody = str_replace('[CLIENT_COUNTRY]', $client_country, $emailBody);

		$emailBody = str_replace('[TITLE]', $title, $emailBody);
		$emailBody = str_replace('[AUTHOR]', $author, $emailBody);
		$emailBody = str_replace('[AFFILIATION]', $aff, $emailBody);
		$emailBody = str_replace('[EMAIL]', $aemail, $emailBody);
		$emailBody = str_replace('[FILE]', $show_file, $emailBody);
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
	 * Count total numbers of client downloads
	 *
	 * @param [int] $id		article id
	 * @return void
	 */
	public function client_count($id) {
		$output = $this->Client_journal_model->client_count($id);
		echo $output;
	}

	/**
	 * Save visitor info after abstract hits
	 *
	 * @param [int] $id		article id
	 * @return void
	 */
	public function abstract_hits($id) {
		// whether ip is from share internet
		if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
			$ip_address = $_SERVER['HTTP_CLIENT_IP'];
		}
		// whether ip is from proxy
		elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
			$ip_address = $_SERVER['HTTP_X_FORWARDED_FOR'];
		}
		// whether ip is from remote address
		else {
			$ip_address = $_['REMOTE_ADDR'];
		}

		$post = array();
		$post['hts_ip_address'] = $ip_address;
		$post['hts_art_id'] = $id;
		$post['date_viewed'] = date('Y-m-d H:i:s');
		$this->Client_journal_model->save_abstract_hits($post);
	}

	/**
	 * Count total numbers of citation by article id
	 *
	 * @param [int] $id		article id
	 * @return void
	 */
	public function cite_count($id) {
		$output = $this->Client_journal_model->count_citation($id);
		echo $output;
	}

	/**
	 * Count total numbers of abstract hits
	 *
	 * @param [int] $id		article id
	 * @return void
	 */
	public function hits_count($id) {
		$output = $this->Client_journal_model->hits_count($id);
		echo $output;
	}

	/**
	 * Retrieve full text pdf file size
	 *
	 * @param [int] $id		article id
	 * @return void
	 */
	public function file_size($id) {
		$file = $this->Client_journal_model->file_size($id);

		$server_dir = '/var/www/html/ejournal/assets/uploads/pdf/';
		$get_file = filesize($server_dir . $file);

		// $get_file = filesize($_SERVER['DOCUMENT_ROOT'].'/ejournal/assets/uploads/pdf/'.$file);

		if ($get_file >= 1048576) {
			$output = number_format($get_file / 1048576, 2) . ' MB';
		} elseif ($get_file >= 1024) {
			$output = number_format($get_file / 1024, 2) . ' KB';
		} else {
			$output = round($get_file, 1) . ' bytes';
		}

		echo $output;
	}

	/**
	 * Search matched keywords
	 *
	 * @param [int] $filter		category
	 * @param [string] $keyword		keyword
	 * @return void
	 */
	public function search($filter, $keyword) {

		$clean_keyword = str_replace('%C3%B1','ñ',str_replace('%2C',',',str_replace('+',' ',$keyword)));
		$output = $this->Search_model->search_ejournal($filter, $clean_keyword);

		$data['result'] = $output;
		$data['keyword'] = $keyword;
		$data['filter'] = $filter;

		$data['country'] = $this->Library_model->get_library('tblcountries');
		$data['main_title'] = "eJournal";
		$data['main_content'] = "client/search_results";
		$this->_LoadPage('common/body', $data);

		if (strlen($clean_keyword) >= 3) {
			$stop_words = array("a", "an", "the", "in", "of", "on", "are", "be", "if", "into", "which");
			if (in_array($keyword, $stop_words)) {} else {

				// store keywords on search
				$myFile = ($filter == 1) ? './assets/title.txt' :
				(($filter == 2) ? './assets/acoa.txt' :
					'./assets/keywords.txt');

				if ($filter == 2) {
					$res_count = count($output['authors']) + count($output['coas']);
					$arr_count = count($output, COUNT_RECURSIVE);

					if ($arr_count > 2) {
						$message = $filter . '=>' . $keyword . '=>' . $res_count . PHP_EOL;

						if (file_exists($myFile)) {
							$fh = fopen($myFile, 'a');
							fwrite($fh, $message);
						} else {
							$fh = fopen($myFile, 'w');
							fwrite($fh, $message);
						}
						fclose($fh);
					}
				} else {
					$res_count = count($output);
					$arr_count = count($output, COUNT_RECURSIVE);

					if ($arr_count > 0) {
						$message = $filter . '=>' . $keyword . '=>' . $res_count . PHP_EOL;

						if (file_exists($myFile)) {
							$fh = fopen($myFile, 'a');
							fwrite($fh, $message);
						} else {
							$fh = fopen($myFile, 'w');
							fwrite($fh, $message);
						}
						fclose($fh);
					}
				}}
		}

	}

	/**
	 * Retrieve coauthor data
	 *
	 * @param [int] $id		article id
	 * @param [string] $data		author name
	 * @return void
	 */
	public function get_acoa_details($id, $data) {
		$output = $this->Client_journal_model->get_acoa_details($id, str_replace('%C3%B1','ñ',str_replace('+',' ',$data)));
		echo json_encode($output);
	}

	/**
	 * Save info of client after citing article
	 *
	 * @param [int] $id		article id
	 * @return void
	 */
	public function save_citation($id)
	{

		

		$recipient = $this->input->post('cite_email', TRUE);
		$citation = $this->input->post('cite_value', TRUE);

		
		$tableName = 'tblcitations';
		$result = $this->db->list_fields($tableName);
		$post = array();

		foreach ($result as $i => $field) {
				$post[$field] = $this->input->post($field, TRUE);
				$client_title = $this->input->post('cite_title', TRUE);
				$client_name = $this->input->post('cite_name', TRUE);
				$client_aff = $this->input->post('cite_affiliation', TRUE);
				$client_country = $this->input->post('cite_country', TRUE);
			
		}

		$post['cite_member'] = $this->input->post('cite_member', TRUE);
		$post['cite_art_id'] = $id;
		$post['date_created'] = date('Y-m-d H:i:s');
		

		$last_insert_id = $this->Client_journal_model->save_citation(array_filter($post));

		$ref = random_string('alnum', 8) . date('ymdhis');
		$fdbk_sess = array(
			'client_id' => $last_insert_id,
			'fdbk_ref' => $ref,
		);
		$this->session->set_userdata($fdbk_sess);

		echo $last_insert_id;

		// send email to author after citing his/her article
		$this->notify_author($last_insert_id, $id, 2); // 2 - cited article

		// get email notification content
		$email_contents = $this->Email_model->get_email_content(4);

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
				array_push($user_group_emails, $username);
			}
		}
				
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

		$mail->AddAddress($recipient);

		// replace reserved words
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
				$mail->AddCC($grp);
			}
		}

		$link = "<a href='https://researchjournal.nrcp.dost.gov.ph/client/ejournal/customer_service' 
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
		>&#8594; DOST-NRCP Satisfaction Feedback Form
		</a>";
		
		
		$emailBody = str_replace('[CLIENT_TITLE]', $client_title, $email_contents);
		$emailBody = str_replace('[CLIENT_NAME]', $client_name, $emailBody);
		$emailBody = str_replace('[CLIENT_AFFILIATION]', $client_aff, $emailBody);
		$emailBody = str_replace('[CLIENT_COUNTRY]', $client_country, $emailBody);

		$emailBody = str_replace('[CITATION]', $citation, $emailBody);
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
	 * Display customer service feedback form
	 *
	 * @return void
	 */
	public function customer_service() {
		
		
		$id = $this->session->userdata('client_id');
		$ref = $this->session->userdata('fdbk_ref');   

		$check_client_id_exists = $this->CSF_model->check_client_id_exists($id);
		$check_if_fdbk_ref_exist = $this->CSF_model->check_fdbk_ref($ref);
		
		if($check_client_id_exists == 1 && $check_if_fdbk_ref_exist == 0){
		// if($check_if_fdbk_ref_exist == 0){
			$data['main_title'] = "eJournal";
			$data['main_content'] = "client/feedback";
			$data['questions'] = $this->Library_model->get_csf_questions();
			$data['affiliations'] = $this->Library_model->get_csf_q_choices(1);
			$data['services'] = $this->Library_model->get_csf_q_choices(2);
			$data['choices'] = $this->Library_model->get_csf_q_choices(3);
			$this->_LoadPage('common/body', $data);
		}else{
			redirect('/');
		}

		// $data['main_title'] = "eJournal";
		// 	$data['main_content'] = "client/feedback";
		// 	$data['questions'] = $this->Library_model->get_csf_questions();
		// 	$data['affiliations'] = $this->Library_model->get_csf_q_choices(1);
		// 	$data['services'] = $this->Library_model->get_csf_q_choices(2);
		// 	$data['choices'] = $this->Library_model->get_csf_q_choices(3);
		// 	$this->_LoadPage('common/body', $data);
			
	}

	

	/**
	 * Display customer service feedback form for testing only
	 *
	 * @return void
	 */
	public function feedback_form() {
		
			$data['main_title'] = "eJournal";
			$data['main_content'] = "client/feedback";
			$data['questions'] = $this->Library_model->get_csf_questions();
			$data['affiliations'] = $this->Library_model->get_csf_q_choices(1);
			$data['services'] = $this->Library_model->get_csf_q_choices(2);
			$data['choices'] = $this->Library_model->get_csf_q_choices(3);
			$this->_LoadPage('common/body', $data);
	}

	public function submit_feedback() {


		$id = $this->session->userdata('client_id');  
		$ref = $this->session->userdata('fdbk_ref');
		
	
		$svc_fdbk_q_id      = $this->input->post('svc_fdbk_q_id[]', TRUE);       
        $svc_fdbk_q_answer  = $this->input->post('svc_fdbk_q_answer[]', TRUE);  
        $svc_fdbk_q_other_answer  = $this->input->post('svc_fdbk_q_other_answer[]', TRUE);  

		
		if($svc_fdbk_q_id == ''){
			redirect('/');
		}else{
			
			$ids = array_unique($svc_fdbk_q_id);
			$data = array();

			$c=1;
			foreach($ids as $key => $q_id){

				$data= array( 
					'svc_fdbk_q_id'            =>  $q_id,                
					'svc_fdbk_q_answer'        =>  $svc_fdbk_q_answer[$c],
					'svc_fdbk_q_other_answer'  =>  (isset($svc_fdbk_q_other_answer[$c])) ? $svc_fdbk_q_other_answer[$c] : '',
					'svc_fdbk_q_code        '  =>  'CSF-V2022',
					'svc_fdbk_usr_id'          =>  $id,    
					'date_created'             =>  date('Y-m-d H:i:s'),
					'svc_fdbk_ref'             =>  $ref,
					);
				$c++;
				
			$output = $this->CSF_model->save_csf(array_filter($data));
			}

			$this->success_fdbk();
		}

        save_log_oprs($id, 'submitted Client Satisfaction Feedback (CSF)', '', '');
		
	}
		
	public function success_fdbk(){
			
		$data['main_title'] = "eJournal";
		$data['main_content'] = "client/success";
		$this->_LoadPage('common/body', $data);
	}

}

/* End of file Ejournal.php */
