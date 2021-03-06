<?php
/* 
 * Generated by CRUDigniter v3.2 
 * www.crudigniter.com
 */

class Satuan extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Satuan_model');
    }

    /*
     * Listing of tb_satuan
     */
    function index()
    {
        if ($this->session->userdata("level")!=NULL) {
            $jumlah_data = $this->Satuan_model->jumlah_data();
            $config['base_url'] = base_url() . 'satuan/index/';
            $config['total_rows'] = $jumlah_data;
            $config['per_page'] = 10;

            // Pagination link format 
            $config['num_tag_open'] = '<li>';
            $config['num_tag_close'] = '</li>';
            $config['cur_tag_open'] = '<li class="active"><a href="javascript:void(0);">';
            $config['cur_tag_close'] = '</a></li>';
            $config['next_link'] = 'Next';
            $config['prev_link'] = 'Prev';
            $config['next_tag_open'] = '<li class="pg-next">';
            $config['next_tag_close'] = '</li>';
            $config['prev_tag_open'] = '<li class="pg-prev">';
            $config['prev_tag_close'] = '</li>';
            $config['first_tag_open'] = '<li>';
            $config['first_tag_close'] = '</li>';
            $config['last_tag_open'] = '<li>';
            $config['last_tag_close'] = '</li>';

            $from = $this->uri->segment(3);
            $this->pagination->initialize($config);
            $data['satuan'] = $this->Satuan_model->get_all_satuan($config['per_page'], $from);
            // $data['barang'] = $this->Barang_model->get_all_barang();

            $data['_view'] = 'satuan/index';
            if ($this->session->userdata("level") == 'admin') {
                $this->load->view('layouts/main', $data);
            } else {
                $this->load->view('layouts/main_user', $data);
            }
        } else {
            $this->load->view('login/login');
        }
    }

    /*
     * Adding a new tb_satuan
     */
    function add()
    {
        if (isset($_POST) && count($_POST) > 0) {
            $params = array(
                'nm_satuan' => $this->input->post('nm_satuan'),
            );

            $satuan_id = $this->Satuan_model->add_satuan($params);
            redirect('satuan/index');
        } else {
            $data['_view'] = 'satuan/add';
            if ($this->session->userdata("level") == 'admin') {
                $this->load->view('layouts/main', $data);
            } else {
                $this->load->view('layouts/main_user', $data);
            }
        }
    }

    /*
     * Editing a tb_satuan
     */
    function edit($id_satuan)
    {
        // check if the tb_satuan exists before trying to edit it
        $data['satuan'] = $this->Satuan_model->get_satuan($id_satuan);

        if (isset($data['satuan']['id_satuan'])) {
            if (isset($_POST) && count($_POST) > 0) {
                $params = array(
                    'nm_satuan' => $this->input->post('nm_satuan'),
                );

                $this->Satuan_model->update_satuan($id_satuan, $params);
                redirect('satuan/index');
            } else {
                $data['_view'] = 'satuan/edit';
                if ($this->session->userdata("level") == 'admin') {
                $this->load->view('layouts/main', $data);
            } else {
                $this->load->view('layouts/main_user', $data);
            }
            }
        } else
            show_error('The tb_satuan you are trying to edit does not exist.');
    }

    /*
     * Deleting tb_satuan
     */
    function remove($id_satuan)
    {
        $satuan = $this->Satuan_model->get_satuan($id_satuan);

        // check if the tb_satuan exists before trying to delete it
        if (isset($satuan['id_satuan'])) {
            $this->Satuan_model->delete_satuan($id_satuan);
            redirect('satuan/index');
        } else
            show_error('The tb_satuan you are trying to delete does not exist.');
    }
}
