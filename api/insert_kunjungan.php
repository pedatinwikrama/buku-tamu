<?php

	include 'koneksi.php';

	if($_SERVER['REQUEST_METHOD'] == 'POST'){

		$id = 0;
		$nama = $_POST['nama'];
		$instansi = $_POST['instansi'];
		$email = $_POST['email'];
		$hp = $_POST['hp'];
		$pesan = $_POST['pesan'];
		$kesan = $_POST['kesan'];


		$foto = $_POST['foto'];
		$ttd = $_POST['ttd'];
		$waktu = date("Y-m-d H:i:s");

		$sql = mysqli_fetch_array(mysqli_query($conn,"SELECT max(id) AS id FROM kunjungan"));
		$foto_server = "KJG00".$sql['id'].".jpeg";
		$ttd_server = "KJGTTD00".$sql['id'].".png";

		$InsertSQL = "INSERT INTO kunjungan (nama,instansi,email,hp,pesan,kesan,foto,ttd,waktu) VALUES ('$nama','$instansi','$email','$hp','$pesan','$kesan','$foto_server','$ttd_server','$waktu')";

		if(mysqli_query($conn, $InsertSQL)){

			file_put_contents("../foto/orang/$foto_server",base64_decode($foto));
			file_put_contents("../foto/ttd/$ttd_server",base64_decode($ttd));

			echo "Kunjungan berhasil ditambahkan.";
		}
		mysqli_close($conn);
	}else{
		echo "Kunjungan gagal ditambahkan.";
	}
?>