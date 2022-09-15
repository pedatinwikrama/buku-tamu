<?php  

	include 'koneksi.php';

	$id= $_GET['id'];
	$result = array();

	$r = mysqli_query($conn,"SELECT * FROM undangan WHERE id_acara = '$id' && status = '1'") or die(mysql_error());
	
	while ($row = mysqli_fetch_array($r)) {
		
		array_push($result, array(
				"id" => $row['id'],
				"no_undangan" => $row['no_undangan'],
				"nama" => $row['nama'],
				"instansi" => $row['instansi'],
				"alamat" => $row['alamat'],
				"ucapan" => $row['ucapan'],
				"waktu" => $row['waktu'],
				"foto" => $row['foto'],
				"ttd" => $row['ttd']
			));
	}

	echo json_encode(array('tamu' => $result));
	mysqli_close($conn);
?> 