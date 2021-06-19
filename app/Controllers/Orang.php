<?php

namespace App\Controllers;

use App\Models\OrangModel;


class Orang extends BaseController
{
    protected $orangModel;
    public function __construct()
    {
        $this->orangModel = new OrangModel();
    }

    public function index()
    {
        $currentPage = $this->request->getVar('page_orang') ? $this->request->getVar('page_orang') : 1;

        // d($this->request->getVar('keyword'));

        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $orang =  $this->orangModel->search($keyword);
        } else {
            $orang = $this->orangModel;
        }

        $data = [
            'title' => 'Daftar Orang',
            // 'orang' => $this->orangModel->findAll()
            'orang' => $orang->paginate(6, 'orang'),
            'pager' => $this->orangModel->pager,
            'currentPage' => $currentPage
        ];
        return view('orang/index', $data);
    }

    public function detailorang($slug)
    {
        // kita bisa mengambil data buku dengan cara berikut
        // $buku= $this->bukuModel->where[['slug=> $slug]]->first();
        // dd($buku);
        // Namun agar lebih rapi akan dibuat method sendiri di dalam model
        $data = [
            'title' => 'Detail',
            'orang' => $this->orangModel->getOrang($slug)
        ];
        // // Jika buku tidak ada di tabel
        if (empty($data['orang'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul orang' . $slug . 'tidak ditemukan.');
        }
        return view('orang/detail', $data);
        // echo $slug;
    }
}
