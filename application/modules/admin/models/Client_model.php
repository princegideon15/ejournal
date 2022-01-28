<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * File Name: Client_model.php
 * ----------------------------------------------------------------------------------------------------
 * Purpose of this file:
 * To manage client functions
 * ----------------------------------------------------------------------------------------------------
 * System Name: Online Research Journal System
 * ----------------------------------------------------------------------------------------------------
 * Author: Gerard Paul D. Balde
 * ----------------------------------------------------------------------------------------------------
 * Date of revision: Sep 30, 2019
 * ----------------------------------------------------------------------------------------------------
 * Copyright Notice:
 * Copyright (C) 2018 by the Department of Science and Technology - National Research Council of the Philiipines
 */

class Client_model extends CI_Model {
	private $clients = 'tblclients';
	private $articles = 'tblarticles';
	public function __construct() {
		parent::__construct();
		$this->load->database(ENVIRONMENT);
	}

	/**
	 * this function save client information
	 *
	 * @param   array  $post  client data
	 *
	 * @return  int         affected rows
	 */
	public function save_client($post) {
		$this->db->insert($this->clients, $post);
		return $this->db->affected_rows();
	}

	/**
	 * this function retreive all client information
	 *
	 * @return  array  all client information
	 */
	public function get_clients() {
		$this->db->select('*');
		$this->db->from($this->clients . ' a');
		$this->db->join($this->articles . ' b', 'a.clt_journal_downloaded_id = b.art_id');
		$this->db->order_by('clt_download_date_time', 'desc');
		$query = $this->db->get();
		return $query->result();
	}

	public function get_clients_graph(){
		$this->db->select('(SELECT sex_name FROM tblsex WHERE sex_id LIKE clt_sex) as sex, count(*) as total');
		$this->db->from($this->clients . ' a');
		$this->db->join($this->articles . ' b', 'a.clt_journal_downloaded_id = b.art_id');
		$this->db->where('a.clt_sex > 0');
		$this->db->group_by('a.clt_sex');
		$query = $this->db->get();
		return $query->result();
		// return $this->db->last_query();
	}

	/**
	 * this function count total clients
	 *
	 * @return  int  totla count of clients
	 */
	public function client_count() {
		$this->db->select('*');
		$this->db->from($this->clients);
		$query = $this->db->get();
		return $query->num_rows();
	}
}
?>