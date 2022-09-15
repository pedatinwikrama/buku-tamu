<?php  

	include 'koneksi.php';

	$whereTanggal = date("Y-m-d");
	
	$result = array();
	$r = mysqli_query($conn,"SELECT * FROM tamu  WHERE waktu like '$whereTanggal%' order by waktu desc") or die(mysql_error());
	
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