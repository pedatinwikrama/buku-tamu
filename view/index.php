<?php
  require __DIR__.'\lib\init.php';

  if (isset($_POST['login'])) {
    $username = antiI($_POST['username']);
    $password = sha1($_POST['password']);
    $sql = mysqli_query($cn, "SELECT * FROM user where username='$username' and password='$password'");
    $cek = mysqli_num_rows($sql);
    if ($cek > 0) {
      $_SESSION[sha1('loginBukuTamuWikrama')] = $username;
      header('location: halaman.php');
    }else{
      $notif = '<script>Materialize.toast("Username atau Password Salah", 4000)</script>';
    }
  }
  if (isset($_SESSION[sha1('loginBukuTamuWikrama')])) {
    header('location: halaman.php');
  }
?>
<!DOCTYPE html>
<html>
<head>
  <title>Buku Tamu Digital</title>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" type="text/css" href="<?=asset('asset/css/materialize.min.css')?>">
  <link rel="stylesheet" type="text/css" href="<?=asset('asset/css/style.css')?>">
</head>
<body>
  <div class="overlay-cuy"></div>
  <div class="container">
    <div class="row login">
      <div class="col s12 m8 l6 offset-m2 offset-l3">
        <div class="z-depth-1 white isi-login">
          <div class="judul">
            <h5 class="grey-text text-darken-2">Login Buku Tamu Digital</h5>
          </div>
          <div class="content">
            <form method="post">
              <div class="input-field">
                <input type="text" id="username" name="username" value="" autocomplete="off" autofocus required class="validate">
                <label for="username">Username</label>
              </div>
              <div class="input-field">
                <input type="password" id="password" name="password" value="" required class="validate">
                <label for="password">Password</label>
              </div>
              <div style="text-align: center;">
                <button type="submit" class="btn blue lighten-1 white-text" name="login">Login</button>
              </div>
            </form>
            <style>
              /*.created li{
                font-size: 12px;
              }
              .created ~ .center-align{
                font-size: 12px;
              }*/
            </style>
            <p class="center-align" style="font-size: 12px">
              Copyright &copy; 2018 GEN-13 RPL <br>
              SMK WIKRAMA BOGOR
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="<?=asset('asset/js/jquery.min.js')?>"></script>
  <script src="<?=asset('asset/js/materialize.min.js')?>"></script>
  <?php
    if (isset($notif)) {
      echo $notif;
    }
  ?>
</body>
</html>