<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Poli_g extends CI_Controller {
  function __construct(){
    parent::__construct();
    $this->load->model('gigi_model');
  }

  public function index(){
    $data['Poli_g'] = $this->gigi_model->getAll()->result();
    $this->template->views('crud gigi/home_gigi', $data);
  }

  public function tambah(){
    $this->template->views('crud gigi/tambah_gigi');
  }

  public function input(){
    $NIK = $this->input->post('NIK');
    $Tanggal = $this->input->post('Tanggal');
    $Nama_Pasien = $this->input->post('Nama_Pasien');
    $Jenis_Poli = $this->input->post('Jenis_Poli');

    $data = array(
      'NIK' => $NIK,
      'Tanggal' => $Tanggal,
      'Nama_Pasien' => $Nama_Pasien,
      'Jenis_Poli' => $Jenis_Poli
    );
    $this->gigi_model->input_data($data,'poli_gigi');
    redirect('Poli_g/index');
  }

  public function edit($NIK){
    $where = array('NIK' => $NIK);
    $data['Nama_Pasien'] = $this->gigi_model->edit_data($where,'poli_gigi')->result();
    $data['Jenis_Poli'] = $this->gigi_model->edit_data($where,'poli_gigi')->result();
    $this->template->views('crud_gigi/edit_gigi',$data);
  }

  public function update(){
    $id = $this->input->post('NIK');
    $Nama_Pasien = $this->input->post('Nama_Pasien');
    $Jenis_Poli = $this->input->post('Jenis_Poli');
  
    $data = array(
      'NIK' => $NIK,
      'Nama_Pasien' => $Nama_Pasien,
      'Jenis_Poli' => $Jenis_Poli,
      
    );

    $where = array('NIK' => $NIK);
    $this->gigi_model->update_data($where,$data,'poli_gigi');
    redirect('Poli_g');
  }

  public function hapus($id){
    $where = array('NIK' => $NIK);
    $this->gigi_model->hapus_data($where,'poli_gigi');
    redirect('Poli_g/index');
  }

// public function index(){
//     $this->load->model('Mahasiswa_model');
//     $data['Mahasiswa'] = $this->Mahasiswa_model->get_data();
//     $this->load->view('view_mahasiswa',$data);
// }
// public function index(){
//     $this->load->model('prodi_model');
//     $data['Prodi'] = $this->prodi_model->get_data();
//     $this->load->view('view_prodi',$data);
// }
// public function angkatan(){
//     $this->load->model('angkatan_model');
//     $data['Angkatan'] = $this->angkatan_model->get_data();
//     $this->load->view('view_angkatan',$data);
// }



}
