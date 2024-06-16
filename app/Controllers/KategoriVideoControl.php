<?php

namespace App\Controllers;

use App\Models\KategoriVideo;
use CodeIgniter\RESTful\ResourceController;

class KategoriVideoControl extends ResourceController
{
    protected $modelName = 'App\Models\KategoriVideo';
    protected $format    = 'json';

    public function index()
    {
        $kategoriVideo = $this->model->findAll();
        return $this->respond($kategoriVideo);
    }
}
