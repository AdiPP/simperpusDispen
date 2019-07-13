-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jul 2019 pada 01.11
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simperpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_dataanggota`
--

CREATE TABLE `t_dataanggota` (
  `id_anggota` int(5) NOT NULL,
  `no_anggota` varchar(9) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `tempat_lahir` varchar(15) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jns_klmn` varchar(9) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(15) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `pkrjaan` varchar(15) NOT NULL,
  `denda` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_dataanggota`
--

INSERT INTO `t_dataanggota` (`id_anggota`, `no_anggota`, `nama_anggota`, `tempat_lahir`, `tanggal_lahir`, `jns_klmn`, `alamat`, `telp`, `nik`, `pkrjaan`, `denda`) VALUES
(1, '1010119', 'Adi Permana Putra', 'Bogor', '1998-03-22', 'Laki-laki', 'Kontrakan Bpk. Suparso. Gang Tamtama, Dusun 1, Desa Blater, Kelurahan Blater, Kecamatan Kalimanah, Kabupaten Purbalingga, Jawa Tengah, 53371.', '081287711901', '1050241708900001', 'Mahasiswa', '0000-00-00'),
(2, '2010119', 'Wahyu Hidayat', 'Purwokerto', '2019-01-10', 'Laki-laki', 'JL. Perintis Kemerdekaan\r\n', '084075647955', '332616570803002', 'Dokter', '0000-00-00'),
(3, '3010119', 'Inge Yuliani Setiawan', 'Purwokerto', '2019-01-10', 'Perempuan', 'JL S.Parman No.239G', '0281622802', '321312010165000', 'Pegawai Negeri', '0000-00-00'),
(4, '4010119', 'Eko Widya Cahyadi', 'Purwokerto', '1986-07-03', 'Laki-laki', 'JL. Jend Sudirman', '0281641296', '332616700766000', 'Guru', '0000-00-00'),
(5, '5010119', 'Bambang Kuwat Setiawan', 'Purwokerto', '1977-05-19', 'Laki-laki', 'JL. Pahlawan No. 28', '0281626270', '321312110365000', 'Pedagang', '0000-00-00'),
(6, '6010119', 'Utari Ida Chandra', 'Purwokerto', '1992-10-20', 'Perempuan', 'JL. Let Jend. S. Par', '0281633961', '332616410741002', 'Pedagang', '0000-00-00'),
(7, '7010119', 'Wira Eka Indradjaja', 'Purwokerto', '1994-07-12', 'Laki-laki', 'JL. S. Parman No. 23', '0281642279', '321312050174000', 'Pegawai Negeri', '0000-00-00'),
(8, '8010119', 'Sudomo Purnama Tan', 'Banyumas', '1993-11-22', 'Laki-laki', 'Jl Jend Gatot Subroto', '0281796229', '3326166205030001', 'Pegawai Negeri', '0000-00-00'),
(9, '9100119', 'Limijanti Xiu Chandra', 'Purwokerto', '1998-10-03', 'Perempuan', 'Jl Anggrek Raya 16 RT 002/01', '0281894825', '3326160402010021', 'Pegawai Negeri', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_datapengguna`
--

CREATE TABLE `t_datapengguna` (
  `id_pengguna` int(5) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_datapengguna`
--

INSERT INTO `t_datapengguna` (`id_pengguna`, `nama_pengguna`, `level`, `nip`, `username`, `password`) VALUES
(1, 'Bryant Alim Amrullah', 1, '197201242000031004', 'Kapus', 'Kapus'),
(2, 'Adi Permana Putra', 2, '197201242000031000', 'Admin', 'Admin'),
(3, 'Aldo Martino Gonzales', 2, '3326165608060003', 'Aldo01', '3326165608060003');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_datapengunjung`
--

CREATE TABLE `t_datapengunjung` (
  `id_pgnjng` int(5) NOT NULL,
  `nama_pgnjng` varchar(50) NOT NULL,
  `pkrjaan` varchar(15) NOT NULL,
  `kprluan` text NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_datapengunjung`
--

INSERT INTO `t_datapengunjung` (`id_pgnjng`, `nama_pgnjng`, `pkrjaan`, `kprluan`, `tgl`) VALUES
(1, 'Galang', 'Mahasiswa', 'mencari bahan skripsi', '2019-01-14'),
(2, 'Leo', 'Mahasiswa', 'Mencari pustaka terkait penelitian', '2019-01-14'),
(3, 'Aldo', 'Pegawai', 'Bimbingan', '2019-01-14'),
(4, 'Bambang Kuwat Setiawan', 'Pedagang', 'Anggota', '2019-01-14'),
(10, 'Wahyu Hidayat', 'Dokter', 'Anggota', '2019-01-14'),
(13, 'Eko Widya Cahyadi', 'Guru', 'Anggota', '2019-01-15'),
(14, 'Eko Widya Cahyadi', 'Guru', 'Anggota', '2019-01-15'),
(15, 'Sudomo Purnama Tan', 'Pegawai Negeri', 'Anggota', '2019-01-15'),
(16, 'Sudomo Purnama Tan', 'Pegawai Negeri', 'Anggota', '2019-01-15'),
(18, 'Sudomo Purnama Tan', 'Pegawai Negeri', 'Anggota', '2019-01-15'),
(19, 'Sudomo Purnama Tan', 'Pegawai Negeri', 'Anggota', '2019-01-15'),
(20, 'Eko Widya Cahyadi', 'Guru', 'Anggota', '2019-01-15'),
(23, 'Inge Yuliani Setiawan', 'Pegawai Negeri', 'Anggota', '2019-01-15'),
(24, 'Bambang Kuwat Setiawan', 'Pedagang', 'Anggota', '2019-01-15'),
(25, 'Nurhadi', 'Anggota DPR', 'survey', '2019-01-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_datapustaka`
--

CREATE TABLE `t_datapustaka` (
  `id_dp` int(5) NOT NULL,
  `judul_dp` varchar(150) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun` int(4) NOT NULL,
  `isbn` varchar(15) NOT NULL,
  `klasifikasi` varchar(10) NOT NULL,
  `jumlah` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_datapustaka`
--

INSERT INTO `t_datapustaka` (`id_dp`, `judul_dp`, `kategori`, `pengarang`, `penerbit`, `tahun`, `isbn`, `klasifikasi`, `jumlah`) VALUES
(1, 'Analisis Kinerja Radar; Tahap Proses Pemodelan', 'Karya Umum', 'Saludin Muis, Dr., Ir., M. Kom', 'Graha Ilmu', 2018, '9786025759192', '621.3848', 0),
(3, 'Pemrograman Android & Database', 'Karya Umum', 'Abdul Kadir', 'Elex Media Komputindo', 2018, '9786020459721', '005.2', 1),
(4, 'Pengenalan Sistem Informasi Edisi Revisi', 'Karya Umum', 'Abdul Kadir', 'ANDI', 2014, '9789792921588', '005.36', 3),
(5, 'Mengenal Dasar-Dasar Pemrograman Android', 'Karya Umum', 'Jubilee Enterprise', 'Elex Media Komputindo', 2015, '9786020269757', '005.2', 2),
(6, 'Langkah Mudah Pemrograman Android Menggunakan App Inventor 2 Ultimate', 'Karya Umum', 'Abdul Kadir', ' Gramedia Pustaka Utama', 2018, '9786020456027', '005.2', 1),
(8, 'Dasar Sistem Kontrol Dengan Matlab', 'Karya Umum', 'Rismon Hasiholan Sianipar', 'Other', 2019, '9789792971712', '005.2', 1),
(9, 'Teknik Instalasi Dan Re-mastering Sistem Operasi Windows', 'Karya Umum', 'Madcoms', ' Other', 2019, '9789792967593', '005.43', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_peminjaman`
--

CREATE TABLE `t_peminjaman` (
  `id_pmnjmn` int(5) NOT NULL,
  `nomor_pmnjmn` varchar(5) NOT NULL,
  `id_anggota` int(5) NOT NULL,
  `id_dp` int(5) NOT NULL,
  `id_pengguna` int(5) NOT NULL,
  `tgl_pjm` date NOT NULL,
  `tgl_kmbl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_peminjaman`
--

INSERT INTO `t_peminjaman` (`id_pmnjmn`, `nomor_pmnjmn`, `id_anggota`, `id_dp`, `id_pengguna`, `tgl_pjm`, `tgl_kmbl`) VALUES
(1, '10141', 1, 4, 2, '2018-12-30', '2019-01-06'),
(2, '51472', 1, 5, 2, '2019-01-06', '2019-01-10'),
(3, '52106', 1, 4, 2, '2019-01-07', '2019-01-09'),
(4, '56988', 1, 1, 2, '2019-01-07', '2019-01-14'),
(5, '89567', 1, 4, 2, '2019-01-09', '2019-01-16'),
(6, '56987', 9, 1, 2, '2019-01-11', '2019-01-18'),
(7, '88560', 8, 4, 2, '2019-01-11', '2019-01-18'),
(8, '52188', 5, 4, 2, '2019-01-11', '2019-01-18'),
(9, '88569', 8, 4, 2, '2019-01-12', '2019-01-19'),
(10, '88582', 7, 5, 2, '2019-01-12', '2019-01-19'),
(11, '77250', 6, 5, 2, '2019-01-12', '2019-01-19'),
(12, '44519', 7, 9, 2, '2019-01-13', '2019-01-20'),
(13, '72797', 1, 1, 2, '2019-01-17', '2019-01-24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pengembalian`
--

CREATE TABLE `t_pengembalian` (
  `id_pgmbln` int(5) NOT NULL,
  `nomor_pgmbln` varchar(5) NOT NULL,
  `id_pmnjmn` int(5) NOT NULL,
  `id_anggota` int(5) NOT NULL,
  `id_dp` int(5) NOT NULL,
  `id_pengguna` int(5) NOT NULL,
  `ktrlmbtn` int(5) NOT NULL,
  `tgl_kmbl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_pengembalian`
--

INSERT INTO `t_pengembalian` (`id_pgmbln`, `nomor_pgmbln`, `id_pmnjmn`, `id_anggota`, `id_dp`, `id_pengguna`, `ktrlmbtn`, `tgl_kmbl`) VALUES
(1, '54670', 1, 1, 4, 2, 0, '2018-12-30'),
(2, '22691', 5, 1, 4, 2, 0, '2019-01-10'),
(3, '78894', 4, 1, 1, 2, 0, '2019-01-10'),
(5, '66598', 7, 8, 4, 2, 0, '2019-01-12'),
(6, '54678', 6, 9, 1, 2, 0, '2019-01-12'),
(7, '22699', 2, 1, 5, 2, 0, '2019-01-12'),
(8, '22694', 8, 5, 4, 2, 0, '2019-01-12'),
(9, '52978', 10, 7, 5, 2, 0, '2019-01-12'),
(10, '31000', 2, 1, 5, 2, 2, '2019-01-12'),
(12, '24347', 3, 1, 4, 2, 3, '2019-01-12'),
(13, '88657', 12, 7, 9, 2, 0, '2019-01-16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_dataanggota`
--
ALTER TABLE `t_dataanggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `t_datapengguna`
--
ALTER TABLE `t_datapengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `t_datapengunjung`
--
ALTER TABLE `t_datapengunjung`
  ADD PRIMARY KEY (`id_pgnjng`);

--
-- Indeks untuk tabel `t_datapustaka`
--
ALTER TABLE `t_datapustaka`
  ADD PRIMARY KEY (`id_dp`);

--
-- Indeks untuk tabel `t_peminjaman`
--
ALTER TABLE `t_peminjaman`
  ADD PRIMARY KEY (`id_pmnjmn`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_dp` (`id_dp`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indeks untuk tabel `t_pengembalian`
--
ALTER TABLE `t_pengembalian`
  ADD PRIMARY KEY (`id_pgmbln`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_dp` (`id_dp`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_pmnjmn` (`id_pmnjmn`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_dataanggota`
--
ALTER TABLE `t_dataanggota`
  MODIFY `id_anggota` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `t_datapengguna`
--
ALTER TABLE `t_datapengguna`
  MODIFY `id_pengguna` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `t_datapengunjung`
--
ALTER TABLE `t_datapengunjung`
  MODIFY `id_pgnjng` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `t_datapustaka`
--
ALTER TABLE `t_datapustaka`
  MODIFY `id_dp` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `t_peminjaman`
--
ALTER TABLE `t_peminjaman`
  MODIFY `id_pmnjmn` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `t_pengembalian`
--
ALTER TABLE `t_pengembalian`
  MODIFY `id_pgmbln` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `t_peminjaman`
--
ALTER TABLE `t_peminjaman`
  ADD CONSTRAINT `t_peminjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `t_dataanggota` (`id_anggota`),
  ADD CONSTRAINT `t_peminjaman_ibfk_3` FOREIGN KEY (`id_pengguna`) REFERENCES `t_datapengguna` (`id_pengguna`),
  ADD CONSTRAINT `t_peminjaman_ibfk_4` FOREIGN KEY (`id_dp`) REFERENCES `t_datapustaka` (`id_dp`);

--
-- Ketidakleluasaan untuk tabel `t_pengembalian`
--
ALTER TABLE `t_pengembalian`
  ADD CONSTRAINT `t_pengembalian_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `t_datapengguna` (`id_pengguna`),
  ADD CONSTRAINT `t_pengembalian_ibfk_2` FOREIGN KEY (`id_anggota`) REFERENCES `t_dataanggota` (`id_anggota`),
  ADD CONSTRAINT `t_pengembalian_ibfk_3` FOREIGN KEY (`id_dp`) REFERENCES `t_datapustaka` (`id_dp`),
  ADD CONSTRAINT `t_pengembalian_ibfk_4` FOREIGN KEY (`id_pmnjmn`) REFERENCES `t_peminjaman` (`id_pmnjmn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
