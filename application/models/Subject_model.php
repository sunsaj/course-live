<?php
	class Subject_model extends CI_Model{
		public function __construct(){
			$this->load->database();
		}

		public function get_subjects(){
			$id = $this->session->userdata['user_id'];
			$this->db->select('subject.*,syllabus.file');
			$this->db->from('subject');
			$this->db->join('class_sub','class_sub.sub_id = subject.sub_id');
			$this->db->join('class','class.c_id = class_sub.class_id');
			$this->db->join('student','student.c_id = class.c_id');
			$this->db->join('syllabus','syllabus.sub_id = subject.sub_id');
			$this->db->where('student.usr_id',$id);
			$query = $this->db->get ();
    		return $query->result_array();
		}



		public function get_allsubjects(){
			$id = $this->session->userdata['user_id'];
			if($id==1) {
				$this->db->select('subject.*,syllabus.file');
				$this->db->from('subject');
				$this->db->join('syllabus','syllabus.sub_id = subject.sub_id');
				$query = $this->db->get ();
				return $query->result_array();

			}
			else{

				$this->db->select('subject.*,syllabus.file');
				$this->db->from('subject');
				$this->db->join('teacher','teacher.dept = subject.branch');
				$this->db->join('syllabus','syllabus.sub_id = subject.sub_id');
				$this->db->where('teacher.usr_id',$id);
				$query = $this->db->get ();
	    		return $query->result_array();
	    	}
		}




		public function get_notes($id){
			
			$this->db->select('notes.*,subject.name');
			$this->db->from('notes');
			$this->db->join('subject','notes.sub_id = subject.sub_id');
			$this->db->where('subject.sub_id',$id);
			$query = $this->db->get ();

    		return $query->result_array();
		}



		public function get_allnotes(){
			$id = $this->session->userdata['user_id'];
			$this->db->select('subject.*,syllabus.file');
			$this->db->from('subject');
			$this->db->join('teacher','teacher.dept = subject.branch');
			$this->db->join('syllabus','syllabus.sub_id = subject.sub_id');
			$this->db->where('teacher.usr_id',$id);
			$query = $this->db->get ();
    		return $query->result_array();
		}
	}
