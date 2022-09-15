<?php 
  $tanggal = date('d-m-Y');
// Fungsi header dengan mengirimkan raw data excel
header("Content-type: application/vnd-ms-excel");
// Mendefinisikan nama file ekspor "hasil-export.xls"
header("Content-Disposition: attachment; filename=$tanggal-datatamu.xls");
?>
<!DOCTYPE html>
<html>
<head>
  <title>Buku Tamu SMK Wikrama</title>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1">    
  </style>
</head>
<body>
      <h1 align="center">Buku Tamu SMK Wikrama Bogor</h1>
      <h2>Per tanggal <?php echo date('d-m-Y'); ?></h2>
    <table border="1">
      <tr>
        <th>No</th>
        <th>Nama</th>
        <th>Instansi</th>
        <th>Email</th>
        <th>No HP</th>
        <th>Pesan</th>
        <th>Kesan</th>
        <th>Waktu</th>
      </tr>
      <?php
       $hostname = '127.0.0.1';
$username = 'root';
$password = 'RPLbaru2018';
$database = 'db_bukutamu_wk';

$con=mysqli_connect($hostname, $username, $password, $database);

        $no=0;
      $a = mysqli_query($con,"select * from kunjungan");
      while($r = mysqli_fetch_array($a)){
        $no++
      ?>
      <tr>
        <td><?php echo $no; ?></td>
        <td><?php echo $r['nama'] ?></td>
        <td><?php echo $r['instansi'] ?></td>
        <td><?php echo $r['email'] ?></td>
        <td><?php echo $r['hp'] ?></td>
        <td><?php echo $r['pesan'] ?></td>
        <td><?php echo $r['kesan'] ?></td>
        <td><?php echo $r['waktu'] ?></td>
      </tr>
      <?php } ?>
    </table>

  <!-- </div> -->

</body>
</html>