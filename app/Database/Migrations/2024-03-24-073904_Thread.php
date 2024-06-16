<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Thread extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' => [
                'type' => 'INT',
                'constraint' => 20,
                'auto_increment' => TRUE
            ],
            'judul' => [
                'type'=> 'VARCHAR',
                'constraint'=> 255,
            ],
            'isi' => [
                'type'=> 'TEXT',
            ],
            'id_kategori' => [
                'type'=> 'INT',
                'constraint'=> 25,
            ],
            'create_at'=> [
                'type'=> 'DATETIME',
                'NULL'=> TRUE,
            ],
            'create_by'=> [
                'type'=> 'INT',
                'constraint'=> 25,
            ],
            'update_at'=> [
                'type'=> 'DATETIME',
                'NULL'=> TRUE,
            ],
            'upload_by'=> [
                'type'=> 'INT',
                'constraint'=> 25,
            ]
        ]);

        $this->forge->addKey('id', TRUE);
        $this->forge->createTable('thread');
    }

    public function down()
    {
        $this->forge->dropTable('thread');
    }
}
