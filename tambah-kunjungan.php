<?php
$hostname = '127.0.0.1';
$username = 'root';
$password = 'RPLbaru2018';
$database = 'db_bukutamu_wk';

$con=mysqli_connect($hostname, $username, $password, $database);

if (isset($_POST['submit'])) {
    if (!empty($_POST['foto'])) {
      if (!empty($_POST['nama']) || !empty($_POST['instansi']) || !empty($_POST['email']) || !empty($_POST['hp']) || !empty($_POST['pesan']) || !empty($_POST['kesan'])) {
        $nama = $_POST['nama'];
		$instansi = $_POST['instansi'];
		$email = $_POST['email'];
		$hp = $_POST['hp'];
		$pesan = $_POST['pesan'];
		$kesan = $_POST['kesan'];
		$waktu = date("Y-m-d H:i:s");

        $foto      = substr($_POST['foto'], strpos($_POST['foto'], ',') + 1);
        $ttd       = substr($_POST['ttd'], strpos($_POST['ttd'], ',') + 1);

        $dekod       = base64_decode($foto);
        $dekodTtd    = base64_decode($ttd);

        $fileName    = 'img-'.rand(11111,99999).'.png';
        $fileNameTtd = 'img-'.rand(11111,99999).'.png';
        
        $fp = fopen('foto/orang/'.$fileName,'w');
        fwrite($fp, $dekod);
        fclose($fp);

        $fpTtd = fopen('foto/ttd/'.$fileNameTtd,'w');
        fwrite($fpTtd, $dekodTtd);
        fclose($fpTtd);

        $InsertSQL = "INSERT INTO kunjungan (nama,instansi,email,hp,pesan,kesan,foto,ttd,waktu) VALUES ('$nama','$instansi','$email','$hp','$pesan','$kesan','$fileName','$fileNameTtd','$waktu')";
        if (mysqli_query($con, $InsertSQL)) {
            echo "<script>alert('berhasil');document.location.href='?'</script>";
        }else{
            echo "<script>alert('gagal');document.location.href='?'</script>";
        }
      }else{
            echo "<script>alert('Data Tidak Boleh Kosong');document.location.href='?'</script>";
      }
    }else{
      echo "<script>alert('Foto harus ada');document.location.href='?'</script>";
    }
  }
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <link rel="stylesheet" href="style2.css">
  <link rel="stylesheet" type="text/css" href="asset/css/materialize.min.css">
  <link rel="stylesheet" type="text/css" href="asset/css/style.css">
  <link rel="stylesheet" type="text/css" href="asset/plugin/jquery-ui.css">
  <style>
        .kbw-signature { width: 400px; height: 200px;}
        #sig canvas{
            width: 100% !important;
            height: auto;
        }
    </style>
  <title>Tambah Kunjungan</title>
</head>
<body>
    <div class="wrapper">
        <div class="img-logo mt-3">
        <img src="images/logo-wk.png">
        </div>
        <h5 style="color: #fff; text-align: center; margin-bottom: 15px;">Selamat Datang di Stand SPW Wikrama Bogor</h5>

        <div class="container card m-auto p-3 shadow">
            <form method="post">
                <div class="form-group">
                    <label for="nama" class="mb-2">Nama Lengkap</label>
                    <input type="text" class="form-control" id="nama" name="nama" required>
                </div>
                <div class="form-group mt-1">
                    <label class="mb-2" for="instansi">Instansi</label>
                    <input type="text" class="form-control" id="instansi" name="instansi" required>
                </div>
                <div class="form-group mt-1">
                    <label for="email" class="mb-2">Email</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="form-group mt-1">
                    <label for="hp" class="mb-2">No. HP</label>
                    <input type="text" class="form-control" id="hp" name="hp" required>
                </div>
                <div class="form-group mt-1">
                    <label for="pesan" class="mb-2">Pesan</label>
                    <textarea class="form-control" id="pesan" name="pesan" rows="3" required></textarea>
                </div>
                <div class="form-group mt-1">
                    <label for="kesan" class="mb-2">Kesan</label>
                    <textarea class="form-control" id="kesan" name="kesan" rows="3" required></textarea>
                </div>
                <div class="form-group">
                    <div id="sig" style="border: thin solid #ddd;"></div>
                    <input type="hidden" name="ttd" id="ttd">
                    <p>
                    <button id="clear" type="button" class="btn">Clear</button>
                    </p>
                </div>
                <div class="form-group">
                    <button type="button" class="btn" onclick="snapshot()">Ambil gambar</button>
                    <button type="button" class="btn" onclick="ulang()">Reset Foto</button>
                    <input type="hidden" id="foto" name="foto">
                    <br>
                    <video autoplay id="video" style="width: 100%; border: thin solid #ddd; padding: 0; margin: 0;"></video>
                    <img src="" id="hasilCameraImg" style="width: 100%; border: thin solid #ddd; padding: 0; margin: 0;">
                    <canvas width="640" height="480" id="hasilCameraCanvas" style="display: none;"></canvas>
                </div>
                <button type="submit" class="btn btn-primary mt-1" name="submit">Submit</button>
            </form>
        </div>    
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    <script src="asset/js/jquery.min.js"></script>
    <script src="asset/js/materialize.min.js"></script>
    <script src="asset/plugin/jquery-ui.min.js"></script>
    <script src="asset/plugin/jquery.signature.js"></script>
    <script>
        $(document).ready(function() {
        $('#sig').signature({syncField: '#ttd'});
        $('#sig').signature('option','syncFormat', 'PNG');
        
        $('#clear').click(function() {
            $('#sig').signature('clear');
        });
        });

        var video            = document.querySelector('#video');
    var canvas           = document.querySelector('#hasilCameraCanvas');
    var ctx              = canvas.getContext('2d');
    var localMediaStream = null;

    function snapshot() {
      if (localMediaStream) {
        ctx.drawImage(video, 0, 0);
        document.querySelector('#hasilCameraImg').src = canvas.toDataURL('image/png');
        document.getElementById('foto').value = canvas.toDataURL('image/png');
        video.style.display = 'none';
        document.getElementById('hasilCameraImg').style.display = 'block';
      }
    }
    function ulang(){
      video.style.display = 'block';
      document.getElementById('hasilCameraImg').style.display = 'none';
      document.getElementById('foto').value = '';
    }
    var errorEuy = function(e) {
      console.log('Reeeejected!', e);
    };
    navigator.getUserMedia({video: true}, function(stream) {
      video.src = window.URL.createObjectURL(stream);
      localMediaStream = stream;
    }, errorEuy);
    </script>
</body>
</html>