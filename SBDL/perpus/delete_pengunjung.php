<?php
include 'koneksi.php';
$id = $_GET['id'];
$link = koneksi_db();
$sql = "DELETE FROM pengunjung WHERE id='$id'";
$res = mysqli_query($link,$sql);
if ($res) {
	?>
	<script type="text/javascript">
		alert("Data kategori dengan ID <?=$id?> berhasil dihapus");
		window.location.href="pengunjung.php";
	</script>
	<?php
} else{
	?>
	<script type="text/javascript">
		alert("Data gagal dihapus");
		window.location.href="pengunjung.php";
	</script>
	<?php
}
?>