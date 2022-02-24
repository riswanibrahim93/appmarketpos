<?php 
session_start();
include '../inc/koneksi.php';
// var_dump($_POST);

// var_dump($_SESSION['id_user']);
 // die;


if(isset($_POST['add_penjualan'])){
	$id = $_POST['kd_barang'];
	$jumlah = $_POST['jumlah'];
	// echo $id;
	$ids = explode(",", $id);
	$jumlahs = explode(",", $jumlah);

	$nomorFaktur = "";
	$kd_supplier = "";
	$id_user = $_SESSION['id_user'];
	$total_penjualan = $_POST['total'];
	$dp = "";
	$sisa = "";
	$ket_penjualan = "";
	$status = "";



	for ($i=0; $i < count($ids); $i++) { 

		$query_tabel_barang = "SELECT * FROM `tabel_barang` WHERE `kd_barang` = '$ids[$i]'";
		$hasil_tabel_barang = mysqli_fetch_array(mysqli_query($koneksi, $query_tabel_barang));

		$namaBarang = $hasil_tabel_barang['nm_barang'];
		$noHp = "";
		$ukuran = "";
		$harga = $hasil_tabel_barang['hrg_jual'];
		$total = intval($jumlahs[$i]) * intval($hasil_tabel_barang['hrg_jual']);
		$diskon = "";
		$a_n = "";
		$ket = "";
		$stts = "";
		$alamat = "";
		$alamat_akhir = "";

		$query = "INSERT INTO `tabel_rinci_penjualan`(`no_faktur_penjualan`, `kd_barang`, `nm_barang`, `no_hp`, `ukuran`, `jumlah`, `harga`, `sub_total_jual`, `diskon`, `a_n`, `keterangan`, `stts`, `alamat`, `alamat_akhir`) VALUES ('$nomorFaktur','$ids[$i]','$namaBarang','$noHp','$ukuran','$jumlahs[$i]','$harga','$total','$diskon','$a_n','$ket','$stts','$alamat','$alamat_akhir')";
		$hasil=mysqli_query($koneksi,$query);


	}

	if($hasil){
		$query = "INSERT INTO `tabel_penjualan`(`no_faktur_penjualan`, `kd_supplier`, `tgl_penjualan`, `id_user`, `total_penjualan`, `dp`, `sisa`, `ket`, `status`) VALUES ('$nomorFaktur','$kd_supplier',now(),'$id_user','$total_penjualan','$dp','$sisa','$ket_penjualan','$status')";
		$hasil=mysqli_query($koneksi,$query);

		if($hasil){
			echo "<script>history.back()</script>";
		}
	}
}


?>