<?php 
session_start();
include '../inc/koneksi.php';
if (!isset($_SESSION['nm_user']) && !isset($_SESSION['pass'])) {
  header('location:../aut/login.php');
} 
// var_dump($_POST);
// var_dump($_FILES);
// die;

$varian="";

if(isset($_POST['panjang']))
{
	$varian .= "panjang,";
}
if(isset($_POST['lebar']))
{
	$varian .= "lebar,";
}
if(isset($_POST['tinggi']))
{
	$varian .= "tinggi,";
}
if(isset($_POST['warna']))
{
	$varian .= "warna,";
}
if(isset($_POST['type']))
{
	$varian .= "type";
}

// var_dump($varian); die;


if(isset($_POST['add_kategori'])){
	$nama = $_POST['kategori'];
	if(!$nama){
		echo "<script>alert('Tambah Nama Kategori');history.back()</script>";
	}
	$form = $_POST['form'];

	$image_name = $_FILES['gambar']['name'];
	$image_size = $_FILES['gambar']['size'];
	$image_tmp = $_FILES['gambar']['tmp_name'];
	$image_error = $_FILES['gambar']['error'];

	// cek image
	if($image_error === 4){
		// echo "<script>alert('Tambah Image Kategori');history.back()</script>";
	}
	else{	
		// cek ekstensi
		$ekstensiGambarValid = ['jpg', 'jpeg', 'png'];
		$ekstensiGambar = explode(".", $image_name);
		$ekstensiGambar = strtolower(end($ekstensiGambar));
		if( !in_array($ekstensiGambar, $ekstensiGambarValid) ){
			echo "<script>alert('Hanya Menerima ekstensi jpg, jpeg dan png');history.back()</script>";
		}

		// cek ukuran
		if($image_size > 100000){
			echo "<script>alert('Ukuran Image Harus < 1 Mb');history.back()</script>";
		}

		// generate nama image
		$image_name_new = uniqid();
		$image_name_new .= '.';
		$image_name_new .= $ekstensiGambar;

		// simpan gambar
		move_uploaded_file($image_tmp, '../img/kategori/'.$image_name_new);
		// echo $nama.$form.$image_name_new;
	}


	$query = "INSERT INTO tabel_kategori_barang values('','$nama','$form','$image_name_new','$varian')";
	$hasil=mysqli_query($koneksi,$query);
	// echo $hasil;
	if($query){
			echo "<script type='text/javascript'>alert('Berhasil Tambah Kategori');history.back()</script>";
		}
}

 ?>