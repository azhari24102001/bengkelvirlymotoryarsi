<?php
session_start();
include 'koneksi.php';
if (!isset($_SESSION['user'])) 
{
  echo "<script>alert('Anda harus login');</script>";
  echo "<script>location='login.php';</script>";
  exit();
}

// Cek apakah ada parameter sort di URL
if (isset($_GET['sort'])) {
    $sort = $_GET['sort'];

    // Jika sort bernilai 'desc', berarti urutkan dari harga tertinggi ke terendah
    // Jika sort bernilai 'asc', berarti urutkan dari harga terendah ke tertinggi
    if ($sort === 'desc') {
        $sortQuery = 'DESC';
    } else {
        $sortQuery = 'ASC';
    }
} else {
    // Default pengurutan: dari harga tertinggi ke terendah
    $sort = 'desc';
    $sortQuery = 'DESC';
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sparepart</title>
    <link href="bootstrap-5.3.0-alpha3-dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <?php include 'header.php'; ?>
    <div class="container">
        <br>
        <div class="sparepart">
            <div align="center">
                <h1>Sparepart</h1>
            </div>
        </div>
        <br><br>
        <!-- Tambahkan dropdown untuk memilih opsi pengurutan -->
        <div class="row">
            <div class="col-md-12">
                <div class="btn-group mb-3">
                    <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Urutkan Harga
                    </button>
                    <div class="dropdown-menu">
                        <!-- Tambahkan link dengan parameter sort -->
                        <a class="dropdown-item" href="sparepart.php?sort=desc">Harga Tertinggi ke Terendah</a>
                        <a class="dropdown-item" href="sparepart.php?sort=asc">Harga Terendah ke Tertinggi</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <!-- Modifikasi query SQL berdasarkan opsi pengurutan -->
            <?php 
            $ambil = $koneksi->query("SELECT * FROM sparepart WHERE kategori = 2 AND stok > 0 ORDER BY harga $sortQuery"); 
            while ($perproduk = $ambil->fetch_assoc()) { 
            ?>
            <div class="col-md-3">    
                <div class="thumbnail">
                    <img src="asets/sparepart/<?php echo $perproduk['foto']; ?>" style="width: 70%;">
                    <div class="caption">
                        <h4>Nama: <?php echo $perproduk['nama']; ?></h4>
                        <h4>Stok: <?php echo $perproduk['stok']; ?></h4>
                        <h4>Harga: Rp <?php echo number_format($perproduk['harga']); ?></h4>
                    </div>
                </div>
                <br>
            </div>
            <?php } ?>
        </div>
    </div>
    <br><br>
    <?php include 'footer.php'; ?>
    <script src="bootstrap-5.3.0-alpha3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
