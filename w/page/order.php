<?php
ini_set("display_errors", 0);
if (isset($_POST['selesai'])) {
  $no_nota    = $_POST['no_nota'];
  if (empty($no_nota)) {
  } else {
    $query = "UPDATE `tabel_penjualan` SET `sisa`='selesai' WHERE `no_faktur_penjualan`='$no_nota'";
    $hasil = mysqli_query($koneksi, $query);
    echo "<script language='JavaScript'>alert('Transaksi Selesai!');document.location='index.php?menu=order'</script>";
  }
}
?>
<?php
ini_set("display_errors", 0);
if (isset($_POST['yuk'])) {
  $no_faktur    = $_POST['no_faktur'];
  $ongkir      = $_POST['ongkir'];
  if (empty($no_faktur)) {
  } else {
    $query = "UPDATE `tabel_penjualan` SET `dp`='$ongkir' WHERE `no_faktur_penjualan`='$no_faktur'";
    $hasil = mysqli_query($koneksi, $query);
    echo "<script language='JavaScript'>document.location='index.php?menu=order'</script>";
  }
}
?>
<!-- BEGIN: Content-->
   <div class="app-content content">
      <div class="content-overlay"></div>
      <div class="header-navbar-shadow"></div>
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-9 col-12 mb-2">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h2 class="content-header-title float-left mb-0 text-dark text-capitalize"><?php echo $_SESSION['akses'];?></h2>
                            <div class="breadcrumb-wrapper col-12">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.php?menu=home" class="text-dark">Home</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#" class="text-dark">Pesanan</a>
                                    </li>                                   
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

<div class="card">
 <div class="card-body">
  
 
                <div class="content-body">
                    <!-- Ecommerce Content Section Starts -->
                    <section id="ecommerce-header">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="ecommerce-header-items">
                                    <div class="result-toggler">
                                        <button class="navbar-toggler shop-sidebar-toggler" type="button" data-toggle="collapse">
                                            <span class="navbar-toggler-icon d-block d-lg-none"><i class="feather icon-menu"></i></span>
                                        </button>                                        
                                        <div class="badge badge-primary float-right">
      <?php $sql_user = mysqli_query($koneksi,"SELECT * FROM tabel_penjualan WHERE sisa = 'wait'");
	  $jumlah_user = mysqli_num_rows($sql_user); ?>
         								<span class="badge badge-pill badge-danger font-small-2 mr-2">
		 <?php echo $jumlah_user?></span>Total Pesanan 
     									</div> 
                                    </div>                                   
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Ecommerce Content Section Starts -->

                    

              <!-- Basic example and Profile cards section start -->
                <section id="basic-examples">
                    <div class="row match-height mt-3">
<?php 
$batas = 6;
$halaman = isset($_GET['halaman'])?(int)$_GET['halaman'] : 1;
$halaman_awal = ($halaman>1) ? ($halaman * $batas) - $batas : 0;	
$previous = $halaman-1;
$next = $halaman+1;
$data = mysqli_query($koneksi,"SELECT * FROM tabel_member,tabel_penjualan WHERE tabel_penjualan.id_user = tabel_member.id_user");
$jumlah_data = mysqli_num_rows($data);
$total_halaman = ceil($jumlah_data / $batas);
$data_barang = mysqli_query($koneksi,"SELECT * FROM tabel_member,tabel_penjualan WHERE tabel_penjualan.id_user = tabel_member.id_user limit $halaman_awal, $batas");
$nomor = $halaman_awal+1;
while($d = mysqli_fetch_array($data_barang)){
$antrian   = $d['no_faktur_penjualan'];
$ongkir   = $d['dp'];
$total_jual  = $d['total_penjualan'];
$total    = $ongkir+$total_jual;	
?>                        
                   
         <div class="col-xl-4 col-md-6 col-sm-12">
           <div class="card bg-gradient-info">
            <div class="card-content">
             <div class="ml-auto float-right">
                  <span class="badge badge-danger font-weight-normal p-1 rounded-0">Nota. <?php echo $antrian; ?></span></div>
              <div class="card-body"> 
                <div class="d-flex justify-content-between">
                  <div class="float-left">                     
                      <p class="font-medium-2 mb-0 text-capitalize"><?php echo $d['nm_user']; ?></p>
                   </div>
                 </div> 
                  <hr class="my-1">
                     <div class="d-flex justify-content-between mt-2">
                       <div class="float-left">
                         <p class="badge badge-primary rounded-0">Alamat Pengiriman</p>
                         <p class="font-small-2 mb-0"><?php echo $d['status']; ?></p>
                       </div>
                       <div class="float-right">
                              <p class="badge badge-primary rounded-0">Kontak</p>
                              <p class="font-small-2 mb-0"><?php echo $d['hp']; ?></p>
                         </div>
                     </div>
                    
                    <form method="post" action="">
                      <input type="hidden" name="no_faktur" value="<?php echo $a['no_faktur_penjualan']; ?>">
                      <label>Ongkos Kirim</label>
                      <div class="input-group mb-1">
                        <input name="ongkir" class="form-control" placeholder="isikan angka saja" />
                        <div class="input-group-append">
                          <button class="btn btn-warning rounded-0" type="submit" name="yuk">OK</button>
                        </div>
                      </div>
                    </form>
                  <ul class="list-inline font-weight-medium">
<?php $query_detail = "SELECT * FROM tabel_rinci_penjualan WHERE no_faktur_penjualan = '$antrian'";
      $result_detail = mysqli_query($koneksi, $query_detail);
      while ($b = mysqli_fetch_array($result_detail)) {
?>
            			<li><i class="fas fa-check"></i>
              <?php
              if (empty($b['no_hp'])) {
                echo $b['nm_barang']; ?> <?php echo "(" . $b['jumlah'] . ")";
              }elseif(empty($b['no_hp']) || empty($b['alamat'])){
                echo $b['nm_barang']; ?> <?php echo "(" . $b['jumlah'] . ")";?> <?php echo "(" . $b['no_hp'] . ")";
              }elseif(empty($b['no_hp']) || empty($b['alamat']) || empty($b['alamat_akhir'])){
                echo $b['nm_barang']; ?> <?php echo "(" . $b['jumlah'] . ")";?> <?php echo "(" . $b['no_hp'] . ")<br/>";?><?php echo "(" . $b['alamat'] . ")";
              } else {
                echo $b['nm_barang']; ?> <?php echo "(" . $b['jumlah'] . ")"; ?> <?php echo "(" . $b['no_hp'] . ")<br/>";?><?php echo "(" . $b['alamat'] . ")<br/>";?><?php echo "(" . $b['alamat_akhir'] . ")";
              }
                ?>
            				</li>
          <?php } ?>
          			</ul>
                   
                    <div class="d-flex justify-content-between mt-2">
                      <div class="float-left">
                         <p class="font-medium-2 mb-0 border-bottom-primary">TOTAL</p>
                         <p class="btn rounded-0 text-white">Rp. <?php echo number_format($total, 2, ',', '.'); ?></p>
                      </div>
                      <div class="float-right">
                         <p class="font-medium-2 mb-0 border-bottom-primary">PENGIRIMAN</p>
                         <p class="btn rounded-0 text-white">Rp. <?php echo number_format($ongkir, 2, ',', '.'); ?></p>
                      </div>
                     </div>
                     <div class="d-flex justify-content-between mt-2">
                      <form method="post" action="">
                        <input type="hidden" name="no_nota" value="<?php echo $a['no_faktur_penjualan']; ?>">
                        <button type="submit" name="selesai" class="btn btn-danger rounded-0"><i class="fas fa-clipboard-check"></i> Selesai</button>
                      </form>
                      <a href="index.php?menu=nota" target="_blank" class="btn btn-white rounded-0"><i class="fas fa-print"></i> PRINT</a>
                    </div>
                    </div>
                   </div>
                  </div>
                </div>

<?php } ?>
               </div>
              </section>    
                    

                    <!-- Ecommerce Pagination Starts -->
                    <section id="ecommerce-pagination">
                        <div class="row">
                            <div class="col-sm-12">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-center mt-2">
                                        
                                        <li class="page-item prev-item"><a class="page-link" <?php if($halaman > 1){ echo "href='index.php?menu=order&halaman=$previous'"; } ?>></a></li>
            <?php for($x=1;$x<=$total_halaman;$x++){ ?> 
                                        <li class="page-item active"><a class="page-link mr-1" href="index.php?menu=order&halaman=<?php echo $x ?>"><?php echo $x; ?></a>
                                        <?php } ?>				
                                        </li>
                                        
                                        <li class="page-item next-item"><a  class="page-link mr-5" <?php if($halaman < $total_halaman) { echo "href='index.php?menu=order&halaman=$next'"; } ?>></a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </section>
                    <!-- Ecommerce Pagination Ends -->

                </div>
            </div>
         

     </div>
    </div>
  </div>

<!-- END: Content-->
 </div>
</div> 