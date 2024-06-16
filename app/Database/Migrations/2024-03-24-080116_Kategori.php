<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Kategori extends Migration
{
    public function up()
    {
        $this->forge->addField([
        'id' => [
            'type' => 'INT',
            'constraint' => 20,
            'auto_increment' => TRUE
        ],
        'kategori' => [
            'type'=> 'TEXT',
        ]
        ]);

        $this->forge->addKey('id', TRUE);
        $this->forge->createTable('kategori');
     
    }

    public function down()
    {
        $this->forge->dropTable('kategori');
    }
}
