<?= $this->extend('layout') ?>
<?= $this->section('content') ?>

<h1>Update Thread : <?= $thread->judul ?></h1>

<?php
$id = [
    'id' => $thread->id
];
$judul = [
    'name' => 'judul',
    'value' => $thread->judul,
];
$isi = [
    'name' => 'isi',
    'id' => 'isi',
    'value' => $thread->isi,
];
$id_kategori = [
    'name' => 'id_kategori',
    'options' => $arrayKategori,
    'selected' => $thread->id_kategori,
];
$submit = [
    'name' => 'submit',
    'value' => 'submit',
    'type' => 'submit',
    'class' => 'button'
];
?>

<div class="container">
<?= form_open_multipart('update/'.$thread->id) ?>

    <div class="form-group">
        <?= form_label("Judul", "judul", ['class' => 'form-label']) ?>
        <?= form_input($judul, '', 'class="form-control"') ?>
    </div>

    <div class="form-group">
        <?= form_label("Kategori", "id_kategori", ['class' => 'form-label']) ?>
        <?= form_dropdown($id_kategori, '', 'class="form-control"') ?>
    </div>

    <div class="form-group">
        <?= form_label("Isi", "isi", ['class' => 'form-label']) ?>
        <?= form_textarea($isi, '', 'class="form-control"') ?>
    </div>

    <div class="form-group">
        <?= form_submit($submit) ?>
    </div>

    <?= form_close() ?>

    <style>
        .form-group {
            margin-bottom: 20px;
        }
    
        .form-label {
            font-weight: bold;
        }
    
        .form-control {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
    
        .button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
        }
        .ck-editor__editable_inline{
         min-height: 200px;
        }
    </style>
</div>

<?= $this->endSection() ?>

<?= $this->section('script') ?>
<script src="<?=base_url('ckeditor5/ckeditor.js') ?>"></script>
<script>
    ClassicEditor
        .create(document.querySelector('#isi'),{
            ckfinder:{
               uploadUrl: "<?= base_url('uploadImages') ?>", // Perbaiki URL menjadi 'uploadImages'
            },
        }).then(editor=> {
            console.log(editor);
        }).catch(error=> {
            console.log(error);
        });
</script>
<?= $this->endSection() ?>

