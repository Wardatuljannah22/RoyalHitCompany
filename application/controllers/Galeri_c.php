<?php

class Galeri_c extends CI_Controller
{
	public function __construct(){
		parent::__construct();
		$this->load->model('Galeri_m');		
	}

	public function index(){
		$galeri = $this->Galeri_m->getAll1();
		$data['galeri'] = $galeri;

		$this->load->view('parts/header', $data);
		$this->load->view('pages/Galeri_v', $data);
		$this->load->view('parts/footer', $data);
	}
}