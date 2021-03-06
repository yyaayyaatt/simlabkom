<?php
/* 
 * Generated by CRUDigniter v3.2 
 * www.crudigniter.com
 */

class User extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata("nama")) {
            $this->load->view('login/login');
        }
        $this->load->model('User_model');
    }

    /*
     * Listing of user
     */
    function index()
    {
        $data['user'] = $this->User_model->get_all_user();

        $data['_view'] = 'user/index';
        if ($this->session->userdata("level") == 'admin') {
                $this->load->view('layouts/main', $data);
            } else {
                $this->load->view('layouts/main_user', $data);
            }
    }

    private function _uploadImage()
    {
        $config['upload_path']          = 'resources/img/';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['file_name']            = $this->input->post('nama') . '-' . $this->input->post('level');
        $config['overwrite']            = true;
        $config['max_size']             = 1024; // 1MB
       $this->load->library('upload', $config);
        if ($this->upload->do_upload('foto')) {
            return $this->upload->data('file_name');
        }

        return null;
    }
    /*
     * Adding a new user
     */
    function add()
    {
        if (isset($_POST) && count($_POST) > 0) {
            $params = array(
                'password' => md5($this->input->post('password')),
                'nama' => $this->input->post('nama'),
                'foto' => $this->input->post('foto'),
                'username' => $this->input->post('username'),
                'level' => $this->input->post('level'),
                'foto' =>  $this->_uploadImage()
            );

            $user_id = $this->User_model->add_user($params);
            redirect('user/index');
        } else {
            $data['_view'] = 'user/add';
            if ($this->session->userdata("level") == 'admin') {
                $this->load->view('layouts/main', $data);
            } else {
                $this->load->view('layouts/main_user', $data);
            }
        }
    }

    /*
     * Editing a user
     */
    function edit($id_user)
    {
        // check if the user exists before trying to edit it
        $data['user'] = $this->User_model->get_user($id_user);

        if (isset($data['user']['id_user'])) {
            if (isset($_POST) && count($_POST) > 0) {
                $params = array(
                    'password' => md5($this->input->post('password')),
                    'nama' => $this->input->post('nama'),
                    'foto' => $this->input->post('foto'),
                    'username' => $this->input->post('username'),
                    'level' => $this->input->post('level'),
                    'foto' =>  $this->_uploadImage()
                );

                $this->User_model->update_user($id_user, $params);
                redirect('user/index');
            } else {
                $data['_view'] = 'user/edit';
                if ($this->session->userdata("level") == 'admin') {
                $this->load->view('layouts/main', $data);
            } else {
                $this->load->view('layouts/main_user', $data);
            }
            }
        } else
            show_error('The user you are trying to edit does not exist.');
    }

    /*
     * Deleting user
     */
    function remove($id_user)
    {
        $user = $this->User_model->get_user($id_user);

        // check if the user exists before trying to delete it
        if (isset($user['id_user'])) {
            $this->User_model->delete_user($id_user);
            redirect('user/index');
        } else
            show_error('The user you are trying to delete does not exist.');
    }
}
