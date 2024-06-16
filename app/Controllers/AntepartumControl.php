<?php

namespace App\Controllers;

use App\Models\HasilAntepartum;
use App\Models\AntepartumModel;
use CodeIgniter\RESTful\ResourceController;

class AntepartumControl extends ResourceController
{
    protected $antepartumModel;
    protected $hasilAntepartum;

    public function __construct()
    {
        $this->antepartumModel = new AntepartumModel(); 
        $this->hasilAntepartum = new HasilAntepartum(); 
    }

    // GET: Retrieve all kuisioner
    public function index()
    {
        return $this->respond($this->getQuestionss());
    }

    // Method to get questions from database
    protected function getQuestionss()
    {
        $questions = $this->antepartumModel->findAll();
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
    public function simpanHasilAntepartum()
    {
        $json = $this->request->getJSON();
        $jawaban = json_decode(json_encode($json->jawaban), true); // Convert to array

        // Ensure there are answers sent
        if (empty($jawaban)) {
            return $this->fail('Tidak ada jawaban yang dikirim.', 400);
        }

        // Retrieve total scores from sent data
        $totalSkorInternal = $json->total_skor_internal;
        $totalSkorEksternal = $json->total_skor_eksternal;

        // Determine conclusion results
        $hasilInternal = ($totalSkorInternal >= 15) ? 'Berdasarkan Hasil Tes, tampaknya ibu kemungkinan mengalami sejumlah tanda-tanda "Resiko Terkena Sindrom Baby Blues". Kami menyediakan beberapa rekomendasi Video, Audio, dan Artikel yang bisa ibu lihat dan dengarkan untuk mencegah dan mengatasi Resiko Sindrom Baby Blues menjadi lebih parah, jika hal itu tidak membantu, kami juga menyediakan rekomendasi Psikolog yang bisa ibu hubungi' : 'Hore Selamat! Ibu telah melewati tes tanpa menunjukkan tanda-tanda Resiko Terkena Sindorm Baby Blues. Ini adalah pencapaian yang baik sekali, tetap jaga kesehatan tubuh dan pikiran ibu, okayy!!';
        $hasilEksternal = ($totalSkorEksternal >= 33) ? 'Lalu sumber dukungan yang didapatkan tidak adekuat, yaitu jika ibu merasa bahwa sumber dukungan tidak mencukupi atau merasa butuh lebih banyak dukungan sosial, sangat disarankan untuk mencari sumber dukungan terdekat kami ingin memastikan bahwa ibu mendapatkan dukungan yang tepat. Kami ada di sini untuk membantu ibu melalui setiap langkah perjalanan ini, jadi jangan ragu untuk mencari bantuan yang diperlukan.' : 'dan ibu telah memiliki dukungan sosial yang cukup dan optimal dari lingkungan sekitar';

        // Save kuisioner results
        $data = [
            'total_skor_internal' => $totalSkorInternal,
            'total_skor_eksternal' => $totalSkorEksternal,
            'hasil_kesimpulan' => $hasilInternal . ', ' . $hasilEksternal
        ];

        try {
            $this->hasilAntepartum->insert($data);
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
        $latestResult = $this->hasilAntepartum->orderBy('id', 'DESC')->first();

        if ($latestResult === null) {
            return $this->failNotFound('Data hasil kuisioner tidak ditemukan.');
        }

        return $this->respond($latestResult);
    }

    // DELETE: Remove hasil kuisioner
    public function delete($id = null)
    {
        // Check if ID is provided
        if ($id === null) {
            return $this->fail('ID tidak boleh kosong');
        }

        // Check if data exists
        $data = $this->hasilAntepartum->find($id);

        if (!$data) {
            return $this->fail('Data tidak ditemukan');
        }

        // Delete data
        try {
            $this->hasilAntepartum->delete($id);
            return $this->respondDeleted([
                'message' => 'Data berhasil dihapus',
                'data' => $data
            ]);
        } catch (\Exception $e) {
            return $this->failServerError('Gagal menghapus data: ' . $e->getMessage());
        }
    }

    // GET: Retrieve all hasil kuisioner
    public function readAll()
    {
        $results = $this->hasilAntepartum->findAll();

        if (empty($results)) {
            return $this->failNotFound('Data hasil kuisioner tidak ditemukan.');
        }

        return $this->respond($results);
    }
}
