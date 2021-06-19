<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {
        // $faker = \Faker\Factory::create();
        // dd($faker->address);
        $data = [
            'title' => 'Home |Lukman Hakim',
            'tes'   => ['satu', 'dua', 'tiga']

        ];
        return view('pages/home', $data);
    }


    public function about()
    {
        $data = [
            'title' => 'About Me'

        ];
        return view('pages/about', $data);
    }
    public function contact()
    {
        $data = [
            'title' => 'Contact Us',
            'alamat' => [
                [
                    'tipe'   => 'Rumah',
                    'alamat' => 'Dusun Durian RT.003/RW.006 Desa Kalibuntu Kecamatan Kraksaan ',
                    'kota'   => 'Probolinggo'
                ],
                [
                    'tipe'   => 'SDN SIDOPEKSO',
                    'alamat' => 'Jln Yos Sudarso No. 40 desa sidopekso kecamatan kraksaan ',
                    'kota'   => 'Probolinggo'
                ]
            ]
        ];
        return view('pages/contact', $data);
    }
}
