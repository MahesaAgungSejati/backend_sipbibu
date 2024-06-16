<?php

namespace App\Models;

use CodeIgniter\Model;

class Reply extends Model
{
    protected $table            = 'reply';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $allowedFields    = [
        'id_thread',
        'gambar_reply',
        'isi',
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
