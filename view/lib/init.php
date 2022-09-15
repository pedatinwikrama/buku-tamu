<?php
date_default_timezone_set('Asia/Jakarta');
session_start();
$cn = mysqli_connect("localhost", "root", "RPLbaru2018", "db_bukutamu_wk") or die('<span style="font-family: sans-serif;">Koneksi Bermasalah</span>');

require __DIR__.'\helper.php';