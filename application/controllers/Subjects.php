<?php
	class Subjects extends CI_Controller{

		public function syllabus(){
			if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}
			
			$data['title'] = 'Syllabus';

			$this->load->view('templates/header');
			$this->load->view('subjects/view_s', $data);
			$this->load->view('templates/footer');
		}

		public function notes(){
			if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}
			
			$data['title'] = 'Notes';

			$this->load->view('templates/header');
			$this->load->view('subjects/view_n', $data);
			$this->load->view('templates/footer');
		}



	}