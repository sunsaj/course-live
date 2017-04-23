<?php

class Notice_model extends CI_Model{
	public function __construct() {
		$this->load->database();
	}

	public function get_notices($slug = FALSE) {
		if($slug === FALSE){
			$this->db->order_by('n_id','DESC');
			$query = $this->db->get('notice');
			return $query->result_array();
		}

		$query = $this->db->get_where('notice',array('slug' => $slug));
		return $query->row_array();
	}

	public function create_notice(){
			$slug = url_title($this->input->post('title'));

			$data = array(
				'title' => $this->input->post('title'),
				'slug' => $slug,
				'body' => $this->input->post('body'),
				'created_by' => $this->session->userdata('user_id'),
								
			);

			return $this->db->insert('notice', $data);
		}

	 public function insertfiles($data = array()){
        $insert = $this->db->insert_batch('notice_file',$data);
        return $insert?true:false;
    	}


		public function delete_notice($id){
		
		$files = $this->db->get('notice_file')->result_array();

		if(!empty($files))
		{
			foreach ($files as $file) {
					if($file['n_id']==$id){
				
							
						$path = FCPATH.'uploads/files/'.$file['f_name'];
							unlink($path);
					}
			}

		}	
			


			$this->db->where('n_id',$id);
			$this->db->delete('notice_file');
			$this->db->where('n_id', $id);
			$this->db->delete('notice');
			return true;
		}

		public function update_notice(){
			$slug = url_title($this->input->post('title'));

			$data = array(
				'title' => $this->input->post('title'),
				'slug' => $slug,
				'body' => $this->input->post('body'),
				
			);

			$this->db->where('n_id', $this->input->post('id'));
			return $this->db->update('notice', $data);
		}

		public function getRows($id = ''){

	        $this->db->select('f_name');
	        $this->db->from('notice_file');
	        

	            $this->db->where('n_id',$id);
	            $this->db->order_by('n_f_id','asc');
	            $query = $this->db->get();
	            $result = $query->result_array();
	        
	        return !empty($result)?$result:false;
	    }


}