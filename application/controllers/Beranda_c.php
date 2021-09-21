<?php

class Beranda_c extends CI_Controller
{
	public function __construct(){
		parent::__construct();
		$this->load->model('Beranda_m');
		$this->load->model('Properti_m');
	}

	public function index(){
		$slider = $this->Beranda_m->getAll1();
		$data['slider'] = $slider;

		$tentang = $this->Beranda_m->getAll2();
		$data['tentang'] = $tentang;

		$properti = $this->Properti_m->getAll3();
		$data['properti'] = $properti;

		$this->load->view('parts/header', $data);
		$this->load->view('pages/Beranda_v', $data);
		$this->load->view('parts/footer', $data);
	}
}