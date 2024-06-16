<?php

namespace App\Models;

use CodeIgniter\Model;

class KategoriVideo extends Model
{
    protected $table            = 'kategori_video';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $allowedFields    = [
        'kategori'
    ];
}
