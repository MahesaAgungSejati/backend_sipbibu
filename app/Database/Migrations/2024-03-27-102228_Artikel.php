<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Artikel extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' => [
                'type' => 'INT',
                'constraint' => 20,
                'unsigned' => TRUE,
                'auto_increment' => TRUE
            ],
            'kategori' => [
                'type'=> 'VARCHAR',
                'constraint'=> 255,
            ],
            'judul' => [
                'type'=> 'VARCHAR',
                'constraint'=>150,
            ],
            'penulis' => [
                'type'=> 'VARCHAR',
                'constraint'=>150,
            ],
            'created_at' => [
                'type'=> 'DATETIME',
                'null'=> TRUE,
            ],
            'updated_at' => [
                'type'=> 'DATETIME',
                'null'=> TRUE,
            ],
            'cover'=> [
                'type'=> 'VARCHAR', 
                'constraint'=> 255, 
                'null'=> FALSE,
            ],
            'pendahuluan' => [
                'type'=> 'TEXT',
                'null'=> FALSE,
            ],
            'isi' => [
                'type'=> 'TEXT',
                'null'=> FALSE,
            ],
            'penutup' => [
                'type'=> 'TEXT',
                'null'=> FALSE,
            ]
        ]);
        $this->forge->addKey( 'id',TRUE );
        $this->forge->createTable('artikel');
    }

    public function down()
    {
        $this->forge->dropTable('artikel');
    }
}
