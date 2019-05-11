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
	<title>Update Data</title>
</head>
<body>
	<nav>
		<ul class="kiri">
			<li><a href="index.php">UPDATE DATA</a></li>
		</ul>
	</nav>
	<div class="sidebar">
		<ul>
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
			<?php
			$id = $_GET['id'];
			$link = koneksi_db();
			$sql = "SELECT * FROM config WHERE id='$id'";
			$res = mysqli_query($link,$sql);

			if (mysqli_num_rows($res)==1) {
				$data = mysqli_fetch_array($res);
			?>
			<form action="proses_update_config.php?id=<?=$data['id']; ?>" method="POST">
				<h1><font size="5">Edit Config : </font></h1><br>
				<table width="430px">
					
					<tr>
						<td>Nama</td><td>:</td>
						<td>
							<input type="text" name="nama"  value="<?=$data['nama'];?>" maxlength="5" autocomplete required>
						</td>
					</tr>
					<tr>
						<td>Alamat</td><td>:</td>
						<td>
							<input type="text" name="alamat"  value="<?=$data['alamat'];?>" maxlength="150"  autocomplete required>
						</td>
					</tr>
					<tr>
						<td>Pimpinan</td><td>:</td>
						<td>
							<input type="text" name="pimpinan"  value="<?=$data['pimpinan'];?>" maxlength="150" autocomplete required>
						</td>
					</tr>
					<tr>
						<td>NIP Pimpinan</td><td>:</td>
						<td>
							<input type="text" name="pimpinan_nip"  value="<?=$data['pimpinan_nip'];?>"  maxlength="150" autocomplete required>
						</td>
					</tr>
					<tr>
						<td>Petugas</td><td>:</td>
						<td>
							<input type="text" name="petugas"  value="<?=$data['petugas'];?>" maxlength="150" autocomplete required>
						</td>
					</tr>
					<tr>
						<td>NIP Petugas</td><td>:</td>
						<td>
							<input type="text" name="petugas_nip"  value="<?=$data['petugas_nip'];?>" maxlength="150" autocomplete required>
						</td>
					</tr>
					<tr>
						<td>Tahun</td><td>:</td>
						<td>
							<input type="text" name="tahun" value="<?=$data['tahun'];?>" maxlength="150" autocomplete required>
						</td>
					</tr>
				
				
					<tr>
						<td colspan="3" style="padding-top: 15px;text-align: center;"><input type="submit" value="Simpan" name="save"></td>
					</tr>
				</table>
			</form>
			<?php } ?>
		</div>
	</div>
</body>
</html>