<?php

	include 'koneksi.php';

	if($_SERVER['REQUEST_METHOD'] == 'POST'){

		$id = 0;
		$nama = $_POST['nama'];
		$tahun_lulusan = $_POST['tahun_lulusan'];
		$jurusan = $_POST['jurusan'];
		$hp = $_POST['hp'];
		$email = $_POST['email'];
		$keperluan = $_POST['keperluan'];
		$foto = $_POST['foto'];
		$ttd = $_POST['ttd'];
		$waktu = date("Y-m-d H:i:s");

		$sql = mysqli_fetch_array(mysqli_query($conn,"SELECT max(id) AS id FROM alumni"));
		$foto_server = "ALM00".$sql['id'].".jpeg";
		$ttd_server = "ALMTTD00".$sql['id'].".png";

		$InsertSQL = "INSERT INTO tamu (nama,tahun_lulusan,jurusan,hp,email,keperluan,foto,ttd,waktu) VALUES ('$nama','$tahun_lulusan','$jurusan','$hp','$email','$keperluan','$foto_server','$ttd_server','$waktu')";

		if(mysqli_query($conn, $InsertSQL)){

			file_put_contents("../foto/orang/$foto_server",base64_decode($foto));
			file_put_contents("../foto/ttd/$ttd_server",base64_decode($ttd));

			echo "Alumni berhasil ditambahkan.";
		}
		mysqli_close($conn);
	}else{
		echo "Alumni gagal ditambahkan.";
	}
?>