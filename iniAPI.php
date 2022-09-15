<?php
  include 'lib/config.php';
  $sql = mysql_query("SELECT * FROM tamu");
  while ($r = mysql_fetch_assoc($sql)) {
    $json[] = $r;
  }
  echo json_encode(array('result' => $json));
?>