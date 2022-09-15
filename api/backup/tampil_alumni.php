<?php  

	include 'koneksi.php';

	$whereTanggal = date("Y-m-d");
	
	$result = array();
	$r = mysqli_query($conn,"SELECT * FROM alumni  WHERE waktu like '$whereTanggal%' order by waktu desc") or die(mysql_error());
	
	while ($row = mysqli_fetch_array($r)) {
		
		array_push($result, array(
				"id" => $row['id'],
				"nama" => $row['nama'],
				"tahun_lulus" => $row['tahun_lulus'],
				"jurusan" => $row['jurusan'],
				"hp" => $row['hp'],
				"email" => $row['email'],
				"keperluan" => $row['keperluan'],
				"foto" => $row['foto'],
				"ttd" => $row['ttd'],
				"waktu" => $row['waktu']
			));
	}

	echo json_encode(array('tamu' => $result));
	mysqli_close($conn);
?> 