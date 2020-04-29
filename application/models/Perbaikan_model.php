<?php
/* 
 * Generated by CRUDigniter v3.2 
 * www.crudigniter.com
 */

class Perbaikan_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    /*
     * Get tb_barang by id_barang
     */
    function get_perbaikan($id_perbaikan)
    {
        return $this->db->get_where('perbaikan', array('id_perbaikan' => $id_perbaikan))->row_array();
    }

    function data($number, $offset)
    {
        return $query = $this->db->get('perbaikan', $number, $offset)->result();
    }

    function jumlah_data()
    {
        return $this->db->get('perbaikan')->num_rows();
    }
    /*
     * Get all perbaikan
     */
    function get_all_perbaikan($number, $offset)
    {
        $this->db->select('*');
        $this->db->from('perbaikan a');
        $this->db->join('perawatan b', 'b.id_perawatan=a.id_perawatan', 'left');
        $this->db->join('asisten c', 'c.id_asisten=a.id_cek', 'left');
        $this->db->join('inventaris d', 'd.id_inventaris=b.id_inventaris', 'left');
        $this->db->join('barang e', 'e.id_barang=d.id_barang', 'left');
        $this->db->where('b.perbaikan', 'sudah');
        $this->db->order_by('a.id_perbaikan', 'asc');
        $this->db->limit($number, $offset);
        $query = $this->db->get();
        return $query->result_array();

        //    $this->db->order_by('id_perbaikan', 'desc');
        //    return $this->db->get('perbaikan')->result_array();
    }

    function jumlah_data_by($keyword)
    {
        $this->db->select('*');
        $this->db->from('perbaikan a');
        $this->db->join('perawatan b', 'b.id_perawatan=a.id_perawatan', 'left');
        $this->db->join('asisten c', 'c.id_asisten=a.id_cek', 'left');
        $this->db->join('inventaris d', 'd.id_inventaris=b.id_inventaris', 'left');
        $this->db->join('barang e', 'e.id_barang=d.id_barang', 'left');
        $this->db->like('b.id_inventaris', $keyword);
        $this->db->or_like('e.nm_barang', $keyword);
        $this->db->or_like('b.diagnosa', $keyword);
        $this->db->order_by('a.id_perbaikan', 'asc');
        $query = $this->db->get();
        return $query->num_rows();
    }

    function search($number, $offset, $keyword)
    {
        $this->db->select('*');
        $this->db->from('perbaikan a');
        $this->db->join('perawatan b', 'b.id_perawatan=a.id_perawatan', 'left');
        $this->db->join('asisten c', 'c.id_asisten=a.id_cek', 'left');
        $this->db->join('inventaris d', 'd.id_inventaris=b.id_inventaris', 'left');
        $this->db->join('barang e', 'e.id_barang=d.id_barang', 'left');
        $this->db->like('b.id_inventaris', $keyword);
        $this->db->or_like('e.nm_barang', $keyword);
        $this->db->or_like('b.diagnosa', $keyword);
        $this->db->order_by('a.id_perbaikan', 'asc');
        $this->db->limit($number, $offset);
        $query = $this->db->get();
        return $query->num_rows();
    }
    /*
     * function to add new perbaikan
     */
    function add_perbaikan($params)
    {
        $this->db->insert('perbaikan', $params);
        return $this->db->insert_id();
    }

    function get_perawatan($perbaikan)
    {
        $this->db->select('*');
        $this->db->from('perawatan a');
        $this->db->join('asisten c', 'c.id_asisten=a.id_cek', 'left');
        $this->db->join('inventaris d', 'd.id_inventaris=a.id_inventaris', 'left');
        $this->db->join('barang e', 'e.id_barang=d.id_barang', 'left');
        $this->db->where('a.perbaikan', $perbaikan);
        $query = $this->db->get();
        return $query->result_array();
    }

    function get_all_user()
    {
        $this->db->order_by('id_user', 'asc');
        return $this->db->get('user')->result_array();
    }

    function get_all_asisten()
    {
        $this->db->order_by('id_asisten', 'asc');
        return $this->db->get('asisten')->result_array();
    }

    /*
     * function to update perbaikan
     */
    function update_perbaikan($id_perbaikan, $params)
    {
        $this->db->where('id_perbaikan', $id_perbaikan);
        return $this->db->update('perbaikan', $params);
    }

    function update_perawatan($id_perawatan, $params)
    {
        $this->db->where('id_perawatan', $id_perawatan);
        return $this->db->update('perawatan', $params);
    }

    /*
     * function to delete perbaikan
     */
    function delete_perbaikan($id_perbaikan)
    {
        return $this->db->delete('perbaikan', array('id_perbaikan' => $id_perbaikan));
    }
}
