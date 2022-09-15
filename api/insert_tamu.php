<?php

	include 'koneksi.php';

	if($_SERVER['REQUEST_METHOD'] == 'POST'){

		$id = 0;
		$nama = $_POST['nama'];
		$instansi = $_POST['instansi'];
		$keperluan = $_POST['keperluan'];
		$foto = $_POST['foto'];
		$ttd = $_POST['ttd'];
		$waktu = date("Y-m-d H:i:s");

		$sql = mysqli_fetch_array(mysqli_query($conn,"SELECT max(id) AS id FROM tamu"));
		$foto_server = "IMG00".$sql['id'].".jpeg";
		$ttd_server = "TTD00".$sql['id'].".png";

		$InsertSQL = "INSERT INTO tamu (nama,instansi,keperluan,foto,ttd,waktu) VALUES ('$nama','$instansi','$keperluan','$foto_server','$ttd_server','$waktu')";

		if(mysqli_query($conn, $InsertSQL)){

			file_put_contents("../foto/orang/$foto_server",base64_decode($foto));
			file_put_contents("../foto/ttd/$ttd_server",base64_decode($ttd));

			echo "Tamu berhasil ditambahkan.";
		}
		mysqli_close($conn);
	}else{
		echo "Tamu gagal ditambahkan.";
	}
?>