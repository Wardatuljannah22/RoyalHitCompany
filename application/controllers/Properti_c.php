<?php

class Properti_c extends CI_Controller
{
	public function __construct(){
		parent::__construct();
		$this->load->model('Properti_m');
	}

	public function index(){
		$properti = $this->Properti_m->getAll3();
		$data['properti'] = $properti;

		$this->load->view('parts/header', $data);
		$this->load->view('pages/Properti_v', $data);
		$this->load->view('parts/footer', $data);
	}

	public function detail($id){
		$properti = $this->Properti_m->getAll3();
		$data['properti'] = $properti;

		$detail = $this->Properti_m->detail_data($id);
		$data['detail'] = $detail;

		$this->load->view('parts/header', $data);
		$this->load->view('pages/Detailproperti_v', $data);
		$this->load->view('parts/footer', $data);
	}
}