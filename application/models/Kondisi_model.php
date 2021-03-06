<?php
/* 
 * Generated by CRUDigniter v3.2 
 * www.crudigniter.com
 */
 
class Kondisi_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get tb_kondisi by id_kondisi
     */
    function get_kondisi($id_kondisi)
    {
        return $this->db->get_where('kondisi',array('id_kondisi'=>$id_kondisi))->row_array();
    }
        
    /*
     * Get all tb_kondisi
     */
    function get_all_kondisi()
    {
        $this->db->order_by('id_kondisi', 'desc');
        return $this->db->get('kondisi')->result_array();
    }
        
    /*
     * function to add new tb_kondisi
     */
    function add_kondisi($params)
    {
        $this->db->insert('kondisi',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update tb_kondisi
     */
    function update_kondisi($id_kondisi,$params)
    {
        $this->db->where('id_kondisi',$id_kondisi);
        return $this->db->update('kondisi',$params);
    }
    
    /*
     * function to delete tb_kondisi
     */
    function delete_kondisi($id_kondisi)
    {
        return $this->db->delete('kondisi',array('id_kondisi'=>$id_kondisi));
    }
}
