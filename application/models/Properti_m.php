<?php

class Properti_m extends CI_Model
{
	public function getAll3(){
		return $this->db->get('tb_properti');
	}

	public function detail_data($id = NULL){
		$query = $this->db->get_where('tb_properti', array('id_properti' => $id))-> row();
		return $query; 
	}
}