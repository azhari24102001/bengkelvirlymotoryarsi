<?php
session_start();
include '../koneksi.php';
if (!isset($_SESSION['user']))
{
  echo"<script>alert('anda harus login')</script>";
  echo"<script>location='login.php';</script>";
  header('location:login.php');
  exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kelola Aplikasi</title>
    <?php include '../component.php' ?>
    <style>
        .btn-container {
            margin-top: 15px;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <?php include 'headerkelolaadmin.php'?>
    <!-- <php include 'headeradmin.php'?> -->
    <br><br>
    <h1><center>Kelola Aplikasi Admin</center></h1>
    <br><br>
    <div class="buton">
        <div align="center" class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6 btn-container">
                    <a href="datauser.php" class="btn btn-primary btn-lg btn-block">Data User</a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 btn-container">
                    <a href="riwayatadmin.php" class="btn btn-primary btn-lg btn-block">Riwayat Pembelian</a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 btn-container">
                    <a href="pembayaran.php" class="btn btn-primary btn-lg btn-block">Pembayaran</a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 btn-container">
                    <a href="view.php?cari=1" class="btn btn-primary btn-lg btn-block">Kelola Data</a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 btn-container">
                    <a href="datacarousel.php" class="btn btn-primary btn-lg btn-block">Carousel</a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 btn-container">
                    <a href="datafaq.php" class="btn btn-primary btn-lg btn-block">FAQ</a>
                </div>
            </div>
        </div>
        <br><br>
    </div>    
</body>
</html>
