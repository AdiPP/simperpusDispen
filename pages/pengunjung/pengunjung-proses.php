<?php
  include '../../koneksi.php';

  $today = date("Y/m/d");

  if (isset($_POST['submitpengunjung'])) {
    $namapengunjung = $_POST['namapengunjung'];
    $pekerjaanpengunjung = $_POST['pekerjaanpengunjung'];
    $keperluanpengunjung = $_POST['keperluanpengunjung'];

    mysqli_query($koneksi,"INSERT INTO t_datapengunjung (nama_pgnjng, pkrjaan, kprluan, tgl) VALUES ('$namapengunjung','$pekerjaanpengunjung', '$keperluanpengunjung','$today')");

    header("location:pengunjung.php?pesan=berhasil");
  } else if (isset($_POST['submitanggota'])) {
    $nomoranggota = $_POST['nomoranggota'];

    $anggota = mysqli_query($koneksi,"SELECT * FROM t_dataanggota WHERE no_anggota = $nomoranggota");
    $cek = mysqli_num_rows($anggota);
    if ($cek > 0)
    {
      $dang = mysqli_fetch_assoc($anggota);
      $nama = $dang['nama_anggota'];
      $pekerjaan = $dang['pkrjaan'];
      $keperluan = "Anggota";

      mysqli_query($koneksi,"INSERT INTO t_datapengunjung (nama_pgnjng, pkrjaan, kprluan, tgl) VALUES ('$nama','$pekerjaan', '$keperluan','$today')");

      header("location:pengunjung.php?pesan=berhasil");
    } else {
      header("location:pengunjung.php?pesan=tidakditemukan");
    }
  }
 ?>
