<?php

class Jadwal_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    function get_jadwal($id_jadwal)
    {
        return $this->db->get_where('jadwal',array('id_jadwal'=>$id_jadwal))->row_array();
    }
        
    public function get_all_jadwal()
    {
		$this->db->select('*');
        $this->db->from('jadwal a');
        $this->db->join('asisten b', 'b.id_asisten=a.id_asisten', 'left');
        $this->db->join('jam c', 'c.id_jam=a.jam', 'left');
        $this->db->join('hari d', 'd.id_hari=a.hari', 'left');
        $this->db->order_by('a.hari','asc');         
        $query = $this->db->get(); 
        return $query->result_array();
    }   
    /*
     * function to add new jadwal
     */
    function add_jadwal($params)
    {
        $this->db->insert('jadwal',$params);
        return $this->db->insert_id();
    }
    
    function get_all_jam()
    {
        $this->db->order_by('id_jam', 'asc');
        return $this->db->get('jam')->result_array();
    }
	
    function get_all_hari()
    {
        $this->db->order_by('id_hari', 'asc');
        return $this->db->get('hari')->result_array();
    }
    function get_all_asisten()
    {
        $this->db->order_by('id_asisten', 'asc');
        return $this->db->get('asisten')->result_array();
    }
    /*
     * function to update jadwal
     */
    function update_jadwal($id_jadwal,$params)
    {
        $this->db->where('id_jadwal',$id_jadwal);
        return $this->db->update('jadwal',$params);
    }
    
    /*
     * function to delete jadwal
     */
    function delete_jadwal($id_jadwal)
    {
        return $this->db->delete('jadwal',array('id_jadwal'=>$id_jadwal));
    }
}
