<?php
	session_start();
	include "../inc/koneksi.php";
	$nama = $_POST['nama'];	
	$password = $_POST['pass'];
	
	$query = "SELECT * FROM tabel_member WHERE nm_user  = '$nama'";
	$hasil = mysqli_query($koneksi,$query);
	$data = mysqli_fetch_assoc($hasil);
	
	$pengacak = "p3ng4c4k";
	
	$passmd = md5($pengacak . md5($password));
	if ($passmd == $data['password'])
	{
		$id = $data['id_user'];
		$_SESSION['nm_user'] = $data['nm_user'];
		$_SESSION['id_user'] = $data['id_user'];
		$_SESSION['email_user'] = $data['email_user'];
		$_SESSION['akses'] = $data['akses'];
		echo "<script>alert('Berhasil Login');window.location= '../page/?menu=home';</script>";
	}else{
		echo "<script>alert('Gagal Login');window.location= 'login.php';</script>";
	}
	
?>