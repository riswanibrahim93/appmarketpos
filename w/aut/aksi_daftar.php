<!--?php

use FontLib\Header;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

include('../../phpmailer/src/Exception.php');
include('../../phpmailer/src/PHPMailer.php');
include('../../phpmailer/src/SMTp.php');
?-->

<?php
include "../inc/koneksi.php";
	$cekdulu= "SELECT * FROM tabel_member WHERE nm_user='$_POST[nama]' OR email_user='$_POST[email]'"; //username dan $_POST[un] diganti sesuai dengan yang kalian gunakan
$prosescek= mysqli_query($koneksi, $cekdulu);
if (mysqli_num_rows($prosescek)>0) { //proses mengingatkan data sudah ada
    echo "<script>alert('Username Sudah Digunakan');history.go(-1) </script>";
}
else { //proses menambahkan data, tambahkan sesuai dengan yang kalian gunakan
 	$email = $_POST['email'];
    $pass = $_POST['pass'];
    $password1 = $_POST['pass1'];
	$nama = $_POST['nama'];
	$akses = $_POST['akses'];
	$random = rand();
	$toko = $_POST['nama_toko'];

	$kode_toko = strtoupper(substr($toko,0,3));	
	$kode_toko = $kode_toko.rand(100,999);

	if($pass == $password1){
		$pengacak= "p3ng4c4k";
		
		$passmd = md5($pengacak . md5($pass));
		
		$query = "	INSERT INTO `tabel_member`
						(`kode_user`, `nm_user`, `email_user`, `password`,`pass_user`,`akses`,`stt_user`) 
					VALUES 
						('$random', '$nama', '$email','$passmd','$password1','$akses','0')";
		$hasil = mysqli_query($koneksi,$query);

		if ($hasil) {
			// $emailPengrim 	= 'hargakita2021@gmail.com';
			// $namaPengirim 	= 'hargakita';
			// $emailPenerima	= $email;
			// $subjek		  	= 'regristasi new member';
			// $pesan 			= 'verivied your account';
			
			// $mail			= new PHPMailer(true);
			// $mail->isSMTP();

			// $mail->Host		= 'smtp.gmail.com';
			// $mail->Username	= $emailPengrim;
			// $mail->Password = 'tmmvetnehijuyiuc';
			// $mail->Port		= 465;
			// $mail->SMTPAuth	= true;
			// $mail->SMTPDebug= 2;

			// $mail->setFrom($emailPengrim, $namaPengirim); 
			// $mail->addAddress($emailPenerima);
			// $mail->isHTML(true);
			// $mail->Subject = $subjek;
			// $mail->Body	= $pesan;
			// $send = $mail->send();

			// if ($send) {
			// 	echo "suksek terkirim";
			// }else{
			// 	echo 'enail gagal';
			// }

			// tambah toko
			// $query = "INSERT INTO `tabel_toko` 
			// 			(`kd_toko`, `nm_toko`, `almt_toko`, `kota_toko`, `kecamatan_toko`, `tlp_toko`, `fax_toko`, `logo`, `password`, `pass`, `status`, `tipe`, `headerfooter`, `background`, `tombol`) 
			// 		VALUES 
			// 			('$kode_toko', '$toko', 'Jl.Simp. Grajakan Blok III/20 Pandanwangi', 'Malang', 'Blimbing', '', '', '6212daecdaa68.png', '757f9d5b09cfd69699c86364746ad68e', '123456', '', '', '#1F0001', '#FF9F21', '#FF9F43')";
			// $hasil = mysqli_query($koneksi,$query);
			
			header('location: ../aut/login.php');
		}
	}
}
?>
