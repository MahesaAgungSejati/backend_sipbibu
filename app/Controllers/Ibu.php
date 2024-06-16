<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\API\ResponseTrait;
use App\Models\DataIbuModel;

class Ibu extends BaseController
{
    use ResponseTrait;

    public function index()
    {
        $data_ibu = new DataIbuModel;
        return $this->respond(['data_ibu' => $data_ibu->findAll()], 200);
    }

    public function show($id = null)
    {
        $data_ibu = new DataIbuModel;
        $ibu = $data_ibu->find($id);

        if ($ibu === null) {
            return $this->failNotFound('Ibu not found');
        }

        return $this->respond($ibu, 200);
    }
}
