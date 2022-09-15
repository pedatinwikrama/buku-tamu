<?php
  include 'lib/config.php';
  if (isset($_POST['simpan'])) {
    if (!empty($_POST['foto'])) {
      if (!empty($_POST['nama']) || !empty($_POST['instansi']) || !empty($_POST['keperluan'])) {
        $nama      = antiI($_POST['nama']);
        $instansi  = antiI($_POST['instansi']);
        $keperluan = antiI($_POST['keperluan']);
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

        $sql = mysql_query("INSERT INTO tamu values(null,'$nama','$instansi','$keperluan','$fileName','$fileNameTtd',now())");
        if ($sql) {
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
<html>
<head>
  <title>ini website</title>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" type="text/css" href="asset/css/materialize.min.css">
  <link rel="stylesheet" type="text/css" href="asset/css/style.css">
  <link rel="stylesheet" type="text/css" href="asset/plugin/jquery-ui.css">
  <style>
    .formNya{
      margin-top: 50px;
    }
    body iframe {
      display: none;
    }
    .kbw-signature{
      width: 400px;
      height: 200px;
    }
  </style>
</head>
<body>
  <div class="container">
    <form method="post">
      <div class="row formNya">
          <h5 class="g-book">Buku Tamu Wikrama</h5>
          <div class="col s12 m6 g-book">
            <div class="col m12 input-field">
              <input id="nama" type="text" class="validate" required name="nama">
              <label for="nama">Nama</label>
            </div>
            <div class="col m12 input-field">
              <input id="instansi" type="text" class="validate" required name="instansi">
              <label for="instansi">Instansi</label>
            </div>
            <div class="col m12 input-field">
              <textarea class="materialize-textarea" name="keperluan" required></textarea>
              <label for="nama">Keperluan</label>
            </div>
          </div>
          <div class="col s12 m6">
            <div id="sig" style="border: thin solid #ddd;"></div>
            <input type="hidden" name="ttd" id="ttd">
            <p>
              <button id="clear" type="button" class="btn">Clear</button>
            </p>
          </div>
      </div>
      <div class="row">
        <div class="col s12 m6">
          <div class="col m12">
            <button type="button" class="btn" onclick="snapshot()">Ambil gambar</button>
            <button type="button" class="btn" onclick="ulang()">Reset Foto</button>
            <input type="hidden" id="foto" name="foto">
            <br>
            <video autoplay id="video" style="width: 100%; border: thin solid #ddd; padding: 0; margin: 0;"></video>
            <img src="" id="hasilCameraImg" style="width: 100%; border: thin solid #ddd; padding: 0; margin: 0;">
            <canvas width="640" height="480" id="hasilCameraCanvas" style="display: none;"></canvas>
          </div>
          <div class="col m12" style="margin-top: 10px;">
            <button class="btn" name="simpan">Simpan</button>
          </div>
        </div>
      </div>
    </form>
  </div>

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
  </script>
</body>
</html>