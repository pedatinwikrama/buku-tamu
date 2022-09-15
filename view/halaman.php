<?php
  require __DIR__.'\lib\init.php';
  
  $menu = handleGet('menu');
  $mn['beranda']    = '';
  $mn['tamu']       = '';
  $mn['alumni']     = '';
  $mn['kunjungan']  = '';
  $mn['ortu']       = '';
  $mn['semua_tamu'] = '';

  switch ($menu) {
    case 'beranda':
      $mn['beranda'] = 'active';
      $inc = 'beranda.php';
    break;
    case 'tamu':
      $mn['tamu'] = 'active';
      $inc = 'tamu.php';
    break;
    case 'alumni':
      $mn['alumni'] = 'active';
      $inc = 'alumni.php';
    break;
    case 'kunjungan':
      $mn['kunjungan'] = 'active';
      $inc = 'kunjungan.php';
    break;
    case 'perusahaan':
      $mn['perusahaan'] = 'active';
      $inc = 'perusahaan.php';
    break;
    case 'ortu':
      $mn['ortu'] = 'active';
      $inc = 'ortu.php';
    break;
    case 'semua_tamu':
      $mn['semua_tamu'] = 'active';
      $inc = 'semua_tamu.php';
    break;
    default:
      $mn['beranda'] = 'active';
      $inc = 'beranda.php';
    break;
  }
  if (!isset($_SESSION[sha1('loginBukuTamuWikrama')])) {
    header('location: index.php');
  }
  if (isset($_GET['logout'])) {
    unset($_SESSION[sha1('loginBukuTamuWikrama')]);
    header('location: index.php');
  }
  $user = mysqli_fetch_object(mysqli_query($cn, "SELECT * FROM user where username='".$_SESSION[sha1('loginBukuTamuWikrama')]."'"));
  if ($user->jk == 'l') {
    $photo = asset('asset/img/user-laki.png');
  }else{
    $photo = asset('asset/img/user-perempuan.png');
  }
?>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" type="text/css" href="<?=asset('asset/css/materialize.min.css')?>">
  <link rel="stylesheet" type="text/css" href="<?=asset('asset/css/icon/icon.css')?>">
  <link rel="stylesheet" type="text/css" href="<?=asset('asset/css/style.css')?>">
</head>
<body class="grey lighten-5">
  <ul id="sideMenuEuy" class="side-nav fixed">
    <li>
      <div class="userView grey lighten-5">
        <img class="background" src="<?=asset('asset/img/tumb_back-1.jpg')?>">
        <a href="#!"><img class="circle white" src="<?=$photo?>"></a>
        <a href="#!"><span class="grey-text text-darken-2 name"></span></a>
        <a href="#!"><span class="grey-text text-darken-2 email"><?=$user->nama?></span></a>
        <a href="javascript:void(0)" class="menu dropdown-button grey-text text-darken-2" data-activates="menuNya"><span class="material-icons">arrow_drop_down</span></a>
        <ul id="menuNya" class="dropdown-content f-g-book">
          <li><a href="?logout" class="waves-effect">Logout</a></li>
        </ul>
      </div>
    </li>
    <li class="<?=$mn['beranda']?>"><a href="?menu=beranda" class="waves-effect"><i class="material-icons">home</i>Beranda</a></li>
    <li><div class="divider"></div></li>
    <li><a class="subheader">Fitur</a></li>
    <li class="<?=$mn['tamu']?>"><a href="?menu=tamu" class="waves-effect"><i class="material-icons">people</i>Umum</a></li>
    <li class="<?=$mn['alumni']?>"><a href="?menu=alumni" class="waves-effect"><i class="material-icons">school</i>Alumni</a></li>
    <li class="<?=$mn['kunjungan']?>"><a href="?menu=kunjungan" class="waves-effect"><i class="material-icons">person</i>Kunjungan</a></li>
    <li class="<?=$mn['perusahaan']?>"><a href="?menu=perusahaan" class="waves-effect"><i class="material-icons">account_balance</i>Perusahaan</a></li>
    <li class="<?=$mn['ortu']?>"><a href="?menu=ortu" class="waves-effect"><i class="material-icons">person_outline</i>Orang Tua</a></li>
    <li><div class="divider"></div></li>
    <li><a href="tampil_semua_tamu.php" target="_blank" class="waves-effect"><i class="material-icons">dashboard</i>Tampil Semua Tamu</a></li>
  </ul>
  <main>
    <nav class="white">
      <div class="nav-wrapper">
        <a href="javascript:void(0)" class="brand-logo f-g-book grey-text text-darken-2">Buku Tamu</a>
        <a href="#" data-activates="sideMenuEuy" class="button-collapse"><i class="material-icons grey-text text-darken-2">menu</i></a>
      </div>
    </nav>
    <?php include 'inc/'.$inc; ?>
  </main>
  <footer>
    
  </footer>
  <script src="<?=asset('asset/js/jquery.min.js')?>"></script>
  <script src="<?=asset('asset/js/materialize.min.js')?>"></script>
  <script>
    $(document).ready(function() {
      $(".button-collapse").sideNav({
        menuWidth: 240
      });
      $('.menu.dropdown-button').dropdown({
        inDuration: 300,
        outDuration: 225,
        constrainWidth: false,
        alignment: 'right',
      });
    });
  </script>
  <?php
    if (isset($ajax)) {
      echo $ajax;
    }
  ?>
</body>
</html>