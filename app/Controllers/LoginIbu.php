<?php
 
namespace App\Controllers;
 
use App\Controllers\BaseController;
use CodeIgniter\API\ResponseTrait;
use App\Models\DataIbuModel;
use \Firebase\JWT\JWT;
 
class LoginIbu extends BaseController
{
    use ResponseTrait;
     
    public function index()
    {
        $model = new DataIbuModel();
  
        $email = $this->request->getVar('email');
        $password = $this->request->getVar('password');
          
        $data_ibu = $model->where('email', $email)->first();
  
        if(is_null($data_ibu)) {
            return $this->respond(['error' => 'Invalid username or password.'], 401);
        }
  
        $pwd_verify = password_verify($password, $data_ibu['password']);
  
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
            "iat" => $iat, //Time the JWT issued at
            "exp" => $exp, // Expiration time of token
            "id" => $data_ibu ['id'],
            "email" => $data_ibu['email'],
            "nama" => $data_ibu['nama'],
            "no_telp" => $data_ibu['no_telp'],
            "alamat" => $data_ibu['alamat'],
            "usia" => $data_ibu['usia'],
            "avatar" => $data_ibu['avatar']
        );
         
        $token = JWT::encode($payload, $key, 'HS256');

        // Simpan nama ibu ke dalam session
        session()->set('namaIbu', $data_ibu['nama']);
 
        $response = [
            'message' => 'Login Succesful',
            'token' => $token,
            "id" => $data_ibu ['id'],
            'nama' => $data_ibu['nama'],
            "email" => $data_ibu['email'],
            "no_telp" => $data_ibu['no_telp'],
            "alamat" => $data_ibu['alamat'],
            "usia" => $data_ibu['usia'],
            'avatar' => $data_ibu['avatar']
        ];
         
        return $this->respond($response, 200);
    }
 
}
