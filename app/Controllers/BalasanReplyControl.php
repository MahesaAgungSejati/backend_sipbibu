<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use App\Models\BalasanReply; // Import model BalasanReply
use App\Models\Reply;
use App\Models\Thread;
use App\Models\DataAdminModel; // Model untuk tabel data_admin
use App\Models\DataIbuModel;

class BalasanReplyControl extends ResourceController
{
    protected $modelName = 'App\Models\BalasanReply'; // Tentukan model yang akan digunakan
    protected $format    = 'json';


    public function index()
    {
        $replies = $this->model->findAll();
        return $this->respond($replies);
    }

    // Get a single reply by ID
    public function show($id = null)
    {
        $replies = $this->model->find($id);
        if (!$replies) {
            return $this->failNotFound('Reples not found');
        }

        return $this->respond($replies);
    }

public function getRepliesByReply($id_reply)
{
    $replies = $this->model->where('id_reply', $id_reply)->findAll();
    if (!$replies) {
        return $this->failNotFound('No replies found for this reply');
    }

    return $this->respond($replies);
}

public function getBalasanReplyById($id)
{
    $balasanReplyModel = new BalasanReply();
    $balasanReply = $balasanReplyModel->find($id);

    if ($balasanReply) {
        return $this->respond($balasanReply);
    } else {
        return $this->failNotFound('Thread not found');
    }
}


    // Create a new reply
    // ...
public function create()
{
    $rules = [
        'id_reply' => 'required|integer', // Validasi hanya menggunakan id_reply
        'isi' => 'required',
        'create_by_ibu' => 'permit_empty|integer',
        'create_by_admin' => 'permit_empty|integer',
        'gambar_balasan_reply' => 'permit_empty|uploaded[gambar_balasan_reply]|max_size[gambar_balasan_reply,10240]|is_image[gambar_balasan_reply]|mime_in[gambar_balasan_reply,image/jpg,image/jpeg,image/png]',
    ];

    if (!$this->validate($rules)) {
        return $this->failValidationErrors($this->validator->getErrors());
    }

    $data = $this->request->getVar();

    // Ensure that either 'create_by_ibu' or 'create_by_admin' is provided
    if (empty($data['create_by_ibu']) && empty($data['create_by_admin'])) {
        return $this->fail('Either create_by_ibu or create_by_admin must be provided.');
    }

    // Validate foreign keys
    $adminModel = new DataAdminModel();
    $ibuModel = new DataIbuModel();
    $replyModel = new Reply(); // Gunakan model Reply untuk validasi

    if (!empty($data['create_by_admin']) && !$adminModel->find($data['create_by_admin'])) {
        return $this->fail('Invalid create_by_admin value.');
    }

    if (!empty($data['create_by_ibu']) && !$ibuModel->find($data['create_by_ibu'])) {
        return $this->fail('Invalid create_by_ibu value.');
    }

    // Ensure that the id_reply exists
    if (!$replyModel->find($data['id_reply'])) {
        return $this->fail('Invalid id_reply value.');
    }

    // Handle image upload
    $gambarFile = $this->request->getFile('gambar_balasan_reply');
    $gambarName = null;
    if ($gambarFile && $gambarFile->isValid() && !$gambarFile->hasMoved()) {
        $gambarName = $gambarFile->getRandomName();
        $gambarFile->move('uploads', $gambarName);
    }

    // Create the reply
    $newData = [
        'id_reply' => esc($data['id_reply']), // Gunakan id_reply
        'isi' => esc($data['isi']),
        'create_by_ibu' => !empty($data['create_by_ibu']) ? esc($data['create_by_ibu']) : null,
        'create_by_admin' => !empty($data['create_by_admin']) ? esc($data['create_by_admin']) : null,
        'gambar_balasan_reply' => $gambarName,
    ];

    if ($this->model->save($newData)) {
        return $this->respondCreated($this->model->find($this->model->insertID()));
    }

    return $this->fail('Failed to create replies');
}
// ...

    




    // Delete a reply
    public function delete($id = null)
    {
        $reply = $this->model->find($id);

        if (!$reply) {
            return $this->failNotFound('Reply not found');
        }

        if ($reply['gambar_balasan_reply'] && file_exists('uploads/' . $reply['gambar_balasan_reply'])) {
            unlink('uploads/' . $reply['gambar_balasan_reply']);
        }

        if ($this->model->delete($id)) {
            return $this->respondDeleted(['message' => 'Replies deleted successfully']);
        }

        return $this->fail('Failed to delete replies');
    }
}
