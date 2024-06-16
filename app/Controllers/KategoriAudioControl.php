<?php

namespace App\Controllers;

use App\Models\KategoriAudio;
use CodeIgniter\RESTful\ResourceController;

class KategoriAudioControl extends ResourceController
{
    protected $modelName = 'App\Models\KategoriAudio';
    protected $format    = 'json';

    public function index()
    {
        $kategoriAudio = $this->model->findAll();
        return $this->respond($kategoriAudio);
    }
}
