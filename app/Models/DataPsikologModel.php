<?php

namespace App\Models;

use CodeIgniter\Model;

class DataPsikologModel extends Model
{
    protected $table            = 'psikolog';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $allowedFields    = [
    'photo_profile',
    'nama',
    'email',
    'password',
    'no_telepon',
    'alamat',
    'kelamin',
    'pengalaman',
    'sertifikat'
];

    protected bool $allowEmptyInserts = false;

    // Dates
    protected $useTimestamps = false;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';

}
