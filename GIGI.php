
<?php
defined('BASEPATH') or exit('No direct script access allowed');

class GIGI extends CI_Controller{
  function __construct(){
    parent::__construct();
    $this->load->model('gigi_model');
    
  }

  public function index(){
    $data['Poli_g']=$this->gigi_model->getAll();
    $this->template->views('crud gigi/home_gigi',$data);
  }
   
}
?>
