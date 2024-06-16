<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use App\Models\Thread;
use App\Models\KategoriThread;
use App\Models\DataAdminModel; // Model untuk tabel data_admin
use App\Models\DataIbuModel;   // Model untuk tabel data_ibu

class ThreadControl extends ResourceController
{
    protected $modelName = 'App\Models\Thread';
    protected $format    = 'json';

    // List all threads
    public function index()
    {
        $threads = $this->model->findAll();
        return $this->respond($threads);
    }

    // Show a single thread
    public function getThreadById($id)
{
    $threadModel = new Thread();
    $thread = $threadModel->find($id);

    if ($thread) {
        return $this->respond($thread);
    } else {
        return $this->failNotFound('Thread not found');
    }
}


    // Create a new thread
    public function create()
    {
        $rules = [
            'judul' => 'required',
            'isi' => 'required',
            'id_kategori_thread' => 'required|integer',
            'create_by_ibu' => 'permit_empty|integer',
            'create_by_admin' => 'permit_empty|integer',
            'gambar_thread' => 'uploaded[gambar_thread]|max_size[gambar_thread,10240]|is_image[gambar_thread]|mime_in[gambar_thread,image/jpg,image/jpeg,image/png]',
        ];

        if (!$this->validate($rules)) {
            return $this->failValidationErrors($this->validator->getErrors());
        }

        $data = $this->request->getPost();

        // Ensure that either 'create_by_ibu' or 'create_by_admin' is provided
        if (empty($data['create_by_ibu']) && empty($data['create_by_admin'])) {
            return $this->fail('Either create_by_ibu or create_by_admin must be provided.');
        }

        // Validate foreign keys
        $adminModel = new DataAdminModel();
        $ibuModel = new DataIbuModel();

        if (!empty($data['create_by_admin']) && !$adminModel->find($data['create_by_admin'])) {
            return $this->fail('Invalid create_by_admin value.');
        }

        if (!empty($data['create_by_ibu']) && !$ibuModel->find($data['create_by_ibu'])) {
            return $this->fail('Invalid create_by_ibu value.');
        }

        // Handle image upload
        $gambarFile = $this->request->getFile('gambar_thread');
        $gambarName = '';
        if ($gambarFile->isValid() && !$gambarFile->hasMoved()) {
            $gambarName = $gambarFile->getRandomName();
            $gambarFile->move('uploads', $gambarName);
        }

        // Insert the new thread
        $data['gambar_thread'] = $gambarName;
        if ($this->model->save($data)) {
            return $this->respondCreated($this->model->find($this->model->insertID()));
        }

        return $this->fail('Failed to create thread');
    }

    // Update an existing thread
    public function update($id = null)
{
    // Check if ID is provided
    if ($id === null) {
        return $this->fail('ID parameter is required for updating.');
    }

    // Find the thread by ID
    $thread = $this->model->find($id);
    if (!$thread) {
        return $this->fail('Thread not found.', 404);
    }

    $rules = [
        'judul' => 'required',
        'isi' => 'required',
        'id_kategori_thread' => 'required|integer',
        'create_by_ibu' => 'permit_empty|integer',
        'create_by_admin' => 'permit_empty|integer',
        'gambar_thread' => 'max_size[gambar_thread,10240]|is_image[gambar_thread]|mime_in[gambar_thread,image/jpg,image/jpeg,image/png]',
    ];

    if (!$this->validate($rules)) {
        return $this->failValidationErrors($this->validator->getErrors());
    }

    $data = $this->request->getPost();

    // Ensure that either 'create_by_ibu' or 'create_by_admin' is provided
    if (empty($data['create_by_ibu']) && empty($data['create_by_admin'])) {
        return $this->fail('Either create_by_ibu or create_by_admin must be provided.');
    }

    // Validate foreign keys
    $adminModel = new DataAdminModel();
    $ibuModel = new DataIbuModel();

    if (!empty($data['create_by_admin']) && !$adminModel->find($data['create_by_admin'])) {
        return $this->fail('Invalid create_by_admin value.');
    }

    if (!empty($data['create_by_ibu']) && !$ibuModel->find($data['create_by_ibu'])) {
        return $this->fail('Invalid create_by_ibu value.');
    }

    // Handle image upload if provided
    if ($gambarFile = $this->request->getFile('gambar_thread')) {
        if ($gambarFile->isValid() && !$gambarFile->hasMoved()) {
            // Delete previous image if exists
            if (!empty($thread['gambar_thread']) && file_exists('uploads/' . $thread['gambar_thread'])) {
                unlink('uploads/' . $thread['gambar_thread']);
            }

            // Upload new image
            $gambarName = $gambarFile->getRandomName();
            $gambarFile->move('uploads', $gambarName);

            // Update 'gambar_thread' field
            $data['gambar_thread'] = $gambarName;
        }
    }

    // Update the thread
    if ($this->model->update($id, $data)) {
        return $this->respondUpdated($this->model->find($id));
    }

    return $this->fail('Failed to update thread');
}

    


    // Delete a thread
    public function delete($id = null)
    {
        $thread = $this->model->find($id);
        if (!$thread) {
            return $this->failNotFound('Thread not found');
        }

        // Delete the image file
        if ($thread['gambar_thread'] && file_exists('uploads/' . $thread['gambar_thread'])) {
            unlink('uploads/' . $thread['gambar_thread']);
        }

        if ($this->model->delete($id)) {
            return $this->respondDeleted(['id' => $id, 'message' => 'Thread deleted']);
        }

        return $this->fail('Failed to delete thread');
    }
}
