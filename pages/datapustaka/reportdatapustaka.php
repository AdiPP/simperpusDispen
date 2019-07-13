<?php
  require "../../fpdf/fpdf.php";
  $db = new PDO('mysql:host=localhost;dbname=db_simperpus','root','');

  /**
   *
   */
  class myPDF extends FPDF
  {
    function header(){
      // $this->Image('logo.png', 10, 6,-200);
      $this->SetFont('Arial', 'B', 14);
      $this->Cell(276, 5, 'LAPORAN DATA PUSTAKA', 0, 0, 'C');
      $this->Ln();
      $this->SetFont('Times', '', 12);
      $this->Cell(276, 10, 'Simperpus Dinas Pendidikan Kabupaten Banyumas', 0, 0, 'C');
      $this->Ln();
    }
    function footer(){
      $this->SetY(-15);
      $this->SetFont('Arial', '', 8);
      $this->Cell(0, 10, 'Halaman '.$this->PageNo().'/{nb}', 0, 0, 'C');
    }
    function headerTable(){
      $today = date("d/m/Y");
      $this->SetFont('Times', 'B', 12);
      $this->Cell(10, 10, 'Tabel Peminjaman Per Tanggal '.$today, 0, 0, 'L');
      $this->Ln();
      $this->SetFont('Times', 'B', 11);
      $this->Cell(10, 10, '#', 1, 0, 'C');
      $this->Cell(140, 10, 'Judul Pustaka', 1, 0, 'C');
      $this->Cell(60, 10, 'Pengarang', 1, 0, 'C');
      $this->Cell(20, 10, 'Tahun', 1, 0, 'C');
      $this->Cell(27, 10, 'Klasifikasi', 1, 0, 'C');
      $this->Cell(20, 10, 'Jumlah', 1, 0, 'C');
      $this->Ln();
    }
    function viewTable($db){
      $totalpustaka = 0;
      $nomor = 1;
      $this->SetFont('Times', '', 11);
      $stmt = $db->query('SELECT * FROM t_datapustaka ORDER BY judul_dp');
      while ($data = $stmt->fetch(PDO::FETCH_OBJ)) {
        $this->Cell(10, 10, $nomor.'.', 1, 0, 'C');
        $this->Cell(140, 10, $data->judul_dp, 1, 0, 'L');
        $this->Cell(60, 10, $data->pengarang, 1, 0, 'L');
        $this->Cell(20, 10, $data->tahun, 1, 0, 'L');
        $this->Cell(27, 10, $data->klasifikasi, 1, 0, 'L');
        $this->Cell(20, 10, $data->jumlah, 1, 0, 'R');
        $this->Ln();
        $totalpustaka++;
        $nomor++;
      }
      $this->SetFont('Times', 'B', 11);
      $this->Cell(230,10,'Total Koleksi Pustaka', 1, 0,'C');
      $this->Cell(47,10,$totalpustaka, 1, 0,'C');
      $this->Ln();
      $tkk = $db->query('SELECT COUNT(*) AS totalkoleksi FROM t_datapustaka WHERE jumlah = 0');
      $datatkk = $tkk->fetch(PDO::FETCH_OBJ);
      $this->Cell(230,10,'Total Pustaka Kosong', 1, 0,'C');
      $this->Cell(47,10,$datatkk->totalkoleksi, 1, 0,'C');
      $this->Ln();
      $tkt = $db->query('SELECT COUNT(*) AS totalkoleksi FROM t_datapustaka WHERE jumlah != 0');
      $datatkt = $tkt->fetch(PDO::FETCH_OBJ);
      $this->Cell(230,10,'Total Pustaka Tersedia', 1, 0,'C');
      $this->Cell(47,10,$datatkt->totalkoleksi, 1, 0,'C');
      $this->Ln();
      $jp = $db->query('SELECT SUM(jumlah) AS jumlahpustaka FROM t_datapustaka');
      $datajp = $jp->fetch(PDO::FETCH_OBJ);
      $this->Cell(230,10,'Total Jumlah Pustaka', 1, 0,'C');
      $this->Cell(47,10,$datajp->jumlahpustaka, 1, 0,'C');
    }


  }

  $pdf = new myPDF();
  $pdf->AliasNbPages();
  $pdf->AddPage('L', 'A4', 0);
  $pdf->Ln();
  $pdf->headerTable();
  $pdf->viewTable($db);
  $pdf->Output('','Laporan Data Pustaka.pdf');
 ?>
