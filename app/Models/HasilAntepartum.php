<?php

namespace App\Models;

use CodeIgniter\Model;

class HasilAntepartum extends Model
{
    protected $table = 'hasil_antepartum'; // Ubah sesuai dengan nama tabel yang digunakan
    protected $allowedFields = ['total_skor_internal', 'total_skor_eksternal', 'hasil_kesimpulan', 'id_ibu'];
}
