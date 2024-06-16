<?php

namespace App\Models;

use CodeIgniter\Model;

class AntepartumModel extends Model
{
    protected $table = 'antepartum'; // Ubah ke 'antepartum' sesuai dengan nama tabel yang digunakan
    protected $allowedFields = ['pernyataan'];

    public function simpanHasilAntepartum($data)
    {
        return $this->insert($data);
    }
}
