<?php

namespace App\Controllers;

use App\Models\ReportModel;
use App\Models\Thread; // Model untuk menghandle thread
use App\Models\Reply; // Model untuk menghandle reply
use App\Models\BalasanReply; // Model untuk menghandle balasan reply
use App\Models\DataAdminModel; // Model untuk menghandle data admin
use App\Models\DataIbuModel; // Model untuk menghandle data ibu
use CodeIgniter\RESTful\ResourceController;

class ReportControl extends ResourceController
{
    protected $modelName = 'App\Models\ReportModel';
    protected $format    = 'json';

    public function createReport()
    {
        $rules = [
            'id_thread'       => 'permit_empty|integer',
            'id_reply'        => 'permit_empty|integer',
            'id_balasan_reply' => 'permit_empty|integer',
            'alasan'          => 'required|string',
            'create_by_ibu'   => 'required|integer',
        ];

        if (!$this->validate($rules)) {
            return $this->failValidationErrors($this->validator->getErrors());
        }

        $data = $this->request->getPost();

        // Validasi salah satu dari id_thread, id_reply, id_balasan_reply harus diisi
        if (empty($data['id_thread']) && empty($data['id_reply']) && empty($data['id_balasan_reply'])) {
            return $this->failValidationErrors('Salah satu dari id_thread, id_reply, atau id_balasan_reply harus diisi');
        }

        // Mengambil isi, reported_ibu dan reported_admin berdasarkan id yang diberikan
        if (!empty($data['id_thread'])) {
            $threadModel = new Thread();
            $thread = $threadModel->find($data['id_thread']);
            if ($thread) {
                $data['isi'] = $thread['isi'];
                $data['reported_ibu'] = $thread['create_by_ibu'];
                $data['reported_admin'] = $thread['create_by_admin'] ?? null; // Tambahkan ini
            } else {
                return $this->failNotFound('Thread tidak ditemukan');
            }
        } elseif (!empty($data['id_reply'])) {
            $replyModel = new Reply();
            $reply = $replyModel->find($data['id_reply']);
            if ($reply) {
                $data['isi'] = $reply['isi'];
                $data['reported_ibu'] = $reply['create_by_ibu'];
                $data['reported_admin'] = $reply['create_by_admin'] ?? null; // Tambahkan ini
            } else {
                return $this->failNotFound('Reply tidak ditemukan');
            }
        } elseif (!empty($data['id_balasan_reply'])) {
            $balasanReplyModel = new BalasanReply();
            $balasanReply = $balasanReplyModel->find($data['id_balasan_reply']);
            if ($balasanReply) {
                $data['isi'] = $balasanReply['isi'];
                $data['reported_ibu'] = $balasanReply['create_by_ibu'];
                $data['reported_admin'] = $balasanReply['create_by_admin'] ?? null; // Tambahkan ini
            } else {
                return $this->failNotFound('Balasan Reply tidak ditemukan');
            }
        }

        // Simpan report ke database
        $reportModel = new ReportModel();
        if ($reportModel->insert($data)) {
            return $this->respondCreated(['message' => 'Report berhasil dibuat']);
        } else {
            return $this->failServerError('Gagal membuat report');
        }
    }

    public function getReport()
    {
        $reportModel = new ReportModel();
        $report = $reportModel->findAll();

        if (!$report) {
            return $this->failNotFound('Tidak ada report yang ditemukan');
        }

        return $this->respond($report);
    }

    public function deleteReport($id)
    {
        $reportModel = new ReportModel();
        $report = $reportModel->find($id);

        if (!$report) {
            return $this->failNotFound('Report tidak ditemukan');
        }

        // Hapus data yang dilaporkan dan gambar terkait
        if (!empty($report['id_thread'])) {
            $threadModel = new Thread();
            $thread = $threadModel->find($report['id_thread']);
            if ($thread) {
                if ($thread['gambar_thread'] && file_exists('uploads/' . $thread['gambar_thread'])) {
                    unlink('uploads/' . $thread['gambar_thread']);
                }
                $threadModel->delete($report['id_thread']);
            }
        } elseif (!empty($report['id_reply'])) {
            $replyModel = new Reply();
            $reply = $replyModel->find($report['id_reply']);
            if ($reply) {
                if ($reply['gambar_reply'] && file_exists('uploads/' . $reply['gambar_reply'])) {
                    unlink('uploads/' . $reply['gambar_reply']);
                }
                $replyModel->delete($report['id_reply']);
            }
        } elseif (!empty($report['id_balasan_reply'])) {
            $balasanReplyModel = new BalasanReply();
            $balasanReply = $balasanReplyModel->find($report['id_balasan_reply']);
            if ($balasanReply) {
                if ($balasanReply['gambar_balasan_reply'] && file_exists('uploads/' . $balasanReply['gambar_balasan_reply'])) {
                    unlink('uploads/' . $balasanReply['gambar_balasan_reply']);
                }
                $balasanReplyModel->delete($report['id_balasan_reply']);
            }
        }

        // Hapus laporan dari tabel report
        if ($reportModel->delete($id)) {
            return $this->respondDeleted(['message' => 'Report dan data yang dilaporkan berhasil dihapus']);
        } else {
            return $this->failServerError('Gagal menghapus report');
        }
    }
}
