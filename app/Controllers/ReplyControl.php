<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use App\Models\Reply;
use App\Models\Thread;
use App\Models\DataAdminModel; // Model untuk tabel data_admin
use App\Models\DataIbuModel;   // Model untuk tabel data_ibu

class ReplyControl extends ResourceController
{
    protected $modelName = 'App\Models\Reply';
    protected $format    = 'json';

    // Get all replies
    public function index()
    {
        $replies = $this->model->findAll();
        return $this->respond($replies);
    }

    // Get a single reply by ID
    public function show($id = null)
    {
        $reply = $this->model->find($id);
        if (!$reply) {
            return $this->failNotFound('Reply not found');
        }

        return $this->respond($reply);
    }

    // Get all replies for a specific thread
    public function getRepliesByThread($id_thread)
    {
        $replies = $this->model->where('id_thread', $id_thread)->findAll();
        if (!$replies) {
            return $this->failNotFound('No replies found for this thread');
        }
    
        return $this->respond($replies);
    }

    // Create a new reply
    public function create()
    {
        $rules = [
            'id_thread' => 'required|integer',
            'isi' => 'required',
            'create_by_ibu' => 'permit_empty|integer',
            'create_by_admin' => 'permit_empty|integer',
            'gambar_reply' => 'permit_empty|uploaded[gambar_reply]|max_size[gambar_reply,10240]|is_image[gambar_reply]|mime_in[gambar_reply,image/jpg,image/jpeg,image/png]',
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
        $threadModel = new Thread();

        if (!empty($data['create_by_admin']) && !$adminModel->find($data['create_by_admin'])) {
            return $this->fail('Invalid create_by_admin value.');
        }

        if (!empty($data['create_by_ibu']) && !$ibuModel->find($data['create_by_ibu'])) {
            return $this->fail('Invalid create_by_ibu value.');
        }

        if (!$threadModel->find($data['id_thread'])) {
            return $this->fail('Invalid id_thread value.');
        }

        // Handle image upload
        $gambarFile = $this->request->getFile('gambar_reply');
        $gambarName = null;
        if ($gambarFile && $gambarFile->isValid() && !$gambarFile->hasMoved()) {
            $gambarName = $gambarFile->getRandomName();
            $gambarFile->move('uploads', $gambarName);
        }

        // Create the reply
        $newData = [
            'id_thread' => esc($data['id_thread']),
            'isi' => esc($data['isi']),
            'create_by_ibu' => !empty($data['create_by_ibu']) ? esc($data['create_by_ibu']) : null,
            'create_by_admin' => !empty($data['create_by_admin']) ? esc($data['create_by_admin']) : null,
            'gambar_reply' => $gambarName,
        ];

        if ($this->model->save($newData)) {
            return $this->respondCreated($this->model->find($this->model->insertID()));
        }

        return $this->fail('Failed to create reply');
    }

    // Update an existing reply
    public function update($id = null)
{
    // Check if ID is provided
    if ($id === null) {
        return $this->fail('ID parameter is required for updating.');
    }

    // Find the reply by ID
    $reply = $this->model->find($id);
    if (!$reply) {
        return $this->fail('Reply not found.', 404);
    }

    $rules = [
        'isi' => 'required',
        'create_by_ibu' => 'permit_empty|integer',
        'create_by_admin' => 'permit_empty|integer',
        'gambar_reply' => 'permit_empty|max_size[gambar_reply,10240]|is_image[gambar_reply]|mime_in[gambar_reply,image/jpg,image/jpeg,image/png]',
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
    $threadModel = new Thread();

    if (!empty($data['create_by_admin']) && !$adminModel->find($data['create_by_admin'])) {
        return $this->fail('Invalid create_by_admin value.');
    }

    if (!empty($data['create_by_ibu']) && !$ibuModel->find($data['create_by_ibu'])) {
        return $this->fail('Invalid create_by_ibu value.');
    }

    // Handle image upload if provided
    if ($gambarFile = $this->request->getFile('gambar_reply')) {
        if ($gambarFile->isValid() && !$gambarFile->hasMoved()) {
            // Delete previous image if exists
            if (!empty($reply['gambar_reply']) && file_exists('uploads/' . $reply['gambar_reply'])) {
                unlink('uploads/' . $reply['gambar_reply']);
            }

            // Upload new image
            $gambarName = $gambarFile->getRandomName();
            $gambarFile->move('uploads', $gambarName);

            // Update 'gambar_reply' field
            $data['gambar_reply'] = $gambarName;
        }
    }

    // Update the reply
    if ($this->model->update($id, $data)) {
        return $this->respondUpdated($this->model->find($id));
    }

    return $this->fail('Failed to update reply');
}


    // Delete a reply
    public function delete($id = null)
    {
        $reply = $this->model->find($id);

        if (!$reply) {
            return $this->failNotFound('Reply not found');
        }

        if ($reply['gambar_reply'] && file_exists('uploads/' . $reply['gambar_reply'])) {
            unlink('uploads/' . $reply['gambar_reply']);
        }

        if ($this->model->delete($id)) {
            return $this->respondDeleted(['message' => 'Reply deleted successfully']);
        }

        return $this->fail('Failed to delete reply');
    }
}
