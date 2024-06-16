<?php

namespace App\Controllers;

use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\RESTful\ResourceController;
use App\Models\KategoriAudio;

class AudioControl extends ResourceController
{
    protected $audioModel = 'App\Models\AudioModel';
    protected $format = 'json';

    // CONTROLLER READ DATA
    public function index()
    {
        $model = new $this->audioModel(); 

        // Ambil data audio dari database dengan urutan descending berdasarkan ID
        $data_audio = $model->orderBy('id', 'DESC')->findAll();

        // Jika tidak ada data audio ditemukan, berikan respons error
        if (empty($data_audio)) {
            return $this->fail('Data audio tidak ditemukan', 404);
        }

        // Berikan respons sukses beserta data audio
        $response = [
            'message' => 'success',
            'data_audio' => $data_audio
        ];

        return $this->respond($response, 200);
    }

    /**
     * Return the properties of a resource object.
     *
     * @param int|string|null $id
     *
     * @return ResponseInterface
     */
    public function show($id = null)
    {
        //
    }

    /**
     * Return a new resource object, with default properties.
     *
     * @return ResponseInterface
     */
    public function new()
    {
        //
    }

    /**
     * Create a new resource object, from "posted" parameters.
     *
     * @return ResponseInterface
     */
    public function create()
    {
        $rules = [
            'judul'             => 'required',
            'deskripsi'         => 'required',
            'sumber'            => 'required',
            'audio_terapis'     => 'uploaded[audio_terapis]|max_size[audio_terapis,100000]|mime_in[audio_terapis,video/mp4,video/x-matroska,video/webm,video/quicktime]',
            'id_kategori_audio' => 'required|numeric'
        ];
        
        if (!$this->validate($rules)) {
            // Jika validasi gagal, kirim respons dengan pesan kesalahan yang jelas
            return $this->failValidationErrors($this->validator->getErrors());
        }

        // PROSES UPLOAD
        $audioFile = $this->request->getFile('audio_terapis');
        if ($audioFile->isValid() && !$audioFile->hasMoved()) {
            // direktori penyimpanan
            $uploadPath = 'uploads'; // Misalnya, simpan di direktori writable/uploads
            if (!is_dir($uploadPath)) {
                mkdir($uploadPath, 0777, true); // Buat direktori dengan izin tertinggi
            }
            
            $namaAudio = $audioFile->getRandomName();
            $audioFile->move($uploadPath, $namaAudio);
            
            $model = new $this->audioModel();
            $kategoriAudioModel = new KategoriAudio();

            // Cek apakah kategori audio valid
            $idKategoriAudio = $this->request->getVar('id_kategori_audio');
            if (!$kategoriAudioModel->find($idKategoriAudio)) {
                return $this->fail('Kategori audio tidak valid');
            }

            $model->insert([
                'judul'             => esc($this->request->getVar('judul')),
                'deskripsi'         => esc($this->request->getVar('deskripsi')),
                'sumber'            => esc($this->request->getVar('sumber')),
                'audio_terapis'     => $namaAudio,
                'id_kategori_audio' => $idKategoriAudio
            ]);
        
            $response = [
                'message' => 'Audio berhasil ditambahkan'
            ];
        
            return $this->respondCreated($response);
        } else {
            // Jika file gagal diunggah, kirim respons error dengan pesan yang jelas
            return $this->fail('File audio gagal diunggah');
        }
    }

     


    /**
     * Return the editable properties of a resource object.
     *
     * @param int|string|null $id
     *
     * @return ResponseInterface
     */
    public function edit($id = null)
    {
        //
    }

    /**
     * Add or update a model resource, from "posted" properties.
     *
     * @param int|string|null $id
     *
     * @return ResponseInterface
     */

     //CONTROLLER UPDATE DATA
     public function update($id = null)
{
    // Periksa apakah ID yang diberikan valid
    if ($id === null) {
        return $this->fail('ID audio tidak valid.');
    }

    // Validasi input
    $rules = [
        'judul'             => 'required',
        'deskripsi'         => 'required',
        'sumber'            => 'required',
        'id_kategori_audio' => 'required|numeric'
    ];

    if (!$this->validate($rules)) {
        // Jika validasi gagal, kirim respons dengan pesan kesalahan yang jelas
        return $this->failValidationErrors($this->validator->getErrors());
    }

    // Persiapkan data untuk diupdate
    $data = [
        'judul'             => esc($this->request->getVar('judul')),
        'deskripsi'         => esc($this->request->getVar('deskripsi')),
        'sumber'            => esc($this->request->getVar('sumber')),
        'id_kategori_audio' => $this->request->getVar('id_kategori_audio')
    ];

    // Ambil data audio yang akan diupdate
    $model = new $this->audioModel();
    $audio = $model->find($id);

    // Jika tidak ditemukan data audio dengan ID yang diberikan
    if (!$audio) {
        return $this->fail('Audio tidak ditemukan.');
    }

    // Cek apakah ada file audio yang diunggah
    if (!empty($_FILES['audio_terapis']['name'])) {
        // Validasi file audio
        $validation = \Config\Services::validation();
        $validation->setRule('audio_terapis', 'Audio', 'uploaded[audio_terapis]|max_size[audio_terapis,100000]|mime_in[audio_terapis,video/mp4,video/x-matroska,video/webm,video/quicktime]');

        if (!$validation->withRequest($this->request)->run()) {
            // Jika validasi gagal, kirim respons dengan pesan kesalahan yang jelas
            return $this->failValidationErrors($validation->getErrors());
        }

        // Ambil file audio
        $audioFile = $this->request->getFile('audio_terapis');

        // Generate nama baru untuk file audio
        $namaAudio = $audioFile->getRandomName();

        // Pindahkan file audio baru ke direktori uploads
        $audioFile->move('uploads', $namaAudio);

        // Hapus file audio lama jika ada
        if ($audio['audio_terapis'] && file_exists('uploads/' . $audio['audio_terapis'])) {
            unlink('uploads/' . $audio['audio_terapis']);
        }

        $data['audio_terapis'] = $namaAudio;
    }

    // Update data audio
    $model->update($id, $data);

    // Berikan response
    $response = [
        'message' => 'Audio berhasil diubah'
    ];

    return $this->respondUpdated($response);
}





     

    /**
     * Delete the designated resource object from the model.
     *
     * @param int|string|null $id
     *
     * @return ResponseInterface
     */

     //CONTROLLER DELETE DATA
     public function delete($id = null)
     {
         // Periksa apakah ID yang diberikan valid
         if ($id === null) {
             return $this->fail('ID audio tidak valid.');
         }
     
         $model = new $this->audioModel();
     
         // Ambil data audio berdasarkan ID
         $audio = $model->find($id);
     
         // Cek apakah data audio ditemukan
         if (!$audio) {
             // Jika data audio tidak ditemukan, berikan response error
             return $this->failNotFound('Audio tidak ditemukan');
         }
     
         // Hapus file audio jika ada
         if (!empty($audio['audio_terapis']) && file_exists('uploads/' . $audio['audio_terapis'])) {
             unlink('uploads/' . $audio['audio_terapis']);
         }
     
         // Hapus data audio dari database
         $model->delete($id);
     
         // Berikan response sukses
         $response = [
             'message' => 'Audio berhasil dihapus'
         ];
     
         return $this->respondDeleted($response);
     }
     
}