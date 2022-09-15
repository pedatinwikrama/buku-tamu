<?php  

	include 'koneksi.php';

	$id= $_GET['id'];
	$kode= $_GET['kode'];
	$result = array();

	$r = mysqli_query($conn,"SELECT * FROM undangan WHERE id_acara = '$id' && no_undangan = '$kode' ") or die(mysql_error());
	
	while ($row = mysqli_fetch_array($r)) {
		
		array_push($result, array(
				"id" => $row['id'],
				"no_undangan" => $row['no_undangan'],
				"nama" => $row['nama'],
				"instansi" => $row['instansi'],
				"alamat" => $row['alamat'],
				"status" => $row['status']
			));
	}

	echo json_encode(array('tamu' => $result));
	mysqli_close($conn);
?> 