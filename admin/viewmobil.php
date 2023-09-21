<table class="table table-bordered">
	<tr>
		<th>No</th>
		<th>Nama</th>
		<th>Merk</th>
		<th>Harga</th>
		<th>CC</th>
		<th>Tipe BBM</th>
		<th>Tahun</th>
		<th>Jarak Tempuh</th>
		<th>Kondisi</th>
		<th>Foto Mobil</th>
		<th>Action</th>
	</tr>
	<!-- variabel $nomor yang akan digunakan untuk menghitung nomor urut setiap mobil. -->
	<?php $nomor = 1; ?>
	<?php
	// Mengambil data mobil dari database dengan melakukan query menggunakan objek $koneksi. Query ini mengambil 
	// data dari tabel "mobil" dengan kategori yang sama dengan 3 (mobil).
	$ambil = $koneksi->query("SELECT * FROM mobil WHERE kategori = '3'");
	// perulangan dengan menggunakan while untuk menampilkan setiap baris data mobil yang telah diambil. 
	// Setiap atribut mobil ditampilkan dalam elemen <td> yang sesuai dalam tabel.
	while ($pecah = $ambil->fetch_assoc()) {
	?>
		<tr>
			<td><?php echo $nomor; ?></td>
			<td><?php echo $pecah['nama']; ?></td>
			<td><?php echo $pecah['merk']; ?></td>
			<!-- Menampilkan harga mobil dengan menggunakan fungsi number_format() untuk memformat nilai harga menjadi format yang lebih mudah dibaca dengan menambahkan tanda desimal dan ribuan. -->
			<td>Rp <?php echo number_format($pecah['harga']); ?></td>
			<td><?php echo $pecah['cc']; ?></td>
			<td><?php echo $pecah['tipe_bbm']; ?></td>
			<td><?php echo $pecah['tahun']; ?></td>
			<td><?php echo $pecah['jarak_tempuh']; ?> KM</td>
			<td><?php echo $pecah['kondisi']; ?></td>
			<td>
				<img src="../asets/mobil/<?php echo $pecah['foto'] ?>" width="100">
			</td>
			<td>
				<!-- tombol "Hapus" yang mengarahkan ke halaman "delete.php" dengan mengirimkan parameter "id" sparepart yang akan dihapus.  -->
				<a href="deletemobil.php?id=<?php echo $pecah['id'] ?>" onclick="return confirm('Apakah Anda yakin ingin menghapus mobil ini?')" class="btn-danger btn">Hapus</a>
				<!-- tombol "Ubah" yang mengarahkan ke halaman "editsparepart.php" dengan mengirimkan parameter "id" sparepart yang akan diubah. -->
				<a href="editmobil.php?id=<?php echo $pecah['id'] ?>" class="btn btn-warning">Ubah</a>
			</td>
		</tr>
		<?php $nomor++; ?>
	<?php } ?>
</table>
<!-- Menampilkan tombol "Tambah Mobil" yang mengarahkan ke halaman "addmobil.php" untuk menambahkan data mobil ke dalam database. -->
<a href="addmobil.php" class="btn btn-primary">Tambah Mobil</a>
