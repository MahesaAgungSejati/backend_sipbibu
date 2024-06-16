<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\API\ResponseTrait;
use App\Models\DataIbuModel;

class RegisterIbu extends BaseController
{
    use ResponseTrait;

    public function index()
    {
        $rules = [
            'nama' => 'required|min_length[4]|max_length[255]',
            'no_telp' => 'required|min_length[10]|max_length[15]',
            'alamat' => 'required',
            'usia' => 'required|numeric',
            'email' => 'required|min_length[4]|max_length[255]|valid_email',
            'password' => 'required',
            'avatar' => 'uploaded[avatar]|max_size[avatar,5000000]|is_image[avatar]|mime_in[avatar,image/jpg,image/jpeg,image/png]',
        ];

        if ($this->validate($rules)) {
            // PROSES UPLOAD AVATAR
            $avatar = $this->request->getFile('avatar');
            if ($avatar->isValid() && !$avatar->hasMoved()) {
                // Directory penyimpanan
                $uploadPath = 'uploads'; 
                if (!is_dir($uploadPath)) {
                    mkdir($uploadPath, 0777, true);
                }
                
                $namaAvatar = $avatar->getRandomName();
                $avatar->move($uploadPath, $namaAvatar);
            } else {
                return $this->fail('File avatar gagal diunggah');
            }

            $model = new DataIbuModel();

            $data = [
                'nama'     => $this->request->getVar('nama'),
                'no_telp'  => $this->request->getVar('no_telp'),
                'alamat'   => $this->request->getVar('alamat'),
                'usia'     => $this->request->getVar('usia'),
                'email'    => $this->request->getVar('email'),
                'password' => password_hash($this->request->getVar('password'), PASSWORD_DEFAULT),
                'avatar'   => $namaAvatar,
            ];

            $model->save($data);

            return $this->respond(['message' => 'Registered Successfully'], 200);
        } else {
            return $this->respond(['message' => $this->validator->getErrors()], 409);
        }
    }
}
