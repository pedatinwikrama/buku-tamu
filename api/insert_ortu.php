<?php

	include 'koneksi.php';

	if($_SERVER['REQUEST_METHOD'] == 'POST'){

		$id = 0;
		$nama = $_POST['nama'];
		$ortu_dari = $_POST['ortu_dari'];
		$bertemu_dengan = $_POST['bertemu_dengan'];
		$keperluan = $_POST['keperluan'];
		$no_hp = $_POST['no_hp'];

		$foto = $_POST['foto'];
		$ttd = $_POST['ttd'];
		$waktu = date("Y-m-d H:i:s");

		$sql = mysqli_fetch_array(mysqli_query($conn,"SELECT max(id) AS id FROM ortu"));
		$foto_server = "ORT00".$sql['id'].".jpeg";
		$ttd_server = "ORTTTD00".$sql['id'].".png";

		$InsertSQL = "INSERT INTO ortu (nama,ortu_dari,keperluan,bertemu_dengan,no_hp,foto,ttd,waktu) VALUES ('$nama','$ortu_dari','$keperluan','$bertemu_dengan','$no_hp','$foto_server','$ttd_server','$waktu')";

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