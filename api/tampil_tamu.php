<?php  

	include 'koneksi.php';

	$whereTanggal = date("Y-m-d");
	
	$result = array();
	if (isset($_GET['tgl1'])) {
    $tgl = addslashes($_GET['tgl1']);
    $r = mysqli_query($conn,"SELECT * FROM tamu  WHERE waktu like '$tgl%'") or die(mysql_error());
  }else{
	 $r = mysqli_query($conn,"SELECT * FROM tamu  WHERE waktu like '$whereTanggal%'") or die(mysql_error());
  }
	
	while ($row = mysqli_fetch_array($r)) {
		
		array_push($result, array(
				"id" => $row['id'],
				"nama" => $row['nama'],
				"instansi" => $row['instansi'],
				"keperluan" => $row['keperluan'],
				"foto" => $row['foto'],
				"ttd" => $row['ttd'],
				"waktu" => $row['waktu']
			));
	}

	echo json_encode(array('tamu' => $result));
	mysqli_close($conn);
?> 