<?php if (!defined('BASEPATH')) {
	exit('No direct script access allowed');
}

// include(APPPATH . 'libraries/rest/RestController.php');
// include(APPPATH . 'libraries/rest/Format.php');

require APPPATH . 'libraries/RestController.php';
require APPPATH . 'libraries/Format.php';

use chriskacerguis\RestServer\RestController;

class Ejournal_Api extends RestController  {

	public function __construct() {
		parent::__construct();

        $this->load->database();
        $this->load->model('Article_model');
	}

    public function index_get($api_key)
    {
        // 8300815eeff4effb3cd2b644ad1663b7
        // echo hash('md5','ejournalapi2022');

        // http://localhost/ejournal/admin/ejournal_api/index_get/api_key/8300815eeff4effb3cd2b644ad1663b7
        $key = $this->get('api_key');

        if($key == '8300815eeff4effb3cd2b644ad1663b7'){

            $articles = $this->Article_model->get_all_articles();
            $this->response($articles, 200); 
              
        }else{
            echo 'API key is required';
        } 
    }
    

}

/* End of file Ejournal_Api.php */