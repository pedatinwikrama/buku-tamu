<?php
function asset($url){
  $base_url = $_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['HTTP_HOST'].str_replace(basename($_SERVER['SCRIPT_NAME']), '', $_SERVER['SCRIPT_NAME']);
  $base_url .= $url;
  return $base_url;
}
function antiI($text){
  $fill = stripcslashes(strip_tags(htmlspecialchars($text, ENT_QUOTES)));
  return $fill;
}
function e($text){
  return htmlspecialchars($text, ENT_QUOTES);
}
function handleGet($get){
  if (isset($_GET[$get])) {
    return $_GET[$get];
  }else{
    return '';
  }
}
function handleGetHal($get, $jmlHal){
  if (isset($_GET[$get])) {
    if (!empty($_GET[$get])) {
      if ($_GET[$get] <= 0) {
        return 1;
      }else{
        if ($_GET[$get] > $jmlHal) {
          return $jmlHal;
        }
        return e((int)$_GET[$get]);
      }
    }else{
      return 1;
    }
  }else{
    return 1;
  }
}
function randCuy($length = 5){
  $str = '1234567890';
  $len = strlen($str) - 1;
  $kode = '';
  for($i = 0; $i < $length; $i++){
    $start = rand(0, $len);
    $kode .= substr($str, $start,1);
  }
  return $kode;
}
function now(){
  return date('Y-m-d H:i:s');
}