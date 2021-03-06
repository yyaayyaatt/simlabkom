<?php
/* 
 * Generated by CRUDigniter v3.2 
 * www.crudigniter.com
 */

class User_model extends CI_Model
{
    //  function __construct()
    //  {
    //      parent::__construct();
    //  }

    private $table = "user";
    function cek($username, $password)
    {
        $this->db->where("username", $username);
        $this->db->where("password", $password);
        return $this->db->get("user");
    }
    function semua()
    {
        return $this->db->get("user");
    }
    function cekKode($kode)
    {
        $this->db->where("username", $kode);
        return $this->db->get("user");
    }
    function cekId($kode)
    {
        $this->db->where("id_user", $kode);
        return $this->db->get("user");
    }
    function getLoginData($usr, $psw)
    {
        $u = $usr;
        $p = $psw;
        $q_cek_login = $this->db->get_where('user', array('username' => $u, 'password' => $p));
        if (count($q_cek_login->result()) > 0) {
            foreach ($q_cek_login->result() as $qck) {
                foreach ($q_cek_login->result() as $qad) {
                    $sess_data['id_user'] = $qad->id_user;
                    $sess_data['logged_in'] = true;
                    $sess_data['username'] = $qad->username;
                    $sess_data['nama'] = $qad->nama;
                    $sess_data['level'] = $qad->level;
                    $sess_data['foto'] = $qad->foto;
                    $sess_data['tgl_daftar'] = $qad->tgl_daftar;
                    $this->session->set_userdata($sess_data);
                }
                redirect('dashboard');
            }
        } else {
            $this->session->set_flashdata('result_login', '<br>Username atau Password yang anda masukkan salah.');
            header('location:' . base_url() . 'login');
        }
    }
    /*
     * Get user by id_user
     */
    function get_user($id_user)
    {
        return $this->db->get_where('user', array('id_user' => $id_user))->row_array();
    }

    /*
     * Get all user
     */
    function get_all_user()
    {
        $this->db->order_by('id_user', 'desc');
        return $this->db->get('user')->result_array();
    }

    /*
     * function to add new user
     */
    function add_user($params)
    {
        $this->db->insert('user', $params);
        return $this->db->insert_id();
    }

    /*
     * function to update user
     */
    function update_user($id_user, $params)
    {
        $this->db->where('id_user', $id_user);
        return $this->db->update('user', $params);
    }

    /*
     * function to delete user
     */
    function delete_user($id_user)
    {
        return $this->db->delete('user', array('id_user' => $id_user));
    }
}
