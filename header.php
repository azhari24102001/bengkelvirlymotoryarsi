<nav class="navbar navbar-expand-lg navbar-light bg-dark" >
    <div class="container">
        <a class="navbar-brand" href="#" style="color: white;">Bengkel Virly</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="btn btn-primary" style='margin-right:8px'  aria-current="page" href="index.php">Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="btn btn-primary" style='margin-right:8px' href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Menu di Bengkel
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="service.php">Service</a></li>
                        <li><a class="dropdown-item" href="mobil.php">Mobil</a></li>
                        <li><a class="dropdown-item" href="sparepart.php">Sparepart</a></li>
                    </ul>
                </li>
                <!-- <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="index.php">Kontak </a>
                </li> -->
                <!-- menu navigasi "Keranjang", "Riwayat", "Logout", atau "Login" yang muncul tergantung pada apakah sesi pengguna telah terdaftar (login) atau belum. -->
                <li class="nav-item">
                    <?php if (isset($_SESSION["user"])) : ?>
                        <a class="btn btn-primary" style='margin-right:8px'  href="keranjang.php">Keranjang</a>
                    <?php endif ?>
                </li>
                <li class="nav-item">
                    <?php if (isset($_SESSION["user"])) : ?>
                        <a class="btn btn-primary" style='margin-right:8px'  href="note.php">Riwayat</a>
                    <?php endif ?>
                </li>
                <li class="nav-item">
                    <?php if (isset($_SESSION["user"])) : ?>
                        <a class="btn btn-primary" style='margin-right:8px' href="#" onclick="confirmLogout()">Logout</a>
                    <?php else : ?>
                        <a class="btn btn-primary" style='margin-right:8px' href="login.php">Login</a>
                    <?php endif ?>
                </li>
                <!-- <li>
                    <a href="https://wa.me/0895365253632" class="btn btn-primary">Kontak Kami</a>
                </li> -->
            </ul>
        </div>
        <form action="cari.php" method="get" class="navbar-form navbar-right d-flex navbar-nav ">
                <input type="text" class="form-control mr-sm-2" name="keyword" placeholder="Cari">
                <button class="btn btn-primary my-2 my-sm-0" type="submit">Cari</button>
            </form>
    </div>
</nav>

<script>
    function confirmLogout() {
        if (confirm("Anda yakin ingin logout?")) {
            window.location.href = "logout.php";
        }
    }
</script>
