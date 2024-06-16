<?php

namespace App\Controllers;

use App\Models\HasilKuisionerModel;
use App\Models\KuisionerModel;
use CodeIgniter\RESTful\ResourceController;

class KuisionerControl extends ResourceController
{
    protected $modelName = 'App\Models\KuisionerModel';
    protected $format = 'json'; // Format response yang diinginkan (JSON)

    public function index()
    {
        if (!$this->request->isAJAX() && !$this->request->isCLI()) {
            $kuisionerModel = new KuisionerModel();
            $data['kuisioner'] = $kuisionerModel->findAll();
            return view('kuisioner', $data);
        }
    }

    // Menyimpan jawaban kuisioner dan menampilkan hasil ke halaman hasil-kuisioner
    public function simpanHasil()
{
    // Mengambil data JSON dari permintaan
    $json = $this->request->getJSON();

    // Pastikan data jawaban ada dalam properti yang benar
    $jawaban = $json->jawaban;

    // Pastikan ada jawaban yang dikirim
    if (empty($jawaban)) {
        return $this->fail('Tidak ada jawaban yang dikirim.');
    }

    // Hitung total skor
    $totalSkor = array_sum($jawaban);

    // Tentukan hasil berdasarkan total skor
    $hasil = ($totalSkor > 12) ? 'Berdasarkan tes, kemungkinan ibu mengalami Postpartum Depression atau Depresi Pasca Melahirkan. 
    Dapatkan bantuan ahli kesehatan mental sekarang untuk diperiksa secara mendetail & mendapat bantuan mengatasi keadaanmu. Jika tidak diatasi, depresi berat dapat membuat ibu kehilangan orang tersayang & menurunkan kemampuanmu beraktivitas sehari-hari. Kami juga menyediakan rekomendasi video, audio dan artikel untuk ibu
    agar ibu bisa lebih tenang silahkan dilihat atau didengarkan. jika hal itu tidak membantu, ibu bisa segera menghubungi Psikolog yang kita rekomendasikan dibawah' : 'Hore! Skor ibu menunjukkan tidak ada gejala Postpartum Depression atau Depresi Pasca Melahirkan. 
    Jika ibu merasa ada gejala yang berkembang atau perlu ruang aman untuk curhat, segera konsultasi pada ahli. Tetap jaga kesehatan dan pikiran ibu, agar ibu senang dan bayi pun sehat.';

    // Simpan hasil kuisioner
    $hasilKuisionerModel = new HasilKuisionerModel();
    $data = [
        'total_skor' => $totalSkor,
        'hasil_kesimpulan' => $hasil
    ];

    try {
        $hasilKuisionerModel->insert($data);
        return $this->respondCreated([
            'message' => 'Jawaban kuisioner berhasil disimpan',
            'hasil' => $hasil,
            'total_skor' => $totalSkor
        ]);
    } catch (\Exception $e) {
        return $this->failServerError('Gagal menyimpan hasil kuisioner: ' . $e->getMessage());
    }
}




public function read()
{
    $hasilKuisionerModel = new HasilKuisionerModel();
    $latestResult = $hasilKuisionerModel->orderBy('id', 'DESC')->first();

    if ($latestResult === null) {
        return $this->failNotFound('Data hasil kuisioner tidak ditemukan.');
    }

    return $this->respond($latestResult);
}

public function delete($id = null)
{
    // Cek apakah ada ID yang dikirim
    if ($id === null) {
        return $this->fail('ID tidak boleh kosong');
    }

    // Inisialisasi model
    $hasilKuisionerModel = new HasilKuisionerModel();

    // Cek apakah data dengan ID yang diberikan ada
    $data = $hasilKuisionerModel->find($id);

    if (!$data) {
        return $this->fail('Data tidak ditemukan');
    }

    // Hapus data
    try {
        $hasilKuisionerModel->delete($id);
        return $this->respondDeleted([
            'message' => 'Data berhasil dihapus',
            'data' => $data
        ]);
    } catch (\Exception $e) {
        return $this->failServerError('Gagal menghapus data: ' . $e->getMessage());
    }
}

public function readAll()
{
    $hasilKuisionerModel = new HasilKuisionerModel();
    $results = $hasilKuisionerModel->findAll();

    if (empty($results)) {
        return $this->failNotFound('Data hasil kuisioner tidak ditemukan.');
    }

    return $this->respond($results);
}
}


