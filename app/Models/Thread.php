<?php

namespace App\Models;

use CodeIgniter\Model;

class Thread extends Model
{
    protected $table            = 'thread';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $allowedFields    = [
        'judul',
        'gambar_thread',
        'isi',
        'id_kategori_thread', //foreign key
        'create_at',
        'update_at',
        'create_by_ibu',
        'create_by_admin'
    ];
    protected bool $allowEmptyInserts = false;

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'create_at';
    protected $updatedField  = 'update_at';
}
