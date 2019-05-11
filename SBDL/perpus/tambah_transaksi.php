<!DOCTYPE html>
<html>
<head>
	<?php
		error_reporting(E_ERROR | E_WARNING | E_PARSE);
		include "koneksi.php"; 
// mengaktifkan session
session_start();
 
// cek apakah user telah login, jika belum login maka di alihkan ke halaman login
if($_SESSION['status'] !="login"){
  header("location:login.php");
}
	?>
	<link rel="stylesheet" type="text/css" href="style2.css">
	<title>Tambah Transaksi</title>
</head>
<body>
	<nav>
		<ul class="kiri">
		</ul>
	</nav>
	<div class="sidebar">
		<ul>
		<li><a href="index.php">Home</a></li>
      <li><a href="index.php">Home</a></li>
      <li><a href="anggota.php">Anggota</a></li>
      <li><a href="Transaksi.php">Transaksi</a></li>
      <li><a href="libur.php">Libur</a></li>
      <li><a href="buku.php">Buku</a></li>
      <li><a href="config.php">Config</a></li>
      <li><a href="jenis.php">Jenis</a></li>
      <li><a href="lokasi.php">Lokasi</a></li>
      <li><a href="pengunjung.php">Pengunjung</a></li>
      <li><a href="kelas.php">Kelas</a></li>
      <li><a href="logout.php">LOGOUT</a></li>
		</ul>
	</div>
	<div class="main">
		<div class="isimain">
			<form method="POST" enctype="multipart/form-data">
				<h1><font size="5" style="text-align: left;">Tambah Transaksi : </font></h1><br>
				<table width="150px" border="0">
					<tr>
						<td>Id Buku</td><td>:</td>
						<td>
							<input type="text" name="id_buku" maxlength="150" autocomplete required>
						</td>
					</tr>
					<tr>
						<td>Id Anggota</td><td>:</td>
						<td>
							<input type="text" name="id_anggota"  maxlength="150" autocomplete required>
						</td>
					</tr>
					<tr>
						<td>Tanggal Pinjaman</td><td>:</td>
						<td>
							<input type="date" name="tgl_pinjaman">
						</td>
					</tr>
					<tr>
						<td>Tanggal Kembali</td><td>:</td>
						<td>
							<input type="date" name="tgl_kembali">
						</td>
					</tr>
					<tr>
						<td>Statistik</td><td>:</td>
						<td>
							<input type="text" name="stat"  maxlength="50" autocomplete required>
						</td>
					</tr>
					<tr>
						<td>Telat</td><td>:</td>
						<td>
							<input type="text" name="telat"  maxlength="50" autocomplete required>
						</td>
					</tr>
					<tr>
						<td>Denda</td><td>:</td>
						<td>
							<input type="number" min="1" max="100000000" step="1" name="denda"  maxlength="50" autocomplete required>
						</td>
					</tr>
					<tr>
						<td colspan="5" style="padding-top: 15px;text-align: center;"><input type="submit" value="Simpan" name="save"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<?php
		//AmbildatadariForm 

		 // susunSQL
		 // EksekusiSQL

		if (isset($_POST['save'])) {
  		$id = $_POST['id']; 
 	 	$id_buku  = $_POST['id_buku'];
  		$id_anggota = $_POST['id_anggota'];
  		$tgl_pinjaman= $_POST['tgl_pinjaman'];
  		$tgl_kembali= $_POST['tgl_kembali'];
  		$stat  = $_POST['stat'];
  		$telat = $_POST['telat'];
  		$denda= $_POST['denda'];
			$sql = "INSERT INTO transaksi (id,id_buku,id_anggota,tgl_pinjaman,tgl_kembali,stat,telat,denda) VALUES ('$id', '$id_buku', '$id_anggota', '$tgl_pinjaman', '$tgl_kembali', '$stat', '$telat', '$denda')";
			$link = koneksi_db();
			$res = mysqli_query($link,$sql);
		if (!$res) {
			echo "<script>alert('Data gagal disimpan');history.go(-1);</script>";
		}else{
			echo "<script>alert('Data Berhasil disimpan');history.go(-1);</script>";
		}
	}
	?>
</body>
</html>