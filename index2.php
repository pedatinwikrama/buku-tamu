<?php 
if(isset($_POST['cetak'])){
  echo "<script>document.location.href='export.php'</script>";
}
?>
<!DOCTYPE html>
<html>
<head>
  <title>Buku Tamu SMK Wikrama</title>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1">
  <link rel="stylesheet" type="text/css" href="asset/css/materialize.min.css">
  <link rel="stylesheet" type="text/css" href="asset/css/style.css">
  <style type="text/css">
    
  </style>
</head>
<body>
  <!-- <div class="navbar-fixed"> -->
    <form method="post">
    <b><a href="export.php" style="font-size: 24px;">EXPORT EXCEL</a></b>
</form>
  <nav class="white">
    <div class="nav-wrapper">
      <a href="#!" class="brand-logo grey-text text-darken-3 g-book">Buku tamu SMK <span class="raleway-bold">w</span>ikrama</a>
      <ul class="right hide-on-med-and-down">
        <li><a href=""></a></li>
        <li><a href=""></a></li>
      </ul>
    </div>
  </nav>
  <div class="row">
    <table class="striped">
      <tr>
        <td>No</td>
        <td>Waktu</td>
        <td>Nama</td>
        <td>Instansi</td>
        <td>Email</td>
        <td>No HP</td>
        <td>Pesan</td>
        <td>Kesan</td>
        
      </tr>
      <?php
       $hostname = '127.0.0.1';
$username = 'root';
$password = 'RPLbaru2018';
$database = 'db_bukutamu_wk';

$con=mysqli_connect($hostname, $username, $password, $database);

        $no=0;
      $a = mysqli_query($con,"select * from kunjungan order by waktu DESC");
      while($r = mysqli_fetch_array($a)){
        $no++
      ?>
      <tr>
        <td><?php echo $no; ?></td>
        <td><?php echo $r['waktu'] ?></td>
        <td><?php echo $r['nama'] ?></td>
        <td><?php echo $r['instansi'] ?></td>
        <td><?php echo $r['email'] ?></td>
        <td><?php echo $r['hp'] ?></td>
        <td><?php echo $r['pesan'] ?></td>
        <td><?php echo $r['kesan'] ?></td> 
      </tr>
      <?php } ?>
    </table>
  </div>
  <!-- </div> -->
  
  <script src="asset/js/jquery.min.js"></script>
  <script src="asset/js/materialize.min.js"></script>
</body>
</html>