<?php
/* 
 * Generated by CRUDigniter v3.2 
 * www.crudigniter.com
 */
 
class Tb_penerimaan_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get tb_penerimaan by id_pemasukan
     */
    function get_tb_penerimaan($id_pemasukan)
    {
        return $this->db->get_where('tb_penerimaan',array('id_pemasukan'=>$id_pemasukan))->row_array();
    }
        
    /*
     * Get all tb_penerimaan
     */
    function get_all_tb_penerimaan()
    {
        $this->db->order_by('id_pemasukan', 'desc');
        return $this->db->get('tb_penerimaan')->result_array();
    }
        
    /*
     * function to add new tb_penerimaan
     */
    function add_tb_penerimaan($params)
    {
        $this->db->insert('tb_penerimaan',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update tb_penerimaan
     */
    function update_tb_penerimaan($id_pemasukan,$params)
    {
        $this->db->where('id_pemasukan',$id_pemasukan);
        return $this->db->update('tb_penerimaan',$params);
    }
    
    /*
     * function to delete tb_penerimaan
     */
    function delete_tb_penerimaan($id_pemasukan)
    {
        return $this->db->delete('tb_penerimaan',array('id_pemasukan'=>$id_pemasukan));
    }
}