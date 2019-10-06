-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 30 Jun 2019 pada 16.56
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(12) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(123, 'crisda', '12345'),
(124, 'dadan', 'dadan12'),
(125, 'deden', 'deden11'),
(126, 'didin', 'dien96'),
(127, 'assegaf', 'iqbal00'),
(128, 'rizmaya', 'crott11'),
(129, 'sigit', 'sigit1912'),
(131, 'nana', 'nananana'),
(134, 'reyza', 'reantino84'),
(143, 'roni', 'hidayat123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
`id_anggota` int(6) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `tmp_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tgl_daftar` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=932 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `alamat`, `jk`, `agama`, `tmp_lahir`, `tgl_lahir`, `tgl_daftar`) VALUES
(230, 'fikri anugrah', 'indramayu', 'Perempuan', 'islam', 'indramayu', '1998-07-04', '2019-10-05'),
(234, 'rifki', 'galonggong', 'laki-laki', 'islam', 'semedang', '1999-07-04', '2019-03-05'),
(246, 'wildan asegaf', 'ciamis', 'laki-laki', 'islam', 'ciamis', '1998-09-04', '2019-03-05'),
(433, 'asep', 'ujung jaya', 'laki-laki', 'islam', 'semedang', '1998-04-04', '2019-03-04'),
(456, 'sindi', 'ranji kulon', 'laki-laki', 'islam', 'majalengka', '1997-04-01', '2019-05-25'),
(675, 'amran', 'kadipaten', 'laki-laki', 'islam', 'majalengka', '1998-06-02', '2019-07-24'),
(786, 'harist', 'jatitujuh', 'laki-laki', 'islam', 'majalengka', '1998-01-09', '2019-09-02'),
(884, 'jaja', 'sukahaji', 'laki-laki', 'islam', 'majalengka', '1995-02-04', '2019-03-05'),
(931, 'ehong', 'bongas', 'laki-laki', 'islam', 'majalengka', '1995-08-09', '2019-07-09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
`id_buku` int(6) NOT NULL,
  `id_kelas` int(6) NOT NULL,
  `id_jenis` int(5) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `pengarang` varchar(250) NOT NULL,
  `penerbit` varchar(250) NOT NULL,
  `th_terbit` year(4) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `jml_hal` int(6) NOT NULL,
  `harga` decimal(12,2) NOT NULL,
  `id_lokasi` int(5) NOT NULL,
  `tgl_input` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1012 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `id_kelas`, `id_jenis`, `judul`, `pengarang`, `penerbit`, `th_terbit`, `isbn`, `jml_hal`, `harga`, `id_lokasi`, `tgl_input`) VALUES
(111, 1, 11, 'jika kamu menjadi tanda tambah', 'Trista Speed Shaskan', 'BIP, Jakarta 2010', 2010, '1234567891011', 300, '200.00', 101, '2019-03-09 10:24:38'),
(222, 2, 22, 'beruang kutub dan panda', 'Matthew J.baek', 'Kid Classic', 2011, '2638194618461', 267, '50.00', 102, '2019-03-30 11:13:43'),
(333, 3, 33, 'Pierre', 'Gustavo Mazali', 'Pt Gramedia Pusaka', 2009, '9371640194716', 234, '70.00', 103, '2019-06-09 09:04:29'),
(444, 4, 44, 'piknik seru', 'Anita Hairunnisa', 'Little Serambi, Jakarta 2009', 2009, '9481037401947', 453, '55.00', 104, '2019-03-20 13:22:36'),
(555, 5, 55, 'buku pintar pengetahuan umum', 'Robert oeban', 'Karisma', 2010, '3817481038134', 342, '100.00', 105, '2019-02-20 12:10:30'),
(666, 6, 66, 'membaca pikiran orang lewat bahasa tubuh', 'dianata eka putra', 'kaifa PT.Mizan pustaka', 2012, '2313909761541', 231, '100.00', 106, '2019-04-11 11:05:23'),
(777, 7, 77, 'rahasia dibalik telepon', 'Prista Rini', 'CV.IASHA JAYA', 2009, '3193419471540', 300, '75.00', 107, '2019-03-31 18:25:17'),
(888, 8, 88, 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka, Yogyakarta', 2005, '3445019471491', 529, '100.00', 108, '2019-06-26 09:05:36'),
(999, 9, 99, 'Perahu Kertas', 'Dewi Lestari (Dee)', 'Treudee Pustaka Sejati dan Bentang Pustaka', 2010, '2130981759340', 444, '75.00', 109, '2019-12-31 23:59:42'),
(1011, 10, 100, '5 Cm', 'Dhonny Dhirgantoro', 'PT. Grasindo, Yogyakarta', 2005, '1234567109482', 381, '80.00', 110, '2019-02-18 10:07:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `config`
--

CREATE TABLE IF NOT EXISTS `config` (
`id` int(5) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pimpinan` varchar(100) NOT NULL,
  `pimpinan_nip` varchar(100) NOT NULL,
  `petugas` varchar(100) NOT NULL,
  `petugas_nip` varchar(100) NOT NULL,
  `tahun` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=930 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `config`
--

INSERT INTO `config` (`id`, `nama`, `alamat`, `pimpinan`, `pimpinan_nip`, `petugas`, `petugas_nip`, `tahun`) VALUES
(94, 'fanny', 'majalengka', 'nana', '848191', 'lolita', '939234', '2019'),
(301, 'sun', 'jepang', 'nana', '848191', 'irithel', '931031', '2019'),
(342, 'kagura', 'cigasong', 'nana', '848191', 'alice', '930193', '2019'),
(391, 'moskov', 'kadipaten', 'nana', '848191', 'harrit', '208423', '2020'),
(482, 'zilong', 'majalengka', 'miya', '82918361', 'layla', '8273719', '2019'),
(645, 'clint', 'ligung', 'nana', '848191', 'leomard', '932013', '2019'),
(748, 'lolita', 'kadipaten', 'nana', '848191', 'jhonson', '398133', '2019'),
(842, 'alucard', 'cijati', 'nana', '848191', 'alice', '930193', '2013'),
(849, 'karrie', 'kasokandel', 'nana', '848191', 'grock', '382193', '2021'),
(929, 'minotour', 'majalengka', 'franco', '3819193', 'odette', '92839103', '2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE IF NOT EXISTS `jenis` (
`id_jenis` int(5) NOT NULL,
  `nama_jenis` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama_jenis`) VALUES
(11, 'buku bacaan'),
(22, 'bacaan non fiksi'),
(33, 'bacaan fiksi'),
(44, 'fiksi ilmiah'),
(55, 'buku ilmiah'),
(66, 'laporan penelitian'),
(77, 'handbook'),
(88, 'jurnal'),
(99, 'buku teks'),
(100, 'sejarah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
`id_kelas` int(5) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, 'kelas_1'),
(2, 'kelas_2'),
(3, 'kelas_3'),
(4, 'kelas_4'),
(5, 'kelas_5'),
(6, 'kelas_6'),
(7, 'kelas_7'),
(8, 'kelas_8'),
(9, 'kelas_9'),
(10, 'kelas_10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `libur`
--

CREATE TABLE IF NOT EXISTS `libur` (
`id` int(5) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=930 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `libur`
--

INSERT INTO `libur` (`id`, `tanggal`, `nama`) VALUES
(94, '2019-03-22', 'fanny'),
(301, '2019-04-19', 'sun'),
(342, '2019-03-22', 'kagura'),
(391, '2019-04-19', 'moskov'),
(482, '2019-09-21', 'zilong'),
(645, '2019-07-16', 'clint'),
(748, '2019-09-25', 'lolita'),
(842, '2019-07-25', 'alucard'),
(849, '2019-10-10', 'karrie'),
(929, '2019-07-25', 'minotour');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE IF NOT EXISTS `lokasi` (
`id_lokasi` int(5) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `nama`) VALUES
(101, 'majalengka'),
(102, 'kadipaten'),
(103, 'maja'),
(104, 'ligung'),
(105, 'cikijing'),
(106, 'jatitujuh'),
(107, 'kertajati'),
(108, 'sukahaji'),
(109, 'rajagaluh'),
(110, 'leuwimunding');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengunjung`
--

CREATE TABLE IF NOT EXISTS `pengunjung` (
`id` int(6) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` text NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `perlu` varchar(200) NOT NULL,
  `saran` varchar(200) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=997 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengunjung`
--

INSERT INTO `pengunjung` (`id`, `nama`, `jk`, `jenis`, `perlu`, `saran`, `tgl`) VALUES
(421, 'mawar', 'perempuan', 'beli', 'membeli buku', '', '2019-03-30'),
(532, 'budi', 'laki-laki', 'beli', 'membeli buku', '', '2019-10-19'),
(567, 'tulip', 'perempuan', 'beli', 'membeli buku', '', '2019-05-09'),
(642, 'melati', 'perempuan', 'beli', 'membeli buku', '', '2019-03-01'),
(685, 'macan', 'laki-laki', 'beli', 'membeli buku', '', '2019-03-07'),
(879, 'gajah', 'laki-laki', 'beli', 'membeli buku', '', '2019-03-30'),
(888, 'anggrek', 'perempuan', 'beli', 'membeli buku', '', '2019-03-21'),
(923, 'singa', 'laki-laki', 'beli', 'membeli buku', '', '2019-11-10'),
(996, 'wawan', 'laki-laki', 'beli', 'membeli buku', '', '2019-06-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
`id` int(6) NOT NULL,
  `id_buku` int(6) NOT NULL,
  `id_anggota` int(6) NOT NULL,
  `tgl_pinjaman` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `stat` varchar(50) NOT NULL,
  `telat` int(2) NOT NULL,
  `denda` decimal(10,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=924 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_buku`, `id_anggota`, `tgl_pinjaman`, `tgl_kembali`, `stat`, `telat`, `denda`) VALUES
(176, 111, 230, '2019-03-01', '2019-03-31', 'pinjam', 3, '20.00'),
(421, 222, 234, '2019-03-02', '2019-04-01', 'pinjam', 2, '20.00'),
(532, 333, 246, '2019-04-01', '2019-04-29', 'pinjam', 3, '20.00'),
(567, 444, 433, '2019-05-02', '2019-06-01', 'pinjam', 2, '20.00'),
(642, 555, 456, '2019-09-10', '2019-08-11', 'pinjam', 3, '20.00'),
(685, 666, 675, '2019-05-07', '2019-03-08', 'pinjam', 3, '20.00'),
(879, 777, 786, '2019-04-08', '2019-05-05', 'pinjam', 3, '20.00'),
(888, 888, 884, '2019-05-31', '2019-05-29', 'pinjam', 3, '20.00'),
(923, 999, 931, '2019-03-01', '2019-03-31', 'pinjam', 2, '20.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(100, 'ipenk69', 'pepeng00', ''),
(112, 'ujang90', 'jangujang90', ''),
(121, 'mamat11', 'mamat1234', ''),
(130, 'budakk21', '07001234', ''),
(141, 'bagas31', 'gasbagas31', ''),
(155, 'adam22', 'adamlepin', ''),
(169, 'martin39', 'martincris', ''),
(171, 'kuyhaaa', 'kuyhadotcom', ''),
(181, 'yasir71', '123456789', ''),
(191, 'demasyur12', 'yur1234', ''),
(192, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_buku`
--
CREATE TABLE IF NOT EXISTS `view_buku` (
`id_buku` int(6)
,`judul` varchar(250)
,`pengarang` varchar(250)
,`penerbit` varchar(250)
,`nama_kelas` varchar(20)
,`nama_jenis` varchar(20)
);
-- --------------------------------------------------------

--
-- Struktur untuk view `view_buku`
--
DROP TABLE IF EXISTS `view_buku`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_buku` AS select `a`.`id_buku` AS `id_buku`,`a`.`judul` AS `judul`,`a`.`pengarang` AS `pengarang`,`a`.`penerbit` AS `penerbit`,`b`.`nama_kelas` AS `nama_kelas`,`c`.`nama_jenis` AS `nama_jenis` from ((`buku` `a` join `kelas` `b` on((`b`.`id_kelas` = `a`.`id_kelas`))) join `jenis` `c` on((`c`.`id_jenis` = `c`.`id_jenis`)));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
 ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
 ADD PRIMARY KEY (`id_buku`), ADD KEY `id_kelas` (`id_kelas`), ADD KEY `id_jenis` (`id_jenis`), ADD KEY `id_lokasi` (`id_lokasi`), ADD KEY `id_lokasi_2` (`id_lokasi`), ADD KEY `id_lokasi_3` (`id_lokasi`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
 ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
 ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `libur`
--
ALTER TABLE `libur`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
 ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
 ADD PRIMARY KEY (`id`), ADD KEY `id_anggota` (`id_anggota`), ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
MODIFY `id_anggota` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=932;
--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
MODIFY `id_buku` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1012;
--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=930;
--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
MODIFY `id_jenis` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
MODIFY `id_kelas` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `libur`
--
ALTER TABLE `libur`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=930;
--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
MODIFY `id_lokasi` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `pengunjung`
--
ALTER TABLE `pengunjung`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=997;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=924;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=193;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`),
ADD CONSTRAINT `buku_ibfk_2` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`),
ADD CONSTRAINT `buku_ibfk_3` FOREIGN KEY (`id_jenis`) REFERENCES `jenis` (`id_jenis`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
