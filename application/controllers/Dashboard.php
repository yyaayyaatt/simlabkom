<?php
/* 
 * Generated by CRUDigniter v3.2 
 * www.crudigniter.com
 */

class Dashboard extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Dashboard_model');
    }

    function index()
    {
        if ($this->session->userdata("level") == 'admin') {
            $data['barang'] = $this->Dashboard_model->get_all_barang();
            $data['ruangan'] = $this->Dashboard_model->get_all_ruangan();
            $data['kehilangan'] = $this->Dashboard_model->get_all_kehilangan();
            $data['peminjaman'] = $this->Dashboard_model->get_all_peminjaman();
            $data['asisten'] = $this->Dashboard_model->get_all_asisten();
            $data['_view'] = 'dashboard';
            $this->load->view('layouts/main', $data);
        } else if ($this->session->userdata("level") == 'user') {
            $data['barang'] = $this->Dashboard_model->get_all_barang();
            $data['ruangan'] = $this->Dashboard_model->get_all_ruangan();
            $data['kehilangan'] = $this->Dashboard_model->get_all_kehilangan();
            $data['peminjaman'] = $this->Dashboard_model->get_all_peminjaman();
            $data['asisten'] = $this->Dashboard_model->get_all_asisten();
            $data['_view'] = 'dashboard';
            $this->load->view('layouts/main_user', $data);
        } else {
            $this->load->view('login/login');
        }
    }

}