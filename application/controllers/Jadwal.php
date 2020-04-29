<?php
/* 
 * Generated by CRUDigniter v3.2 
 * www.crudigniter.com
 */

class Jadwal extends CI_Controller
{
    function __construct()
    {
        parent::__construct();

        $this->load->model('Jadwal_model');
        $this->load->library('pdf');
    }

    /*
     * Listing of jadwal
     */
    function index()
    {
        if ($this->session->userdata("level") == NULL) {
            $this->load->view('login/login');
        } else {
            $data['jadwal'] = $this->Jadwal_model->get_all_jadwal();

            $data['_view'] = 'jadwal/index';
            if ($this->session->userdata("level") == 'admin') {
                $this->load->view('layouts/main', $data);
            } else {
                $this->load->view('layouts/main_user', $data);
            }
        }
    }

    function cetak()
    {
        $pdf = new FPDF('P', 'mm', 'A4');
        // membuat halaman baru
        $pdf->AddPage();
        // setting jenis font yang akan digunakan
        $pdf->SetFont('Arial', 'B', 16);
        // mencetak string 
        $pdf->SetFont('Arial', 'B', 14);
        $pdf->Image('resources/img/poltek.png', 10, 6, 28);
        $pdf->Cell(190, 7, 'UPT SISTEM INFORMASI', 0, 1, 'C');
        $pdf->SetFont('Arial', 'B', 18);
        $pdf->Cell(190, 7, 'POLITEKNIK HARAPAN BERSAMA TEGAL', 0, 1, 'C');
        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(190, 7, 'LAPORAN JADWAL', 0, 1, 'C');
        $pdf->SetFont('Arial', '', 9);
        //$pdf->Cell(190,6,'Periode '. date('d-m-Y', strtotime($tgl_awal)).' s/d '.date('d-m-Y', strtotime($tgl_ahir)),0,1,'C');

        // Memberikan space kebawah agar tidak terlalu rapat
        $pdf->Ln();
        $barang = $this->db->select('*');
        $barang = $this->db->from('jadwal a');
        $barang = $this->db->join('asisten b', 'b.id_asisten=a.id_asisten', 'left');
        $barang =  $this->db->join('jam c', 'c.id_jam=a.jam', 'left');
        $barang = $this->db->join('hari d', 'd.id_hari=a.hari', 'left');
        $barang = $this->db->order_by('b.nm_asisten', 'asc');
        $barang = $this->db->get()->result();

        $pdf->Cell(10, 7, '', 0, 1);
        $pdf->SetFont('Arial', 'B', 10);
        $pdf->Cell(15, 8, 'NO.', 1, 0, 'C');
        $pdf->Cell(40, 8, 'HARI', 1, 0, 'C');
        $pdf->Cell(45, 8, 'JAM', 1, 0, 'C');
        $pdf->Cell(90, 8, 'NAMA LENGKAP', 1, 1, 'C');
        $pdf->SetFont('Arial', '', 9);

        $X = 0;
        foreach ($barang as $row) {
            $X += 1;
            $pdf->Cell(15, 6, $X, 1, 0, 'C');
            $pdf->Cell(40, 6, $row->nm_hari, 1, 0);
            $pdf->Cell(45, 6, $row->nm_jam, 1, 0, 'C');
            $pdf->Cell(90, 6, $row->nm_asisten, 1, 1);
        }
        $pdf->Output();
    }
    /*
     * Adding a new jadwal
     */

    function add()
    {
        if (isset($_POST) && count($_POST) > 0) {
            $params = array(
                'id_asisten' => $this->input->post('id_asisten'),
                'jam' => $this->input->post('jam'),
                'hari' => $this->input->post('hari'),
            );

            $jadwal_id = $this->Jadwal_model->add_jadwal($params);
            redirect('jadwal/index');
        } else {
            $data['asisten'] = $this->Jadwal_model->get_all_asisten();
            $data['jam'] = $this->Jadwal_model->get_all_jam();
            $data['hari'] = $this->Jadwal_model->get_all_hari();
            $data['_view'] = 'jadwal/add';
            if ($this->session->userdata("level") == 'admin') {
                $this->load->view('layouts/main', $data);
            } else {
                $this->load->view('layouts/main_user', $data);
            }
        }
    }

    /*
     * Editing a jadwal
     */
    function edit($id_jadwal)
    {
        // check if the jadwal exists before trying to edit it
        $data['jadwal'] = $this->Jadwal_model->get_jadwal($id_jadwal);

        if (isset($data['jadwal']['id_jadwal'])) {
            if (isset($_POST) && count($_POST) > 0) {
                $params = array(
                    'id_asisten' => $this->input->post('id_asisten'),
                    'jam' => $this->input->post('jam'),
                    'hari' => $this->input->post('hari'),
                );

                $this->Jadwal_model->update_jadwal($id_jadwal, $params);
                redirect('jadwal/index');
            } else {
                $data['asisten'] = $this->Jadwal_model->get_all_asisten();
                $data['jam'] = $this->Jadwal_model->get_all_jam();
                $data['hari'] = $this->Jadwal_model->get_all_hari();
                $data['_view'] = 'jadwal/edit';
                if ($this->session->userdata("level") == 'admin') {
                    $this->load->view('layouts/main', $data);
                } else {
                    $this->load->view('layouts/main_user', $data);
                }
            }
        } else
            show_error('The jadwal you are trying to edit does not exist.');
    }

    /*
     * Deleting jadwal
     */
    function remove($id_jadwal)
    {
        $jadwal = $this->Jadwal_model->get_jadwal($id_jadwal);

        // check if the jadwal exists before trying to delete it
        if (isset($jadwal['id_jadwal'])) {
            $this->Jadwal_model->delete_jadwal($id_jadwal);
            redirect('jadwal/index');
        } else
            show_error('The jadwal you are trying to delete does not exist.');
    }
}
