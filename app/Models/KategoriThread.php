<?php

namespace App\Models;

use CodeIgniter\Model;

class KategoriThread extends Model
{
    protected $table            = 'kategori_thread';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $allowedFields    = [
        'kategori'
    ];
}
