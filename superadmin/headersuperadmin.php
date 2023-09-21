<script src="https://kit.fontawesome.com/640ce77c8b.js" crossorigin="anonymous"></script>
<nav class="navbar navbar-expand-lg navbar-light bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="#" style="color: white;">Bengkel Virly</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-1">
                <li class="nav-item dropdown">
                  <li class="nav-item">
                    <a class="btn btn-primary" style='margin-right:8px' aria-current="page" href="kelolaaplikasi.php">Home</a>
                  </li>
                  <li class="nav-item">
                        <a class="btn btn-primary" style='margin-right:8px' href="dataadmin.php">Data Admin</a>
                  </li>
                  <li class="nav-item">
                        <a class="btn btn-primary" style='margin-right:8px' href="datauser.php">Data User</a>
                  </li>
                  <li class="nav-item">
                        <a class="btn btn-primary" style='margin-right:8px' href="riwayatsuperadmin.php">Riwayat Pembelian</a>
                  </li>
                  <li class="nav-item">
                        <a class="btn btn-primary" style='margin-right:8px' href="pembayaran.php">Pembayaran</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="btn btn-primary" style='margin-right:8px' dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Kelola Bengkel
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a href="view.php?cari=1" class="dropdown-item">Service</a></li>
                      <li><a href="view.php?cari=2" class="dropdown-item">Sparepart</a></li>
                      <li><a href="view.php?cari=3" class="dropdown-item">Mobil</a></li>
                    </ul>
                  </li>
                  <li class="nav-item">
                        <a class="btn btn-primary" style='margin-right:8px' href="datacarousel.php">Carousel</a>
                  </li>
                  <li class="nav-item">
                        <a class="btn btn-primary" style='margin-right:8px' href="datafaq.php">FAQ</a>
                  </li>
              <li class="nav-item">
                    <?php if (isset($_SESSION["user"])) : ?>
                        <a class="btn btn-primary" style='margin-right:8px' href="#" onclick="confirmLogout()">Logout</a>
                    <?php else : ?>
                        <!-- <a class="nav-link" href="login.php">Login</a> -->
                    <?php endif ?>
                 </li>
            </ul>
          </div>
        </div>
      </nav>

<script>
    function confirmLogout() {
        if (confirm("Anda yakin ingin logout?")) {
            window.location.href = "../logout.php";
        }
    }
</script>
