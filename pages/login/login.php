<?php
  $pesan = "Masuk untuk memulai sesi";
  if (isset($_GET['pesan'])) {
    if ($_GET['pesan'] == "gagallogin") {
      $pesan = "Kombinasi username dan password salah, silahkan coba kembali";
    }
  }
 ?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SIMPERPUS | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../../plugins/iCheck/square/blue.css">
  <link rel="icon" href="../../dist/img/favicon-16x16.png" type="image/ico">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page" style="
/* background: url('kantor.jpg') no-repeat center; */
/* background-size: 100%;  */
">
<div class="login-box" style="padding: 0 auto !important;">
  <div class="login-logo">
        <a href="../../index.php"><b>SIM</b>PERPUS</a>
        <div class="lead" style="font-size: 20px;">
          Sistem Informasi Manajemen Perpustakaan
        </div>
    <!-- <img src="logo.png" alt=""> -->
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg <?php if ($_GET['pesan'] == "gagallogin") {
      echo "text-red";
    } ?>"><?php echo $pesan; ?></p>

    <form action="login-proses.php" method="post">
      <div class="form-group has-feedback">
        <input type="text" class="form-control" name="username" placeholder="Username" required>
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" name="password" placeholder="Password" required>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <!-- /.col -->
        <div class="col-xs-12">
          <button type="submit" class="btn btn-primary btn-block btn-flat btn-lg">Masuk</button>
        </div>
        <!-- /.col -->
      </div>
    </form>

    <div class="social-auth-links">
      <a href="../pengunjung/pengunjung.php" class="btn btn-default btn-flat"><i class="fa fa-user-secret"></i> Data Kunjungan</a>
      <a href="../caripustaka/caripustaka.php" class="btn btn-default btn-flat pull-right"><i class="fa fa-search"></i> Cari Pustaka</a>
    </div>
    <!-- /.social-auth-links -->

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="../../bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="../../plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' /* optional */
    });
  });
</script>
</body>
</html>
