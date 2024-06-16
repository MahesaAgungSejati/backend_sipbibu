<?php

namespace App\Models;

use CodeIgniter\Model;

class BalasanReply extends Model
{
    protected $table            = 'balasan_reply';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $allowedFields    = [
        'id_reply',
        'gambar_balasan_reply',
        'isi',
        'create_at',
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
