<?php  

	include 'koneksi.php';

	$result = array();

	$r = mysqli_query($conn,"SELECT * FROM acara ") or die(mysql_error());
	
	while ($row = mysqli_fetch_array($r)) {
		
		array_push($result, array(
				"id" => $row['id'],
				"acara" => $row['acara']
			));
	}

	echo json_encode(array('tamu' => $result));
	mysqli_close($conn);
?> 