<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Video extends Migration
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
            'judul' => [
                'type'=> 'VARCHAR',
                'constraint'=> 255,
            ],
            'deskripsi' => [
                'type'=> 'TEXT',
                'null'=> TRUE,
            ],
            'sumber'=> [
                'type'=> 'VARCHAR',
                'constraint'=> 255, 
                'null'=> FALSE,
            ],
            'id_kategori_video'=> [
                'type'=> 'INT',
                'constraint'=> 11, 
                'null'=> FALSE,
            ],
            'video_terapis'=> [
                'type'=> 'VARCHAR',
                'constraint'=> 255,
            ]
        ]);

        $this->forge->addKey('id', TRUE);
        $this->forge->createTable('video');
    }

    public function down()
    {
        $this->forge->dropTable('video');
    }
}
