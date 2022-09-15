<?php
  require __DIR__.'\lib\init.php';
  date_default_timezone_set('Asia/Jakarta');
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
<body class="grey lighten-2">
  <nav class="white">
    <div class="nav-wrapper">
      <a href="javascript:void(0)" class="brand-logo f-g-book grey-text text-darken-2">Tamu kita hari ini : <?=date('M d, Y')?></a>
      <a href="#" data-activates="sideMenuEuy" class="button-collapse"><i class="material-icons grey-text text-darken-2">menu</i></a>
    </div>
    <style>
      nav{
        height: 70px;
      }
      .created{
        position: absolute;
        top: 0px;
        right: 0px;
      }
      .created p{
        line-height: .2;
        font-size: 11px;
        padding-right: 20px;
      }
      .created ol{
        margin-top: 0px;
        margin-left: 0px;
        margin-right: 10px;
        padding-left: 20px;
        font-size: 11px;
        float: right;
        list-style: none;
      }
      .created ol li{
        padding: 0!important;
        margin: 0!important;
        line-height: 1;
        /*text-align: right;*/
        text-transform: capitalize;
      }
    </style>
    <div class="created grey-text f-g-book">
      <p><ol>
        <li>Copyright &copy; 2018 GEN-13 RPL</li>
        <li>Developed by :</li>
        <li>1. Muhammad rizki wahyudi</li>
        <li>2. Ferdi Haspi nur imanulloh</li>
        <li>3. Ramadhan yoga pratama</li>
      </ol></p>
    </div>
  </nav>
  <div class="container" style="margin-top: 20px;width: 90%" id="loadAjib"></div>
  <script src="<?=asset('asset/js/jquery.min.js')?>"></script>
  <script src="<?=asset('asset/js/materialize.min.js')?>"></script>
  <script>
    $(document).ready(function() {
      loadDataEuy();
      setInterval(function(){
        loadDataEuy();
      }, 5000)
    });
    function loadDataEuy(){
      $.ajax({
        url: 'inc/semua_tamu.php',
        success: function(isiNa){
          $('#loadAjib').html(isiNa);
        }
      }); 
    }
  </script>
</body>
</html>