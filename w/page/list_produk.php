<!-- BEGIN: Content-->
    <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-9 col-12 mb-2">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h2 class="content-header-title float-left mb-0 text-dark text-capitalize">
							 <?php echo $_SESSION['akses'];?></h2>
                            <div class="breadcrumb-wrapper col-12">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.php?menu=home" class="text-dark">Home</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#" class="text-dark">Product</a>
                                    </li>                                   
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="content-header-right text-md-right col-md-3 col-12 d-md-block d-none">
                    <div class="form-group breadcrum-right">
                        <div class="dropdown">                            
                            <div class="badge badge-primary float-right">
<?php $sql_user = mysqli_query($koneksi,"SELECT * FROM tabel_barang");
 $jumlah_user = mysqli_num_rows($sql_user); ?>
         						<span class="badge badge-pill badge-danger font-small-2 mr-2">
		 							<?php echo $jumlah_user?></span>Total Produk 
     						</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content-detached content-right">
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
                                    </div>                                    
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Ecommerce Content Section Starts -->
                    <!-- background Overlay when sidebar is shown  starts-->
                    <div class="shop-content-overlay"></div>
                    <!-- background Overlay when sidebar is shown  ends-->

                    <!-- Ecommerce Search Bar Starts -->
                    <section id="ecommerce-searchbar">
                        <div class="row mt-1">
                            <div class="col-sm-12">
                                <fieldset class="form-group position-relative">
                                    <input type="text" class="form-control search-product" id="iconLeft5" placeholder="Search here">
                                    <div class="form-control-position">
                                        <i class="feather icon-search"></i>
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                    </section>
                    <!-- Ecommerce Search Bar Ends -->

                    <!-- Ecommerce Products Starts -->
                    <section id="basic-examples">
                     <div class="row match-height">                     
<?php 
$batas = 6;
$halaman = isset($_GET['halaman'])?(int)$_GET['halaman'] : 1;
$halaman_awal = ($halaman>1) ? ($halaman * $batas) - $batas : 0;	
$previous = $halaman-1;
$next = $halaman+1;
$data = mysqli_query($koneksi,"SELECT * FROM tabel_barang,tabel_barang_gambar,tabel_stok_toko WHERE tabel_barang.kd_barang = tabel_barang_gambar.id_brg AND tabel_barang.kd_barang = tabel_stok_toko.kd_barang");
$jumlah_data = mysqli_num_rows($data);
$total_halaman = ceil($jumlah_data / $batas);
$data_barang = mysqli_query($koneksi,"SELECT * FROM tabel_barang,tabel_barang_gambar,tabel_stok_toko WHERE tabel_barang.kd_barang = tabel_barang_gambar.id_brg AND tabel_barang.kd_barang = tabel_stok_toko.kd_barang limit $halaman_awal, $batas");
$nomor = $halaman_awal+1;
while($d = mysqli_fetch_array($data_barang)){
?>                                             
                      	<div class="col-xl-4 col-md-6 col-sm-12 col-6">
                            <div class="card">                                
                              <div class="card-content">
                               <img class="card-img-top img-fluid" src="../img/produk/<?php echo $d['gambar']; ?>">
                                <div class="card-body text-center">
                                 <h5><?php echo $d['nm_barang']; ?></h5>
                                  <div class="divider">
                                    <div class="divider-text"><h3 class="font-medium-1 bg-info p-1">
                                     <sup>Rp.</sup><?php echo number_format($d['hrg_jual'],0,",","."); ?></h3></div>
                                   </div>
                                        <div class="d-flex justify-content-between">
                                            <div class="float-left">
                                                <i class="far fa-heart text-warning mr-50"></i> 4.9
                                            </div>
                                            <div class="float-right">
                                                <i class="fas fa-boxes text-info mr-50"></i> <?php echo $d['stok']; ?>
                                            </div>
                                        </div>
                                        <div class="btn-group d-xl-block d-none justify-content-between mt-2 m-0 p-0">
                                            <a href="index.php?menu=detail" class="btn btn-info rounded-0"><i class="far fa-eye"></i> Cek Detail</a>
                                            <a href="#" class="btn btn-warning rounded-0"><i class="fas fa-shopping-cart"></i> Beli</a>
                                        </div>
                                        <div class="card-btns d-xl-none justify-content-between mt-2 float-right">
                                            <a href="index.php?menu=detail" class="btn btn-info btn-icon rounded-0"><i class="far fa-eye"></i></a>
                                            <a href="#" class="btn btn-warning btn-icon rounded-0"><i class="fas fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                     <?php } ?>
                   </div>
                 </section>
                    <!-- Ecommerce Products Ends -->

                    <!-- Ecommerce Pagination Starts -->
                    <section id="ecommerce-pagination" class="pb-5">
                        <div class="row">
                            <div class="col-sm-12">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-center mt-2">
                                        
                                        <li class="page-item prev-item"><a class="page-link" <?php if($halaman > 1){ echo "href='index.php?menu=list&halaman=$previous'"; } ?>></a></li>
            <?php for($x=1;$x<=$total_halaman;$x++){ ?> 
                                        <li class="page-item active"><a class="page-link mr-1" href="index.php?menu=list&halaman=<?php echo $x ?>"><?php echo $x; ?></a>
                             <?php	} ?>				
                                        </li>
                                        
                                        <li class="page-item next-item"><a  class="page-link mr-5" <?php if($halaman < $total_halaman) { echo "href='index.php?menu=list&halaman=$next'"; } ?>></a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </section>
                    <!-- Ecommerce Pagination Ends -->

                </div>
            </div>
            <div class="sidebar-detached sidebar-left">
                <div class="sidebar">
                    <!-- Ecommerce Sidebar Starts -->
                    <div class="sidebar-shop" id="ecommerce-sidebar-toggler">

                        <div class="row">
                            <div class="col-sm-12">
                                <h6 class="filter-heading d-none d-lg-block">Filter pencarian</h6>
                            </div>
                        </div>
                        <span class="sidebar-close-icon d-block d-md-none">
                            <i class="feather icon-x"></i>
                        </span>
                        <div class="card">
                            <div class="card-body">
                                <div class="multi-range-price">
                                    <div class="multi-range-title pb-75">
                                        <h6 class="filter-title mb-0">Harga</h6>
                                    </div>
                                    <ul class="list-unstyled price-range" id="price-range">
                                        <li>
                                            <span class="vs-radio-con vs-radio-primary py-25">
                                                <input type="radio" name="price-range" checked value="false">
                                                <span class="vs-radio">
                                                    <span class="vs-radio--border"></span>
                                                    <span class="vs-radio--circle"></span>
                                                </span>
                                                <span class="ml-50">All</span>
                                            </span>
                                        </li>
                                        <li>
                                            <span class="vs-radio-con vs-radio-primary py-25">
                                                <input type="radio" name="price-range" value="false">
                                                <span class="vs-radio">
                                                    <span class="vs-radio--border"></span>
                                                    <span class="vs-radio--circle"></span>
                                                </span>
                                                <span class="ml-50"> &lt;=$10</span>
                                            </span>
                                        </li>
                                        <li>
                                            <span class="vs-radio-con vs-radio-primary py-25">
                                                <input type="radio" name="price-range" value="false">
                                                <span class="vs-radio">
                                                    <span class="vs-radio--border"></span>
                                                    <span class="vs-radio--circle"></span>
                                                </span>
                                                <span class="ml-50">$10 - $100</span>
                                            </span>
                                        </li>
                                        <li>
                                            <span class="vs-radio-con vs-radio-primary py-25">
                                                <input type="radio" name="price-range" value="false">
                                                <span class="vs-radio">
                                                    <span class="vs-radio--border"></span>
                                                    <span class="vs-radio--circle"></span>
                                                </span>
                                                <span class="ml-50">$100 - $500</span>
                                            </span>
                                        </li>
                                        <li>
                                            <span class="vs-radio-con vs-radio-primary py-25">
                                                <input type="radio" name="price-range" value="false">
                                                <span class="vs-radio">
                                                    <span class="vs-radio--border"></span>
                                                    <span class="vs-radio--circle"></span>
                                                </span>
                                                <span class="ml-50">&gt;= $500</span>
                                            </span>
                                        </li>

                                    </ul>
                                </div>
                                <!-- /Price Filter -->
                                <hr>
                                
                                <!-- Categories Starts -->
                                <div id="product-categories">
                                    <div class="product-category-title">
                                        <h6 class="filter-title mb-1">Kategori</h6>
                                    </div>
                                    <ul class="list-unstyled categories-list">
<?php error_reporting(0);           
    $ketQuery = "SELECT * FROM tabel_kategori_barang ORDER BY nm_kategori ASC";
    $executeSat = mysqli_query($koneksi, $ketQuery);
    while ($k=mysqli_fetch_array($executeSat)) {
?>
                                        <li>
                                            <span class="vs-radio-con vs-radio-primary py-25">
                                                <input type="radio" name="category-filter" value="false" checked>
                                                <span class="vs-radio">
                                                    <span class="vs-radio--border"></span>
                                                    <span class="vs-radio--circle"></span>
                                                </span>
                                                <span class="ml-50"><?php echo $k['nm_kategori'];?></span>
                                            </span>
                                        </li><?php } ?>
                                    </ul>
                                </div>
                                <!-- Categories Ends -->
                                <hr>
                                <!-- Brands -->
                                <div class="brands">
                                    <div class="brand-title mt-1 pb-1">
                                        <h6 class="filter-title mb-0">Brands/ Merk</h6>
                                    </div>
                                    <div class="brand-list" id="brands">
                                        <ul class="list-unstyled">
<?php error_reporting(0);           
    $ketQuery = "SELECT * FROM tabel_merk_barang ORDER BY merek ASC";
    $executeSat = mysqli_query($koneksi, $ketQuery);
    while ($m=mysqli_fetch_array($executeSat)) {
?>                                            
                                            <li class="d-flex justify-content-between align-items-center py-25">
                                                <span class="vs-checkbox-con vs-checkbox-primary">
                                                    <input type="checkbox" value="false">
                                                    <span class="vs-checkbox">
                                                        <span class="vs-checkbox--check">
                                                            <i class="vs-icon feather icon-check"></i>
                                                        </span>
                                                    </span>
                                                    <span class=""><?php echo $m['merek'];?></span>
                                                </span>
<?php $sql = mysqli_query($koneksi,"SELECT * FROM tabel_barang WHERE merek ='$m[id_merk]' ");
 $jumlah = mysqli_num_rows($sql); ?>                                                
                                                <span><?php echo $jumlah?></span>
                                            </li>
                                            <?php } ?>
                                            
                                        </ul>
                                    </div>
                                </div>
                                <!-- /Brand -->
                                <hr>                                
                                <!-- Clear Filters Starts -->
                                <div id="clear-filters">
                                    <button class="btn btn-block btn-primary">CLEAR ALL FILTERS</button>
                                </div>
                                <!-- Clear Filters Ends -->

                            </div>
                        </div>
                    </div>
                    <!-- Ecommerce Sidebar Ends -->

                </div>
            </div>
        </div>
    </div>
<!-- END: Content-->