<?= $this->extend('layout') ?>
<?= $this->section('content') ?>

<style>
    table {
        border-collapse: collapse;
        width: 100%;
    }
    th, td {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }
    th {
        background-color: #f2f2f2;
    }
</style>

<h1>Threads</h1>
<a href="<?= base_url('create') ?>" class="button">Buat Forum Baru</a>

<table>
    <thead>
        <tr>
            <th>No</th>
            <th>Judul</th>
            <th>Kategori</th>
            <!-- <th>Posted By</th> -->
            <!-- <?php if(session()->get('role')==0): ?> JIKA SUDAH ADA ADMIN BISA DIAKTIFKAN LAGI--> 
            <th>Action</th>
            <!-- <?php endif ?> -->
        </tr>
    </thead>
    <tbody>
        <?php foreach($thread->getResult() as $key => $threadItem): ?> <!-- Mengubah variabel $thread menjadi $threadItem untuk menghindari konflik dengan variabel iterasi -->
        <tr> <!-- Menambahkan tag <tr> untuk setiap baris -->
            <td><?= $key + 1 ?></td>
            <td>
                <a href="<?= base_url('thread/view/' . $threadItem->id) ?>"> <!-- Memperbaiki URL dengan menambahkan tanda "/" sebelum id -->
                    <?= $threadItem->judul ?>
                </a>
            </td>
            <td><?= $threadItem->kategori ?></td>
            
            <!-- <?php if(session()->get('role')==0): ?> -->
            <td>
            <form action="<?= base_url('thread/update/' . $threadItem->id) ?>" method="get" style="display: inline;">
                <button type="submit">Update</button>
            </form>
            <form action="<?= base_url('thread/delete/' . $threadItem->id) ?>" method="post" style="display: inline;">
                <input type="hidden" name="_method" value="DELETE">
                <button type="submit">Delete</button>
            </form>
            </td>
            <!-- <?php endif ?> -->
        </tr> <!-- Menutup tag <tr> untuk setiap baris -->
        <?php endforeach ?>
    </tbody>
</table>

<?= $this->endSection() ?>
