<?php

namespace App\Controllers;

use App\Models\HasilKuisionerModel_2;
use App\Models\KuisionerModel_2;
use CodeIgniter\RESTful\ResourceController;

class KuisionerControl_2 extends ResourceController
{
    protected $kuisionerModel_2;
    protected $hasilKuisionerModel_2;

    public function __construct()
    {
        $this->kuisionerModel_2 = new KuisionerModel_2(); 
        $this->hasilKuisionerModel_2 = new HasilKuisionerModel_2(); 
    }

    // GET: Retrieve all kuisioner
    public function index()
    {
        return $this->respond($this->getQuestions());
    }

    // Method to get questions from database
    protected function getQuestions()
    {
        $questions = $this->kuisionerModel_2->findAll();
        $data = [];

        foreach ($questions as $question) {
            $data[] = [
                'id' => $question['id'],
                'pernyataan' => $question['pernyataan']
            ];
        }

        return $data;
    }

    // POST: Save kuisioner result
    public function simpanHasil_2()
{
    $json = $this->request->getJSON();
    $jawaban = json_decode(json_encode($json->jawaban), true); // Konversi ke array

    // Pastikan ada jawaban yang dikirim
    if (empty($jawaban)) {
        return $this->fail('Tidak ada jawaban yang dikirim.', 400);
    }

    // Ambil total skor internal dan eksternal dari data yang dikirimkan
    $totalSkorInternal = $json->total_skor_internal;
    $totalSkorEksternal = $json->total_skor_eksternal;

    // Tentukan hasil kesimpulan
    $hasilInternal = ($totalSkorInternal >= 53) ? 'Berdasarkan Hasil Tes, ibu kemungkinan mengalami sejumlah tanda-tanda atau gejala "Terkena Sindrom Baby Blues". Untuk memeriksa lebih jauh lagi, mari kita coba tes berikutnya dengan klik tombol di bawah hasil tes ini' : 'Hore Selamat! Ibu telah melewati tes tanpa menunjukkan tanda-tanda Terkena Sindrom Baby Blues. Ini adalah pencapaian yang baik sekali tetap jaga kesehatan tubuh dan pikiran, Okayy!!';
    $hasilEksternal = ($totalSkorEksternal >= 19) ? 'Lalu sumber dukungan yang didapatkan tidak adekuat, yaitu jika ibu merasa bahwa sumber dukungan tidak mencukupi atau merasa butuh lebih banyak dukungan sosial, sangat disarankan untuk mencari sumber dukungan terdekat kami ingin memastikan bahwa ibu mendapatkan dukungan yang tepat. Kami ada di sini untuk membantu ibu melalui setiap langkah perjalanan ini,
    jadi jangan ragu untuk mencari bantuan yang diperlukan.' : 'dan ibu telah memiliki dukungan sosial yang cukup dan optimal dari lingkungan sekitar';

    // Simpan hasil kuisioner
    $data = [
        'total_skor_internal' => $totalSkorInternal,
        'total_skor_eksternal' => $totalSkorEksternal,
        'hasil_kesimpulan' => $hasilInternal . ', ' . $hasilEksternal
    ];

    try {
        $this->hasilKuisionerModel_2->insert($data);
        return $this->respondCreated([
            'message' => 'Hasil kuisioner berhasil disimpan.',
            'total_skor_internal' => $totalSkorInternal,
            'total_skor_eksternal' => $totalSkorEksternal,
            'hasil_kesimpulan' => $hasilInternal . ', ' . $hasilEksternal
        ]);
    } catch (\Exception $e) {
        return $this->failServerError('Gagal menyimpan hasil kuisioner: ' . $e->getMessage());
    }
}

    // GET: Retrieve all hasil kuisioner
    public function read()
    {
        $latestResult = $this->hasilKuisionerModel_2->orderBy('id', 'DESC')->first();

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
    $hasilKuisionerModel = new HasilKuisionerModel_2();

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
    $hasilKuisionerModel = new HasilKuisionerModel_2();
    $results = $hasilKuisionerModel->findAll();

    if (empty($results)) {
        return $this->failNotFound('Data hasil kuisioner tidak ditemukan.');
    }

    return $this->respond($results);
}
}
