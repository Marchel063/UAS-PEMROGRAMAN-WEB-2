<?php 
    session_start();
 
    // cek apakah yang mengakses halaman ini sudah login
    if($_SESSION['level']==""){
        header("location:index.php?pesan=gagal");
    }
 
    ?>
    <?php 
require 'functions.php';
$komputer = query("SELECT * FROM komputer");

// tombol cari ditekan
if( isset($_POST["cari"]) ) {
    $komputer = cari($_POST["keyword"]);
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="style2.css">
  <title>Website Resmi</title>
</head>
<style type="text/css">body {
  padding-top: 56px;
}

.jumbotron {
  text-align: center;
}
</style>
<body>

  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="logout.php">Logout</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="halaman_pengurus.php">Beranda <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="komputer.php">Komputer</a>
        </li>
      </ul>
    </div>
  </nav>

  <div class="container mt-4">
    <div class="jumbotron">
      <h1 class="display-4">Selamat Datang di Website Resmi Kami</h1>
      <p class="lead"><center>

<br>
<form action="" method="post">
    <input type="text" name="keyword" size="40" autofocus placeholder="masukkan keyword pencarian.." autocomplete="off">
    <button type="submit" name="cari">Cari!</button> 
</form>
<br>
<table border="1" cellpadding="10" cellspacing="0">

    <tr>
        <th>No.</th>
        <th>Kode Komputer</th>
        <th>Jenis Komputer</th>
        <th>Harga</th>
        <th>Lokasi</th>
    </tr>

    <?php $i = 1; ?>
    <?php foreach( $komputer as $row ) : ?>
    <tr>
        <td><?= $i; ?></td>
        <td><?= $row["kodekomputer"]; ?></td>
        <td><?= $row["jeniskomputer"]; ?></td>
        <td><?= $row["harga"]; ?></td>
        <td><?= $row["lokasi"]; ?></td>
    </tr>
    <?php $i++; ?>
    <?php endforeach; ?>
    
</table></center></p>
      <hr class="my-4">
      <p>Tetap terhubung dengan kami untuk mendapatkan informasi terbaru.</p>
    </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
