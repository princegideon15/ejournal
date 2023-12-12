<?php
class Errors extends CI_Controller {
    public function forbidden() {
        // Add your custom redirection logic here
        // redirect('custom/error/page', 'refresh');
        redirect('www.facebook.com');
    }
}