<?= $this->extend('layout') ?>
<?= $this->section('content') ?>
    <h1><?= $thread->judul ?></h1>
    <div class="container">
        <?= $thread->isi ?>
        <hr>
        <div class="flex-container">
            <div>
                <small>
                    Created By <?= $kategori->kategori ?>
                </small>
            </div>
            <div style="margin-left:700px;">
                <h1><a href="<?= base_url('reply/create/'.$thread->id) ?>" style="color:#12a085">Reply</a></h1>
            </div>
        </div>
    </div>
    <hr>
    <div style="text-align: center;"><h1>Reply</h1></div>
    <hr>
    <?php foreach ($reply->getResult() as $r): ?>
        <div class="container" style="margin-top:30px;">
            <div class="flex-container">
                <div>
                    <!-- untuk avatar user -->
                </div>
                <div>
                    <?= $r->isi ?>
                </div>
            </div>
        </div>
    <?php endforeach ?>
<?= $this->endSection() ?>