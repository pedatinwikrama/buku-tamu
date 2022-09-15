<?php  

	include 'koneksi.php';

	$whereTanggal = date("Y-m-d");
	
	$result = array();
	$r = mysqli_query($conn,"SELECT * FROM ortu  WHERE waktu like '$whereTanggal%' order by waktu desc") or die(mysql_error());
	
	while ($row = mysqli_fetch_array($r)) {
		
		array_push($result, array(
				"id" => $row['id'],
				"nama" => $row['nama'],
				"ortu_dari" => $row['ortu_dari'],
				"keperluan" => $row['keperluan'],
				"bertemu_dengan" => $row['bertemu_dengan'],
				"hp" => $row['no_hp'],
				"foto" => $row['foto'],
				"ttd" => $row['ttd'],
				"waktu" => $row['waktu']
			));
	}

	echo json_encode(array('tamu' => $result));
	mysqli_close($conn);
?> 