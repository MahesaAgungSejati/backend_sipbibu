<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Ibu extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' => [
                'type' => 'INT',
                'constraint' => 20,
                'unsigned' => true,
                'auto_increment' => true,
            ],
            'nama' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
            ],
            'no_telp' => [
                'type' => 'VARCHAR',
                'constraint' => 15,
            ],
            'alamat' => [
                'type' => 'TEXT',
            ],
            'usia' => [
                'type' => 'INT',
                'constraint' => 3,
                'unsigned' => true,
            ],
            'email' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
            ],
            'password' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
            ],
            'genre_audio' => [
                'type' => 'ENUM',
                'constraint' => ['pop', 'murottal', 'olahraga'],
            ],
            'genre_video' => [
                'type' => 'ENUM',
                'constraint' => ['pop', 'murottal', 'olahraga'],
            ],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('data_ibu');
    }

    public function down()
    {
        $this->forge->dropTable('data_ibu');
    }
}