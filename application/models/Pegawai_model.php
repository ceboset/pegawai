<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pegawai_model extends CI_Model
{
    public function getAllPegawai()
    {
        return $this->db->get('pegawai')->result_array();
    }

    public function tambahDataPegawai()
    {
        $data = [
            "nama" => $this->input->post('nama',  true),
            "jk" => $this->input->post('jk',  true),
            "tempat_lahir" => $this->input->post('tempat_lahir',  true),
            "tgl_lahir" => $this->input->post('tgl_lahir',  true),
            "nrp" => $this->input->post('nrp',  true),
            "nip" => $this->input->post('nip',  true),
            "jabatan" => $this->input->post('jabatan',  true),
            "pangkat" => $this->input->post('pangkat',  true),
            "gol" => $this->input->post('gol',  true),
            "tmt" => $this->input->post('tmt1',  true)
        ];

        $this->db->insert('pegawai', $data);
    }

    public function hapusDataPegawai($id)
    {
        //$this->db->where('id', $id);
        $this->db->delete('pegawai', ['id' => $id]);
    }

    public function getPegawaiById($id)
    {
        return $this->db->get_where('pegawai', ['id' => $id])->row_array();
    }

    public function ubahDataPegawai()
    {
        $data = [
            "nama" => $this->input->post('nama',  true),
            "jk" => $this->input->post('jk',  true),
            "tempat_lahir" => $this->input->post('tempat_lahir',  true),
            "tgl_lahir" => $this->input->post('tgl_lahir',  true),
            "nrp" => $this->input->post('nrp',  true),
            "nip" => $this->input->post('nip',  true),
            "jabatan" => $this->input->post('jabatan',  true),
            "pangkat" => $this->input->post('pangkat',  true),
            "gol" => $this->input->post('gol',  true),
            "tmt" => $this->input->post('tmt1',  true)
        ];

        $this->db->where('id', $this->input->post('id'));
        $this->db->update('pegawai', $data);
    }
}
