<?php

namespace App\Controllers;

use App\Models\KategoriThread;
use CodeIgniter\RESTful\ResourceController;

class KategoriThreadControl extends ResourceController
{
    protected $modelName = 'App\Models\KategoriThread';
    protected $format    = 'json';

    public function index()
    {
        $kategoriThread = $this->model->findAll();
        return $this->respond($kategoriThread);
    }
}
