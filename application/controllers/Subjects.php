<?php
	class Subjects extends CI_Controller{

		public function syllabus(){
			if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}

			if($this->session->userdata('role')==1){
				$data['title'] = 'Syllabus';
				$data['subjects'] = $this->subject_model->get_subjects();

				$this->load->view('templates/header');
				$this->load->view('subjects/view_s', $data);
				$this->load->view('templates/footer');
				}

			else if($this->session->userdata('role')==2){

				$data['title'] = 'Syllabus';
				$data['subjects'] = $this->subject_model->get_allsubjects();

				$this->load->view('templates/header');
				$this->load->view('subjects/view_s', $data);
				$this->load->view('templates/footer');
				}

			else {

				$data['title'] = 'Syllabus';
				$data['subjects'] = $this->subject_model->get_allsubjects();

				$this->load->view('templates/header');
				$this->load->view('subjects/view_s', $data);
				$this->load->view('templates/footer');

			}
		}

			
			
		

		public function notes(){
			if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}
			
			if($this->session->userdata('role')==1){
				$data['title'] = 'Notes';
				$data['subjects'] = $this->subject_model->get_subjects();


				$this->load->view('templates/header');
				$this->load->view('subjects/view_n', $data);
				$this->load->view('templates/footer');
				}

			else{

				$data['title'] = 'Notes';
				$data['subjects'] = $this->subject_model->get_allnotes();

				$this->load->view('templates/header');
				$this->load->view('subjects/view_n', $data);
				$this->load->view('templates/footer');
				}
				
		}

		public function getnotes(){
			if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}
			$id = $this->input->post('sub_id');

			$data['notes'] = $this->subject_model->get_notes($id);
			
				$this->load->view('templates/header');
				$this->load->view('subjects/view_notes', $data);
				$this->load->view('templates/footer');

		}
}