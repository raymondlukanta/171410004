<!DOCTYPE html>
<html>
  <head>
    <title>Detail Anggota</title>
    <link rel="stylesheet" type="text/css" href="style2.css">
  <?php
  error_reporting(E_ERROR | E_WARNING | E_PARSE);
  include("koneksi.php");
   // mengaktifkan session
session_start();
 
// cek apakah user telah login, jika belum login maka di alihkan ke halaman login
if($_SESSION['status'] !="login"){
  header("location:login.php");
} 
?> 
  </head>
<body>
  <nav>
    <ul class="kiri">
    </ul>
  </nav>
            <div class="sidebar">
               
                <ul class="nav side-menu">
      <li><a href="index.php">Home</a></li>
      <li><a href="anggota.php">Anggota</a></li>
      <li><a href="Transaksi.php">Transaksi</a></li>
      <li><a href="Libur.php">Libur</a></li>
      <li><a href="buku.php">Buku</a></li>
      <li><a href="config.php">Config</a></li>
      <li><a href="Pegawai.php">Jenis</a></li>
      <li><a href="Absensi.php">Lokasi</a></li>
      <li><a href="Pegawai.php">Pengunjung</a></li>
      <li><a href="Absensi.php">Kelas</a></li>
      <li><a href="logout.php">LOGOUT</a></li>
    </ul>
  </div>

             <div class="right">
    <div class="isimain">
      <?php
    $link = koneksi_db(); 
    $id = $_GET['id_anggota'];
        $sql = "SELECT * FROM anggota WHERE id_anggota='$id'"; 
        $res = mysqli_query($link,$sql);
        $banyakrecord = mysqli_num_rows($res); 
         $i=0;
        while($data=mysqli_fetch_array($res)){ 
              $i++;
              ?>
           <h3>Detail Anggota</h3>
     <div class="content">
        <table class="table-form" border="0" width="100%" cellpadding="10" cellspacing="10">
              <tr>
                <tr>
                <td width="20%">Id Anggota</td>
                <td width="1%">:</td>
                <td><?php echo $data['id_anggota']; ?></td>
            </tr>
            <tr>
                <td>Nama</td>
                <td width="1%">:</td>
                <td><?php echo $data['nama']; ?></td>
            </tr>
            <tr>
                <td>Alamat</td>
                <td width="1%">:</td>
                <td><?php echo $data['alamat']; ?></td>
            </tr>
            <tr>
                <td>Jenis Kelamin</td>
                <td width="1%">:</td>
                <td><?php echo $data['jk']; ?></td>
            </tr>
            <tr>
                <td>Agama</td>
                <td width="1%">:</td>
                <td><?php echo $data['agama']; ?></td>
            </tr>
            <tr>
                <td>Tempat Lahir</td>
                <td width="1%">:</td>
                <td><?php echo $data['tmp_lahir']; ?></td>
            </tr>
            <tr>
                <td>Tanggal Lahir</td>
                <td width="1%">:</td>
                <td><?php echo $data['tgl_lahir']; ?></td>
            </tr>
             <tr>
                <td>Tanggal Daftar</td>
                <td width="1%">:</td>
                <td><?php echo $data['tgl_daftar']; ?></td>
            </tr>
          </table>
          <?php
        }
          ?>
      </div>
      <a href="anggota.php"><input type="submit" value="Kembali"></a>
      </div>



           
  </body>
</html>
