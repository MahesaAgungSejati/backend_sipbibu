<?php

namespace App\Controllers;

use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\RESTful\ResourceController;
use App\Models\KategoriVideo;

class VideoControl extends ResourceController
{
    protected $videoModel = 'App\Models\VideoModel';
    protected $format = 'json';

    // CONTROLLER READ DATA
    public function index()
    {
        $model = new $this->videoModel(); 

        // Ambil semua video secara acak
        $data = $model->orderBy('RAND()')->findAll(); 

        return $this->respond($data, 200);
    }

    public function getNotRandom()
{
    $model = new $this->videoModel(); 

    // Ambil semua video dan urutkan berdasarkan id secara menurun
    $data = $model->orderBy('id', 'DESC')->findAll(); 

    return $this->respond($data, 200);
}


    // CONTROLLER CREATE DATA
    public function create()
    {
        $rules = [
            'judul'          => 'required',
            'deskripsi'      => 'required',
            'sumber'         => 'required',
            'video_terapis'  => 'uploaded[video_terapis]|max_size[video_terapis,100000]|mime_in[video_terapis,video/mp4,video/x-matroska,video/webm,video/quicktime]',
            'id_kategori_video' => 'required|numeric'
        ];
        
        if (!$this->validate($rules)) {
            // Jika validasi gagal, kirim respons dengan pesan kesalahan yang jelas
            return $this->failValidationErrors($this->validator->getErrors());
        }

        // PROSES UPLOAD
        $videoFile = $this->request->getFile('video_terapis');
        if ($videoFile->isValid() && !$videoFile->hasMoved()) {
            // direktori penyimpanan
            $uploadPath = 'uploads'; // Misalnya, simpan di direktori writable/uploads/videos
            if (!is_dir($uploadPath)) {
                mkdir($uploadPath, 0777, true); // Buat direktori dengan izin tertinggi
            }
            
            $namaVideo = $videoFile->getRandomName();
            $videoFile->move($uploadPath, $namaVideo);
            
            $model = new $this->videoModel();
            $kategoriVideoModel = new KategoriVideo();

            // Cek apakah kategori video valid
            $idKategoriVideo = $this->request->getVar('id_kategori_video');
            if (!$kategoriVideoModel->find($idKategoriVideo)) {
                return $this->fail('Kategori video tidak valid');
            }

            $model->insert([
                'judul'            => esc($this->request->getVar('judul')),
                'deskripsi'        => esc($this->request->getVar('deskripsi')),
                'sumber'           => esc($this->request->getVar('sumber')),
                'video_terapis'    => $namaVideo,
                'id_kategori_video' => $idKategoriVideo
            ]);
        
            $response = [
                'message' => 'Video berhasil ditambahkan'
            ];
        
            return $this->respondCreated($response);
        } else {
            // Jika file gagal diunggah, kirim respons error dengan pesan yang jelas
            return $this->fail('File video gagal diunggah');
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

      // CONTROLLER UPDATE DATA
      public function update($id = null)
{
    // Validasi input
    $rules = [
        'judul'             => 'required',
        'deskripsi'         => 'required',
        'sumber'            => 'required',
        'id_kategori_video' => 'required|numeric'
    ];

    if (!$this->validate($rules)) {
        return $this->failValidationErrors($this->validator->getErrors());
    }

    // Ambil model video dan data video yang akan diupdate
    $model = new $this->videoModel();
    $video = $model->find($id);

    if (!$video) {
        return $this->failNotFound('Video tidak ditemukan');
    }

    // Ambil file video terapis
    $videoFile = $this->request->getFile('video_terapis');
    $namaVideo = $video['video_terapis']; // Nama video lama jika tidak ada upload baru

    // Cek apakah ada file video terapis yang diupload
    if (!empty($_FILES['video_terapis']['name'])) {
        // Direktori penyimpanan
        $uploadPath = 'uploads';
        if (!is_dir($uploadPath)) {
            mkdir($uploadPath, 0777, true);
        }
        
        // Generate nama baru untuk video
        $namaVideo = $videoFile->getRandomName();
        $videoFile->move($uploadPath, $namaVideo);

        // Hapus file video lama jika ada
        if ($video['video_terapis'] && file_exists('uploads/' . $video['video_terapis'])) {
            unlink('uploads/' . $video['video_terapis']);
        }
    }

    // Ambil model kategori video
    $kategoriVideoModel = new KategoriVideo();
    $idKategoriVideo = $this->request->getVar('id_kategori_video');

    // Cek apakah kategori video valid
    if (!$kategoriVideoModel->find($idKategoriVideo)) {
        return $this->fail('Kategori video tidak valid');
    }

    // Persiapkan data untuk diupdate
    $data = [
        'judul'            => esc($this->request->getVar('judul')),
        'deskripsi'        => esc($this->request->getVar('deskripsi')),
        'sumber'           => esc($this->request->getVar('sumber')),
        'video_terapis'    => $namaVideo,
        'id_kategori_video' => $idKategoriVideo
    ];

    // Update data video
    $model->update($id, $data);

    // Berikan response
    $response = [
        'message' => 'Video berhasil diubah'
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

      // CONTROLLER DELETE DATA
    public function delete($id = null)
    {
        $model = new $this->videoModel();

        // Ambil data artikel berdasarkan ID
        $video = $model->find($id);
    
        // Cek apakah data artikel ditemukan
        if ($video) {
            // Hapus gambar cover jika ada
            if (!empty($video['video_terapis']) && file_exists('uploads/' . $video['video_terapis'])) {
                unlink('uploads/' . $video['video_terapis']);
            }
    
            // Hapus data artikel dari database
            $model->delete($id);
    
            // Berikan response sukses
            $response = [
                'message' => 'Video berhasil dihapus'
            ];
    
            return $this->respondDeleted($response);
        } else {
            // Jika data artikel tidak ditemukan, berikan response error
            return $this->failNotFound('Video tidak ditemukan');
        }
    }

    //CONTROLLER VIDEO BERDASARKAN HASIL TES
    public function getVideoForHasilKuisioner()
    {
        $model = new $this->videoModel();
        $latestVideo = $model->orderBy('id', 'DESC')->first();

        if ($latestVideo === null) {
            return $this->failNotFound('Video tidak ditemukan.');
        }

        return $this->respond($latestVideo);
    }

}