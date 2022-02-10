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
		$data['editorials'] = $this->Client_journal_model->get_editorials();
		$data['popular'] = $this->Client_journal_model->top_five();
		$data['client_count'] = $this->Client_journal_model->all_client();
		$data['hits_count'] = $this->Client_journal_model->all_hits();
		$this->_LoadPage('common/body', $data);

		ip_info(); // store visitor information
	}

	/**
	 * Retrieve articles by journal id
	 *
	 * @param [int] $id
	 * @return void
	 */
	public function get_articles($id) {
		$output = $this->Client_journal_model->get_articles($id);
		echo json_encode($output);
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

		$download_id = $post['clt_journal_downloaded_id'];
		$recipient = $post['clt_email'];

		$post['clt_download_date_time'] = date('Y-m-d H:i:s');
		$post['clt_ip_address'] = $ip_address;

		$client_id = $this->Client_journal_model->save_client(array_filter($post));

	    $this->download_pdf_continue($download_id, $recipient, $client_id);
		
		// send email to author
		$this->notify_author($client_id, $download_id, 1); // 1 - downloaded article

		
		echo $client_id;
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
			$mail->AddAddress($author_email);
			$mail->AddBCC('gerardbalde15@gmail.com');

			$htmlBody = "<p>
			Dear " . $author . ",
			
			<br/><br/>

			This is to inform you that your research article entitled <strong>\"" . $article . "\"</strong>
			was downloaded by: <br/><br/> 

			Name        	 : <strong>" . $name . " " . $member . "</strong> <br/>
			Affiliation      : <strong>" . $affiliation . "</strong> <br/>
			Country          : <strong>" . $country . "</strong> <br/>
			Purpose          : <strong>" . $purpose . "</strong> <br/>
			Date             : <strong>" . $date . "</strong> <br/>
			Source	         : <a href='https://researchjournal.nrcp.dost.gov.ph/' target='_blank'>https://researchjournal.nrcp.dost.gov.ph/</a>
			
			<br/><br/>

			Thank you.

			<br/><br/>

		    ** THIS IS AN AUTOMATED MESSAGE PLEASE DO NOT REPLY **

			</p>";
			
			// email content
			$mail->Subject = "NRCP Journal Download";
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

		}else{ // articles cited
			$client_info = $this->Client_journal_model->get_client_info_citation($id);

			foreach ($client_info as $key => $row) {
				
				$author = $row->art_author;
				$name = $row->cite_name;
				$email = $row->cite_email;
				$date = $row->cite_date;
				$member = ($row->cite_member == 1) ? '(NRCP member)' : '';
				$article = $row->art_title;
			}

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
			$mail->AddAddress($author_email);
			$mail->AddBCC('gerardbalde15@gmail.com');

			$htmlBody = "<p>
			Dear " . $author . ",
			
			<br/><br/>

			This is to inform you that your research article entitled <strong>\"" . $article . "\"</strong>
			was cited by: <br/><br/> 

			Name        	 : <strong>" . $name . " " . $member ."</strong> <br/>
			Email            : <strong>" . $email . "</strong> <br/>
			Date             : <strong>" . $date . "</strong> <br/>
			Source	         : <a href='https://researchjournal.nrcp.dost.gov.ph/' target='_blank'>https://researchjournal.nrcp.dost.gov.ph/</a>
			
			<br/><br/>

			Thank you.

			<br/><br/>

			** THIS IS AN AUTOMATED MESSAGE PLEASE DO NOT REPLY **

			</p>";
			
			// email content
			$mail->Subject = "NRCP Journal Citation";
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
	}

	/**
	 * Send email with attached full text pdf to the client
	 *
	 * @param [id] $download_id		article id
	 * @param [string] $recipient		client's email
	 * @return void
	 */
	public function download_pdf_continue($download_id, $recipient, $client_id) {

		$ref = random_string('alnum', 8) . date('ymdhis');
		$fdbk_sess = array(
			'client_id' => $client_id,
			'fdbk_ref' => $ref,
		);
		$this->session->set_userdata($fdbk_sess);

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

		//email
		$nameuser = 'EJOURNAL Admin';
		$usergmail = 'nrcp.ejournal@gmail.com';
		$password = '<<NRCP!!ejournal>>';
		$mail = new PHPMailer;
		$mail->isSMTP();
		// $mail->SMTPDebug  = 2;
		// Set mailer to use SMTP
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

		if ($file_size >= 26214400) {
			$show_file = '*** Requested file exceeds 25MB. Please contact us. ***';
		} else {

			$show_file = $file_name;
			$mail->addAttachment($file_to_attach . $file_name);
		}

		$mail->AddAddress($recipient);

		$htmlBody = "<p style=\"font-family:Georgia, Times New Roman, Times, serif; font-size:14px\">
		Good Day!,<br /><br />

		Thank you for providing your information. Please, see the attached article you have requested.<br /><br /><br />
		Title       : <strong>" . $title . "</strong><br />
		Author      : <strong>" . $author . "</strong><br />
		Affiliation : <strong>" . $aff . "</strong><br />
		Email       : <strong>" . $aemail . "</strong><br />
		Filename    : <strong>" . $show_file . "</strong><br /><br /><br />

		Please leave your comments and feedback here:
		
		<a href='https://researchjournal.nrcp.dost.gov.ph/client/ejournal/customer_service'>DOST-NRCP Satisfaction Feedback Form</a>

		<br /><br />
		
		
		** THIS IS AN AUTOMATED MESSAGE PLEASE DO NOT REPLY **


		</p>";
		$mail->Subject = "eJournal Full Text pdf";
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
		$output = $this->Search_model->search_ejournal($filter, rawurldecode($keyword));

		$data['result'] = $output;
		$data['keyword'] = $keyword;
		$data['filter'] = $filter;

		$data['country'] = $this->Library_model->get_library('tblcountries');
		$data['main_title'] = "eJournal";
		$data['main_content'] = "client/search_results";
		$this->_LoadPage('common/body', $data);

		if (strlen(rawurldecode($keyword)) >= 3) {
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
		$output = $this->Client_journal_model->get_acoa_details($id, rawurldecode($data));
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
		$post['cite_name'] = $this->input->post('cite_name', TRUE);
		$post['cite_email'] = $this->input->post('cite_email', TRUE);
		$post['cite_member'] = $this->input->post('cite_member', TRUE);
		$post['cite_art_id'] = $id;
		$post['date_created'] = date('Y-m-d H:i:s');

		$last_insert_id = $this->Client_journal_model->save_citation(array_filter($post));

		echo $last_insert_id;

		// send email to author after citing his/her article
		$this->notify_author($last_insert_id, $id, 2); // 2 - cited article
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

	}

	public function submit_feedback() {


		$id = $this->session->userdata('client_id');  
		$ref = $this->session->userdata('fdbk_ref');
		
	
		$svc_fdbk_q_id      = $this->input->post('svc_fdbk_q_id[]', TRUE);       
        $svc_fdbk_q_answer  = $this->input->post('svc_fdbk_q_answer[]', TRUE);  
		
		if($svc_fdbk_q_id == ''){
			redirect('/');
		}else{
			
			$ids = array_unique($svc_fdbk_q_id);
			$data = array();

			$c=1;
			foreach($ids as $key => $q_id){

				$data= array( 
					'svc_fdbk_q_id'         =>  $q_id,                
					'svc_fdbk_q_answer'     =>  $svc_fdbk_q_answer[$c],
					'svc_fdbk_usr_id'       =>  $id,    
					'date_created'          =>  date('Y-m-d H:i:s'),
					'svc_fdbk_ref'          =>  $ref
					);
				$c++;
				
				$output = $this->CSF_model->save_csf($data);
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
