<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pegawai extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Pegawai_model');
    }
    public function index()
    {
        $data['pegawai'] = $this->Pegawai_model->getAllPegawai();
        $this->load->view('template/atas');
        $this->load->view('pegawai/index', $data);
        $this->load->view('template/bawah');
    }

    public function tambah()
    {
        $this->load->view('template/atas');
        $this->load->view('pegawai/add');
        $this->load->view('template/bawah');
    }

    public function tambah_aksi()
    {
        $this->Pegawai_model->tambahDataPegawai();
        redirect('pegawai');
    }

    public function hapus($id)
    {
        $this->Pegawai_model->hapusDataPegawai($id);
        redirect('pegawai');
    }

    public function detail($id)
    {
        $data['pegawai'] = $this->Pegawai_model->getPegawaiById($id);

        $this->load->view('pegawai/cetak', $data);
    }

    public function ubah($id)
    {
        $data['pegawai'] = $this->Pegawai_model->getPegawaiById($id);
        $this->load->view('template/atas');
        $this->load->view('pegawai/edit', $data);
        $this->load->view('template/bawah');
    }

    public function ubah_aksi()
    {
        $this->Pegawai_model->ubahDataPegawai();
        redirect('pegawai');
    }
}
