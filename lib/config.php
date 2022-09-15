<?php

error_reporting(0);
$hostname = '127.0.0.1';
$username = 'root';
$password = 'RPLbaru2018';
$database = 'db_bukutamu_wk';

mysql_connect($hostname, $username, $password) or die('tidak ada koneksi');
mysql_select_db($database) or die('tidak ada database');

function antiI($text){
  $fill = mysql_real_escape_string(stripcslashes(strip_tags(htmlspecialchars($text, ENT_QUOTES))));
  return $fill;
}