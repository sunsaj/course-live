<?php
	class Notices extends CI_Controller {
		public function index () {
			$data['title'] = 'Notices';
			if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}

			$data['notices'] = $this->notice_model->get_notices();
			$this->load->view('templates/header');
			$this->load->view('notices/index',$data);
			$this->load->view('templates/footer');
		}


		public function view($slug = NULL){
			if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}
			$data['notice'] = $this->notice_model->get_notices($slug);
			$id = $data['notice']['n_id'];

			$data['files'] = $this->notice_model->getRows($id);
			

			if(empty($data['notice'])){
				show_404();
			}

			$data['title'] = $data['notice']['title'];

			$this->load->view('templates/header');
			$this->load->view('notices/view', $data);
			$this->load->view('templates/footer');
	}



		public function create(){
		
			$data['title'] = 'Create Notice';
			if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}

			
			$this->form_validation->set_rules('title', 'Title', 'required');
			$this->form_validation->set_rules('body', 'Body', 'required');

			if($this->form_validation->run() === FALSE){
				$this->load->view('templates/header');
				$this->load->view('notices/create', $data);
				$this->load->view('templates/footer');
			} else {

					$slug = url_title($this->input->post('title'));

					$this->notice_model->create_notice();

					

					$id = $this->notice_model->get_notices($slug)['n_id'];

				
					 if(!empty($_FILES['userFiles']['name'])){
	            $filesCount = count($_FILES['userFiles']['name']);
	            for($i = 0; $i < $filesCount; $i++){
	                $_FILES['userFile']['name'] = $_FILES['userFiles']['name'][$i];
	                $_FILES['userFile']['type'] = $_FILES['userFiles']['type'][$i];
	                $_FILES['userFile']['tmp_name'] = $_FILES['userFiles']['tmp_name'][$i];
	                $_FILES['userFile']['error'] = $_FILES['userFiles']['error'][$i];
	                $_FILES['userFile']['size'] = $_FILES['userFiles']['size'][$i];

	                $uploadPath = 'uploads/files/';
	                $config['upload_path'] = $uploadPath;
	                $config['allowed_types'] = '*';
	                
	                $this->load->library('upload', $config);
	                $this->upload->initialize($config);
	                if($this->upload->do_upload('userFile')){
	                    $fileData = $this->upload->data();
	                    $uploadData[$i]['f_name'] = $fileData['file_name'];
	                    $uploadData[$i]['n_id'] = $id;
	                 
	                }
				}


				 if(!empty($uploadData)){
                //Insert file information into the database
                $insert = $this->notice_model->insertfiles($uploadData);
                $statusMsg = $insert?'Files uploaded successfully.':'Some problem occurred, please try again.';
                $this->session->set_flashdata('statusMsg',$statusMsg);
            	}

				


		
				// Set message
				$this->session->set_flashdata('notice_created', 'Your notice has been created');

				redirect('notices');
			}
			
		}

	}




		public function delete($id){
			// Check login
			if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}

			$this->notice_model->delete_notice($id);

			// Set message
			$this->session->set_flashdata('notice_deleted', 'Your notice has been deleted');

			redirect('notices');
		}


		public function edit($slug){
			// Check login
			if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}



			$data['notice'] = $this->notice_model->get_notices($slug);

			// Check user
			//if($this->session->userdata('user_id') != $this->notice_model->get_notices($slug)['user_id']){
				//redirect('notices');

			//}

			
			if(empty($data['notice'])){
				show_404();
			}

			$data['title'] = 'Edit Notice';

			$this->load->view('templates/header');
			$this->load->view('notices/edit', $data);
			$this->load->view('templates/footer');
		}

		public function update(){
			// Check login
			if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}

			$this->notice_model->update_notice();

			// Set message
			$this->session->set_flashdata('notice_updated', 'Your notice has been updated');

			redirect('notices');
		}

}
