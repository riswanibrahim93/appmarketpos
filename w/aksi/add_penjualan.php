<?php 
session_start();
include '../inc/koneksi.php';
// var_dump($_POST);
// die;

$kd_toko = $_SESSION['kd_toko'];


if(isset($_POST['add_penjualan'])){
	$id = $_POST['kd_barang'];
	$jumlah = $_POST['jumlah'];
	// echo $id;
	$ids = explode(",", $id);
	$jumlahs = explode(",", $jumlah);

	// membuat nomor faktur
	$nomorFaktur = "OFF";
		$query_tabel_toko = "SELECT * FROM `tabel_toko` WHERE `kd_toko` = '$kd_toko'";
		$hasil_tabel_toko = mysqli_fetch_array(mysqli_query($koneksi, $query_tabel_toko));
	$nama_toko_upper = strtoupper(substr($hasil_tabel_toko['nm_toko'],0,3));
	// no faktur + nama toko
	$nomorFaktur .= $nama_toko_upper;

		$query_tabel_penjualan = "SELECT * FROM `tabel_penjualan` WHERE `no_faktur_penjualan` LIKE '%$nama_toko_upper%'";
		$hasil_tabel_penjualan = mysqli_query($koneksi, $query_tabel_penjualan);
		$old_faktur = "";
		$new_faktur = "";
		while($h=mysqli_fetch_array($hasil_tabel_penjualan)){
			$old_faktur = $h['no_faktur_penjualan'];
		}

	// no faktur + urutan
	if($old_faktur == null){
		$new_faktur .= "00001";
	}
	else{
		$old_faktur = substr($old_faktur,strlen($old_faktur)-5)+1;
		$nol = 5 - strlen($old_faktur);
		while($nol > 0){
			$new_faktur .= '0';
			$nol --;
		}
		$new_faktur = $new_faktur.$old_faktur;	
	}
	$nomorFaktur .= $new_faktur;

	$kd_supplier = "";
	$id_user = $_SESSION['id_user'];
	$total_penjualan = $_POST['total'];
	$dp = "";
	$sisa = "";
	$ket_penjualan = "";
	$status = "";
	$pengiriman = $_POST['pengiriman'];
	$bayar = $_POST['bayar'];



	for ($i=0; $i < count($ids); $i++) { 

		$query_tabel_barang = "SELECT * FROM `tabel_barang` WHERE `kd_barang` = '$ids[$i]'";
		$hasil_tabel_barang = mysqli_fetch_array(mysqli_query($koneksi, $query_tabel_barang));

		$namaBarang = $hasil_tabel_barang['nm_barang'];
		$noHp = "";
		$ukuran = "";
		$harga = $hasil_tabel_barang['hrg_jual'];
		$total = intval($jumlahs[$i]) * intval($hasil_tabel_barang['hrg_jual']);
		$total_biaya = $total_penjualan+$pengiriman;
		$diskon = "";
		$a_n = "";
		$ket = "";
		$stts = "FINISH";
		$alamat = "";
		$alamat_akhir = "";

		$query = "INSERT INTO `tabel_rinci_penjualan`(`no_faktur_penjualan`, `kd_barang`, `nm_barang`, `no_hp`, `ukuran`, `jumlah`, `harga`, `sub_total_jual`, `diskon`, `a_n`, `keterangan`, `stts`, `alamat`, `alamat_akhir`) VALUES ('$nomorFaktur','$ids[$i]','$namaBarang','$noHp','$ukuran','$jumlahs[$i]','$harga','$total','$diskon','$a_n','$ket','$stts','$alamat','$alamat_akhir')";
		$hasil=mysqli_query($koneksi,$query);


	}

	if($hasil){
		$query = "INSERT INTO `tabel_penjualan`(`no_faktur_penjualan`, `kd_supplier`, `tgl_penjualan`, `id_user`, `total_penjualan`,`biaya_pengiriman`,`total_biaya`,`dp`, `sisa`, `ket`, `status`) VALUES ('$nomorFaktur','$kd_supplier',now(),'$id_user','$total_penjualan','$pengiriman','$total_biaya','$dp','$sisa','$ket_penjualan','$status')";
		$hasil=mysqli_query($koneksi,$query);

		if($hasil && $pengiriman != null){
			header("Location: ../page/index.php?menu=nota2&faktur=$nomorFaktur&bayar=$bayar");
		}
		else{
			header("Location: ../page/print_nota.php?faktur=$nomorFaktur&bayar=$bayar");
		}
	}
}


?>