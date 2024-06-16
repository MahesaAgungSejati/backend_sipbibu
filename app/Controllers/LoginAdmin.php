<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\API\ResponseTrait;
use App\Models\DataAdminModel;
use \Firebase\JWT\JWT;

class LoginAdmin extends BaseController
{
    use ResponseTrait;
     
    public function index()
    {
        $model = new DataAdminModel();

        $email = $this->request->getVar('email');
        $password = $this->request->getVar('password');
          
        $data_admin = $model->where('email', $email)->first();

        if(is_null($data_admin)) {
            return $this->respond(['error' => 'Invalid username or password.'], 401);
        }

        $pwd_verify = password_verify($password, $data_admin['password']);

        if(!$pwd_verify) {
            return $this->respond(['error' => 'Invalid username or password.'], 401);
        }

        $key = getenv('JWT_SECRET');
        $iat = time(); // current timestamp value
        $exp = $iat + 3600;

        $payload = array(
            "iss" => "Issuer of the JWT",
            "aud" => "Audience that the JWT",
            "sub" => "Subject of the JWT",
            "iat" => $iat, // Time the JWT issued at
            "exp" => $exp, // Expiration time of token
            "id" => $data_admin ['id'],
            "email" => $data_admin['email'],
            "nama" => $data_admin['nama'], // Tambahkan nama admin ke dalam payload
        );

        $token = JWT::encode($payload, $key, 'HS256');

        // Simpan nama admin ke dalam session
        session()->set('namaAdmin', $data_admin['nama']);

        $response = [
            'message' => 'Login Successful',
            'token' => $token,
            "id" => $data_admin ['id'],
            "nama" => $data_admin['nama'],
            "email" => $data_admin['email'] 
        ];
         
        return $this->respond($response, 200);
    }
}
