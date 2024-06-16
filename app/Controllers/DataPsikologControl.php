<?php

namespace App\Controllers;

use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\RESTful\ResourceController;

class DataPsikologControl extends ResourceController
{
    protected $DataPsikologModel = 'App\Models\DataPsikologModel';
    protected $format = 'json';


            //IKI CONTROLLER READ DATA!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


    /**
     * Return an array of resource objects, themselves in array format.
     *
     * @return ResponseInterface
     */
    public function index()
{
    $model = new $this->DataPsikologModel(); // Menggunakan properti DataPsikologModel untuk membuat objek model
    $data = [
        'message' => 'success',
        'data_psikolog' =>$model->orderby('id', 'DESC')->findAll(), // Menggunakan objek model yang telah dibuat
    ];

    return $this->respond($data, 200);
}


        //IKI CONTROLLER SHOW DATA GAWE MENCARI PSIKOLOG BERDASARKAN ID !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



    /**
     * Return the properties of a resource object.
     *
     * @param int|string|null $id
     *
     * @return ResponseInterface
     */
    public function show($id = null)
    {
        $model = new $this->DataPsikologModel(); // Menggunakan properti DataPsikologModel untuk membuat objek model
        $data = [
            'message' => 'success',
            'psikolog_byid' =>$model->orderby('id', 'DESC')->find($id), // Menggunakan objek model yang telah dibuat
    ];

    if ($data['psikolog_byid'] == null) {
        return $this->failNotFound('Data psikolog tidak ditemukan');
    }

    return $this->respond($data, 200);
    }

    /**
     * Return a new resource object, with default properties.
     *
     * @return ResponseInterface
     */

        //IKI CONTROLLER CREATE DATA !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



    /**
     * Create a new resource object, from "posted" parameters.
     *
     * @return ResponseInterface
     */
    public function create()
{   

    $rules = [
        'photo_profile' => 'uploaded[photo_profile]|max_size[photo_profile,5000000]|is_image[photo_profile]|mime_in[photo_profile,image/jpg,image/jpeg,image/png]',
        'nama'          => 'required',
        'email'         => 'required',
        'password'      => 'required',
        'no_telepon'    => 'required',
        'alamat'        => 'required',
        'kelamin'       => 'required',
        'pengalaman'    => 'required',
        'sertifikat'    => 'uploaded[sertifikat]|max_size[sertifikat,5000000]|is_image[sertifikat]|mime_in[sertifikat,image/jpg,image/jpeg,image/png]'
    ];
    
    if (!$this->validate($rules)) {
        return $this->failValidationErrors($this->validator->getErrors());
    }

    // PROSES UPLOAD PHOTO PROFILE
    $photo_profile = $this->request->getFile('photo_profile');
    if ($photo_profile->isValid() && !$photo_profile->hasMoved()) {
        // Directory penyimpanan
        $uploadPath = 'uploads'; 
        if (!is_dir($uploadPath)) {
            mkdir($uploadPath, 0777, true);
        }
        
        $namaPhotoProfile = $photo_profile->getRandomName();
        $photo_profile->move($uploadPath, $namaPhotoProfile);
    } else {
        return $this->fail('File photo profile gagal diunggah');
    }

    // PROSES UPLOAD SERTIFIKAT
    $sertifikat = $this->request->getFile('sertifikat');
    if ($sertifikat->isValid() && !$sertifikat->hasMoved()) {
        // Directory penyimpanan
        $uploadPath = 'uploads'; 
        if (!is_dir($uploadPath)) {
            mkdir($uploadPath, 0777, true);
        }
        
        $namaSertifikat = $sertifikat->getRandomName();
        $sertifikat->move($uploadPath, $namaSertifikat);
    } else {
        return $this->fail('File sertifikat gagal diunggah');
    }

    $model = new $this->DataPsikologModel(); 

    $model->insert([
        'photo_profile' => $namaPhotoProfile,
        'nama'       => esc($this->request->getPost('nama')),
        'email'      => esc($this->request->getPost('email')),
        'password'   => esc($this->request->getPost('password')),
        'no_telepon' => esc($this->request->getPost('no_telepon')),
        'alamat'     => esc($this->request->getPost('alamat')),
        'kelamin'    => esc($this->request->getPost('kelamin')),
        'pengalaman'    => esc($this->request->getPost('pengalaman')),
        'sertifikat' => $namaSertifikat
    ]);

    $response = [
        'message' => 'Psikolog berhasil ditambahkan'
    ];

    return $this->respondCreated($response);
}






    //IKI CONTROLLER UPDATE DATA!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


    public function update($id = null)
{
    // Validasi input
    $rules = [
        'nama'           => 'required',
        'email'          => 'required',
        'password'       => 'required',
        'no_telepon'     => 'required',
        'alamat'         => 'required',
        'kelamin'        => 'required',
        'pengalaman'     => 'required'
    ];

    if (!$this->validate($rules)) {
        return $this->failValidationErrors($this->validator->getErrors());
    }

    // Cek apakah ID valid
    if (!$id || !is_numeric($id)) {
        return $this->fail('ID Psikolog tidak valid');
    }

    // Persiapkan data untuk diupdate
    $data = [
        'nama'       => esc($this->request->getVar('nama')),
        'email'      => esc($this->request->getVar('email')),
        'password'   => esc($this->request->getVar('password')), // hash password
        'no_telepon' => esc($this->request->getVar('no_telepon')),
        'alamat'     => esc($this->request->getVar('alamat')),
        'kelamin'    => esc($this->request->getVar('kelamin')),
        'pengalaman'    => esc($this->request->getVar('pengalaman'))
    ];

    // Cek dan proses file photo profile
    if ($photo_profileFile = $this->request->getFile('photo_profile')) {
        if ($photo_profileFile->isValid() && !$photo_profileFile->hasMoved()) {
            // Validasi file
            if ($photo_profileFile->getClientMimeType() === 'image/png' || $photo_profileFile->getClientMimeType() === 'image/jpeg') {
                // Generate nama baru untuk photo profile
                $namaPhotoProfile = $photo_profileFile->getRandomName();
                
                // Pindahkan file photo profile baru ke direktori uploads
                $photo_profileFile->move('uploads', $namaPhotoProfile);

                // Hapus file photo profile lama jika ada
                $psikolog = (new $this->DataPsikologModel())->find($id);
                if ($psikolog['photo_profile'] && file_exists('uploads/' . $psikolog['photo_profile'])) {
                    unlink('uploads/' . $psikolog['photo_profile']);
                }

                // Tambahkan nama photo profile baru ke data
                $data['photo_profile'] = $namaPhotoProfile;
            } else {
                return $this->fail('File photo profile harus berformat JPG atau PNG');
            }
        }
    }

    // Cek dan proses file sertifikat
    if ($sertifikatFile = $this->request->getFile('sertifikat')) {
        if ($sertifikatFile->isValid() && !$sertifikatFile->hasMoved()) {
            // Validasi file
            if ($sertifikatFile->getClientMimeType() === 'image/png' || $sertifikatFile->getClientMimeType() === 'image/jpeg') {
                // Generate nama baru untuk sertifikat
                $namaSertifikat = $sertifikatFile->getRandomName();

                // Pindahkan file sertifikat baru ke direktori uploads
                $sertifikatFile->move('uploads', $namaSertifikat);

                // Hapus file sertifikat lama jika ada
                $psikolog = (new $this->DataPsikologModel())->find($id);
                if ($psikolog['sertifikat'] && file_exists('uploads/' . $psikolog['sertifikat'])) {
                    unlink('uploads/' . $psikolog['sertifikat']);
                }

                // Tambahkan nama sertifikat baru ke data
                $data['sertifikat'] = $namaSertifikat;
            } else {
                return $this->fail('File sertifikat harus berformat JPG atau PNG');
            }
        }
    }

    // Update data psikolog
    $model = new $this->DataPsikologModel();
    $model->update($id, $data);

    // Berikan response
    $response = [
        'message' => 'Psikolog berhasil diubah'
    ];

    return $this->respond($response, 200);
}




        // IKI CONTROLLER DELETE DATA!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    

    /**
     * Delete the designated resource object from the model.
     *
     * @param int|string|null $id
     *
     * @return ResponseInterface
     */
    public function delete($id = null)
{
    // Load model psikolog
    $model = new $this->DataPsikologModel();

    // Ambil data psikolog berdasarkan ID
    $psikolog = $model->find($id);

    // Cek apakah data psikolog ditemukan
    if ($psikolog) {
        // Hapus gambar sertifikat jika ada
        if (!empty($psikolog['sertifikat']) && file_exists('uploads/' . $psikolog['sertifikat'])) {
            unlink('uploads/' . $psikolog['sertifikat']);
        }

        // Hapus data psikolog dari database
        $model->delete($id);

        // Berikan response sukses
        $response = [
            'message' => 'Psikolog berhasil dihapus'
        ];

        return $this->respondDeleted($response);
    } else {
        // Jika data psikolog tidak ditemukan, berikan response error
        return $this->failNotFound('Psikolog tidak ditemukan');
    }
}
}
