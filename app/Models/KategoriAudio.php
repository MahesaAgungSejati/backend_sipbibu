<?php

namespace App\Models;

use CodeIgniter\Model;

class KategoriAudio extends Model
{
    protected $table            = 'kategori_audio';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $allowedFields    = [
        'kategori'
    ];
}
