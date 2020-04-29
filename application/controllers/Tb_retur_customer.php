<?php
/* 
 * Generated by CRUDigniter v3.2 
 * www.crudigniter.com
 */
 
class Tb_retur_customer extends CI_Controller{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Tb_retur_customer_model');
    } 

    /*
     * Listing of tb_retur_customer
     */
    function index()
    {
        $data['tb_retur_customer'] = $this->Tb_retur_customer_model->get_all_tb_retur_customer();
        
        $data['_view'] = 'tb_retur_customer/index';
        $this->load->view('layouts/main',$data);
    }

    /*
     * Adding a new tb_retur_customer
     */
    function add()
    {   
        if(isset($_POST) && count($_POST) > 0)     
        {   
            $params = array(
				'id_barang' => $this->input->post('id_barang'),
				'tgl_retur_cust' => $this->input->post('tgl_retur_cust'),
				'nama_cust' => $this->input->post('nama_cust'),
				'nama_petugas' => $this->input->post('nama_petugas'),
				'keterangan' => $this->input->post('keterangan'),
            );
            
            $tb_retur_customer_id = $this->Tb_retur_customer_model->add_tb_retur_customer($params);
            redirect('tb_retur_customer/index');
        }
        else
        {            
            $data['_view'] = 'tb_retur_customer/add';
            $this->load->view('layouts/main',$data);
        }
    }  

    /*
     * Editing a tb_retur_customer
     */
    function edit($id_retur_customer)
    {   
        // check if the tb_retur_customer exists before trying to edit it
        $data['tb_retur_customer'] = $this->Tb_retur_customer_model->get_tb_retur_customer($id_retur_customer);
        
        if(isset($data['tb_retur_customer']['id_retur_customer']))
        {
            if(isset($_POST) && count($_POST) > 0)     
            {   
                $params = array(
					'id_barang' => $this->input->post('id_barang'),
					'tgl_retur_cust' => $this->input->post('tgl_retur_cust'),
					'nama_cust' => $this->input->post('nama_cust'),
					'nama_petugas' => $this->input->post('nama_petugas'),
					'keterangan' => $this->input->post('keterangan'),
                );

                $this->Tb_retur_customer_model->update_tb_retur_customer($id_retur_customer,$params);            
                redirect('tb_retur_customer/index');
            }
            else
            {
                $data['_view'] = 'tb_retur_customer/edit';
                $this->load->view('layouts/main',$data);
            }
        }
        else
            show_error('The tb_retur_customer you are trying to edit does not exist.');
    } 

    /*
     * Deleting tb_retur_customer
     */
    function remove($id_retur_customer)
    {
        $tb_retur_customer = $this->Tb_retur_customer_model->get_tb_retur_customer($id_retur_customer);

        // check if the tb_retur_customer exists before trying to delete it
        if(isset($tb_retur_customer['id_retur_customer']))
        {
            $this->Tb_retur_customer_model->delete_tb_retur_customer($id_retur_customer);
            redirect('tb_retur_customer/index');
        }
        else
            show_error('The tb_retur_customer you are trying to delete does not exist.');
    }
    
}