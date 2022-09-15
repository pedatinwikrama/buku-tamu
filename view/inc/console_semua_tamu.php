<?php
  $url = array(
    'http://10.20.30.150:74/bukutamu/api/tampil_kunjungan.php',
    'http://10.20.30.150:74/bukutamu/api/tampil_tamu.php',
  );
  $data = array();
  foreach ($url as $r) {
    $a    = file_get_contents($r);
    $data[] = json_decode($a, true)['tamu'];
  }
  // print_r($data);

  // menggabungkan semua data
  $data1 = array();
  for($i = 0; $i < count($data); $i++){
    foreach ($data[$i] as $r) {
      array_push($data1, $r);
    }
  }
  // print_r($data1);

  // akan di sort berdasarkan waktu na
  $tanggalEuy = array();
  foreach($data1 as $r){
    $tanggalEuy[] = $r['waktu'];
  }
  // print_r($tanggalEuy);
  
  array_multisort($tanggalEuy, SORT_DESC, $data1);
  print_r($data1);