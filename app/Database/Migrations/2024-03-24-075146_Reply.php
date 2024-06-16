<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Reply extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' => [
                'type' => 'INT',
                'constraint' => 20,
                'auto_increment' => TRUE
            ],
            'id_thread' => [
                'type'=> 'INT',
                'constraint'=> 25,
            ],
            // 'id_ibu' => [
            //     'type'=> 'INT',
            //     'constraint'=> 25,
            // ],
            'isi' => [
                'type'=> 'TEXT',
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
        $this->forge->createTable('reply');
    }

    public function down()
    {
        $this->forge->dropTable('reply');
    }
}
