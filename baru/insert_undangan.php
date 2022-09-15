<?php

	include 'koneksi.php';

	if($_SERVER['REQUEST_METHOD'] == 'POST'){

		$id = $_GET['id'];

		$ucapan = $_POST['ucapan'];

		$foto = $_POST['foto'];
		$ttd = $_POST['ttd'];
		$waktu = date("Y-m-d H:i:s");

		$foto_server = "UNDIMG00".$id.".jpeg";
		$ttd_server = "UNDTTD00".$id.".png";

		$update = "UPDATE undangan SET ucapan = '$ucapan',waktu = '$waktu',foto = '$foto_server', ttd = '$ttd_server', status = '1' WHERE id = '$_GET[id]'";
		if(mysqli_query($conn, $update)){

			file_put_contents("../foto/orang/$foto_server",base64_decode($foto));
			file_put_contents("../foto/ttd/$ttd_server",base64_decode($ttd));

			echo "Ucapan berhasil ditambahkan.";
		}
		mysqli_close($conn);
	}else{
		echo "Ucapan gagal ditambahkan.";
	}
?>