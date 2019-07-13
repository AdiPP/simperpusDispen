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
      $this->Cell(276, 5, 'LAPORAN DATA PENGUNJUNG', 0, 0, 'C');
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
      $this->Cell(10, 10, 'Tabel Pengunjung Per Tanggal '.$today, 0, 0, 'L');
      $this->Ln();
      $this->SetFont('Times', 'B', 11);
      $this->Cell(10, 10, '#', 1, 0, 'C');
      $this->Cell(100, 10, 'Nama Pengunjung', 1, 0, 'C');
      $this->Cell(57, 10, 'Pekerjaan', 1, 0, 'C');
      $this->Cell(90, 10, 'Keperluan', 1, 0, 'C');
      $this->Cell(20, 10, 'Tanggal', 1, 0, 'C');
      $this->Ln();
    }
    function viewTable($db){
      $totalpustaka = 0;
      $nomor = 1;
      $this->SetFont('Times', '', 11);
      $stmt = $db->query('SELECT * FROM t_datapengunjung ORDER BY tgl DESC');
      while ($data = $stmt->fetch(PDO::FETCH_OBJ)) {
        $tanggal = date("d/m/Y", strtotime($data->tgl));
        $this->Cell(10, 10, $nomor.'.', 1, 0, 'C');
        $this->Cell(100, 10, $data->nama_pgnjng, 1, 0, 'L');
        $this->Cell(57, 10, $data->pkrjaan, 1, 0, 'L');
        $this->Cell(90, 10, $data->kprluan, 1, 0, 'L');
        $this->Cell(20, 10, $tanggal, 1, 0, 'C');
        $this->Ln();
        $totalpustaka++;
        $nomor++;
      }
      $this->SetFont('Times', 'B', 11);
      $this->Cell(257,10,'Total Pengunjung', 1, 0,'C');
      $this->Cell(20,10,$totalpustaka, 1, 0,'C');
      $this->Ln();
    }


  }

  $pdf = new myPDF();
  $pdf->AliasNbPages();
  $pdf->AddPage('L', 'A4', 0);
  $pdf->Ln();
  $pdf->headerTable();
  $pdf->viewTable($db);
  $pdf->Output('','Laporan Data Pengunjung.pdf');
 ?>
