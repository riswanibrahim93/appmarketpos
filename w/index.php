<?php include "inc/koneksi.php"; $a = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM tabel_toko")); ?>
<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<!-- BEGIN: Head-->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="ovent">
    <meta name="keywords" content="ovent">
    <meta name="author" content="ovent">
    <meta http-equiv="refresh" content="1200">
    <title>.: <?php echo $a['nm_toko'];?> :.</title>
    <link rel="apple-touch-icon" href="app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="logo.png">
    <link href="app-assets/font/css/fontawesome.min.css" rel="stylesheet" type="text/css">
	<link href="app-assets/font/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/charts/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/extensions/tether-theme-arrows.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/extensions/tether.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/extensions/shepherd-theme-default.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/themes/semi-dark-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/css/core/menu/menu-types/horizontal-menu.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/core/colors/palette-gradient.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/pages/dashboard-analytics.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/pages/card-analytics.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/plugins/tour/tour.css">    
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/forms/select/select2.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/extensions/sweetalert2.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/pages/app-ecommerce-shop.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/pages/users.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/tables/datatable/datatables.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/pages/app-user.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/plugins/forms/validation/form-validation.css">
	<link rel="stylesheet" type="text/css" href="app-assets/vendors/css/pickers/pickadate/pickadate.css">    
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/calendars/fullcalendar.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/calendars/extensions/daygrid.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/calendars/extensions/timegrid.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/plugins/calendars/fullcalendar.css">    
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/file-uploaders/dropzone.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/tables/datatable/datatables.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/tables/datatable/extensions/dataTables.checkboxes.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/plugins/file-uploaders/dropzone.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/pages/data-list-view.css"> 
    <link rel="stylesheet" type="text/css" href="app-assets/css/plugins/forms/wizard.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/pages/coming-soon.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="horizontal-layout horizontal-menu 2-columns navbar-floating footer-static ecommerce-application " data-open="hover" data-menu="horizontal-menu" data-col="2-columns" style="background:<?php echo $a['background'];?>">

<!-- BEGIN: Header-->
    <nav class="header-navbar navbar-expand-lg navbar navbar-with-menu navbar-fixed navbar-shadow navbar-brand-center" style="background:<?php echo $a['headerfooter'];?>">
        <div class="navbar-header d-xl-block d-none">
            <ul class="nav navbar-nav flex-row">
                <li class="nav-item"><a class="navbar-brand mt-2" href="../">
                        <img src="img/<?php echo $a['logo'];?>" width="75" />
                    </a></li>
            </ul>
        </div>
        <div class="navbar-wrapper">
            <div class="navbar-container content">
                <div class="navbar-collapse" id="navbar-mobile">
                    <div class="mr-auto float-left bookmark-wrapper d-flex align-items-center">
                        <ul class="nav navbar-nav">
                            <li class="nav-item mobile-menu d-xl-none mr-auto"><a class="nav-link nav-menu-main menu-toggle hidden-xs" href="#"><i class="ficon feather icon-menu"></i></a></li>
                        </ul>
                        <ul class="nav navbar-nav bookmark-icons"> 
                            <li class="nav-item d-none d-lg-block text-bold-700"><a href="#login" class="btn btn-dark mt-1 mb-1 font-small-3"> <?php echo $a['nm_toko'];?> </a></li>                            
                        </ul>                        
                    </div>
                    <ul class="nav navbar-nav float-right"> 
                       <li class="nav-item nav"><a href="#" class="btn btn-dark mt-1 mb-1 font-small-3"><i class="fab fa-google-play"></i> Download App!</a></li>
                       <li class="dropdown dropdown-user nav-item"><a class="dropdown-toggle nav-link dropdown-user-link" href="#" data-toggle="dropdown">
                                <div class="user-nav"><span class="user-name text-bold-300">Akses APP!</span><span class="user-status text-bold-600">Now!</span></div><span><img class="round" src="img/<?php echo $a['logo'];?>" height="40" width="40"></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                            	<a class="dropdown-item" href="aut/login.php"><i class="fas fa-user-lock"></i> Login!</a>
                                <a class="dropdown-item" href="aut/daftar.php"><i class="fas fa-user-plus"></i> Register!</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
<!-- END: Header-->
    
<!-- BEGIN: Main Menu-->
    <div class="horizontal-menu-wrapper">
        <div class="header-navbar navbar-expand-sm navbar navbar-horizontal floating-nav navbar-light navbar-without-dd-arrow navbar-shadow menu-border" role="navigation" data-menu="menu-wrapper">
            <div class="navbar-header">
                <ul class="nav navbar-nav flex-row">
                    <li class="nav-item mr-auto"><a class="navbar-brand" href="../">
                            <img src="img/<?php echo $a['logo'];?>" height="30" />
                        </a></li>
                    <li class="nav-item nav-toggle"><a class="nav-link modern-nav-toggle pr-0" data-toggle="collapse"><i class="feather icon-x d-block d-xl-none font-medium-4 dark toggle-icon"></i><i class="toggle-icon feather icon-disc font-medium-4 d-none d-xl-block collapse-toggle-icon primary" data-ticon="icon-disc"></i></a></li>
                </ul>
            </div>
            <!-- Horizontal menu content-->
            <div class="navbar-container main-menu-content" data-menu="menu-container">                
               <ul class="nav navbar-nav justify-content-center" id="main-menu-navigation" data-menu="menu-navigation">
                <li class="nav-item"><a class="nav-link" href="#home"><i class="fas fa-store-alt"></i> Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#member"><i class="fas fa-wallet"></i> Member</a></li>
                <li class="nav-item"><a class="nav-link" href="#diskon"><i class="fas fa-portrait"></i> Diskon</a></li>
                <li class="nav-item"><a class="nav-link" href="#akses"><i class="fas fa-user-lock"></i> Akses APP!</a></li>
                <li class="nav-item"><a class="nav-link" href="#contact_us"><i class="fas fa-headset"></i> Contact Us</a></li>
               </ul>
            </div>
        </div>
    </div>
<!-- END: Main Menu-->
    
<!-- BEGIN: Content-->
 <div class="app-content content pt-0 pl-0 pr-0">
    	<div class="card-content text-white" id="home">
           <div class="card-body text-center" style="background-image:url(img/slide-1.jpg)">
           	 <div class="row ml-1 mr-1 pt-5 mt-5">                                        
                <div class="col-lg-4 col-md-12 col-sm-12"> 
                 	<h2 class="pt-4 display-4 text-left text-bold-500 text-dark">Belanja di <?php echo $a['nm_toko'];?></h2>
                    <p class="text-justify font-medium-2 text-dark"><?php echo $a['almt_toko'];?> <strong><?php echo $a['kecamatan_toko'];?>-<?php echo $a['kota_toko'];?></strong>
                    <h3 class="text-bold-700 pt-3 text-dark">Promo <?php echo date ('m-d-Y')?></h3>
                    <!--ul class="list-group-flush text-left text-bold-500 font-small-2">
                    	<li class="list-group-item bg-transparent">Update Barang satu kali tampil di 2 aplikasi sekaligus</li>
                        <li class="list-group-item bg-transparent">Pemesanan Online & Offline berjalan selaras</li>
                        <li class="list-group-item bg-transparent">Bisa di operasikan disemua gadget</li>
                    </ul-->
                    </p>
                 </div>                 
                 <div class="col-lg-8 col-md-12 col-sm-12">
                    <div class="card pt-0 mt-3 shadow-none" style="background:none">
                          <div id="carousel-example-caption" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                              <li data-target="#carousel-example-caption" data-slide-to="0" class="active"></li>
                              <li data-target="#carousel-example-caption" data-slide-to="1"></li>
                            </ol>
                              <div class="carousel-inner shadow" role="listbox">                                 
<?php             
   $ketQuery = "SELECT * FROM tabel_slide WHERE kat_slide = '2' ORDER BY id_slide DESC limit 1";
   $executeSat = mysqli_query($koneksi, $ketQuery);
   while ($m=mysqli_fetch_array($executeSat)) {
?>                                  
                                  <div class="carousel-item active">
                                    <img class="img-fluid rounded" src="img/iklan/<?php echo $m['gbr_slide'] ?>">
                                  </div>
                                    <?php } ?> 
<?php             
   $ketQuery = "SELECT * FROM tabel_slide WHERE kat_slide = '2' ORDER BY id_slide DESC";
   $executeSat = mysqli_query($koneksi, $ketQuery);
   while ($m=mysqli_fetch_array($executeSat)) {
?>                                   
                                  <div class="carousel-item">
                                      <img class="img-fluid rounded" src="img/iklan/<?php echo $m['gbr_slide'] ?>">
                                  </div>
                                    <?php } ?>            
                                    </div>
                            <a class="carousel-control-prev" href="#carousel-example-caption" role="button" data-slide="prev">
                                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                  <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carousel-example-caption" role="button" data-slide="next">
                                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                  <span class="sr-only">Next</span>
                            </a>
                    	</div>                          
                 	</div>
                 </div>
               </div>
           </div>
         </div>
<!-- END: Content-->    	
    
<div class="content-wrapper pt-0 mt-0" id="member"> 
    <div class="card">           
       <div class="content-body">           	
         <!-- Dashboard Price --> 
          <section id="price">
            <div class="pricing6 bg-transparent">
               <div class="row justify-content-center">
                 <div class="col-md-12 text-center">
                   <div class="divider">
                     <div class="divider-text"><h3 class="mb-3 display-4 pt-2 text-uppercase">Paket Member</h3></div>
                   </div>
                 </div>
               </div>
           <!-- row  -->
               <div class="row mt-4 ml-0 mr-0">
                  <!-- column  -->
                   <div class="col-md-4 p-0 mt-2">
                     <div class="card card-shadow border-0 mb-4 bg-gradient-success">
                       <div class="card-body">
                         <div class="d-flex align-items-center">
                            <h5 class="font-weight-medium font-large-2 mb-0">LOW</h5>
                          </div>
                          <div class="row">
                            <div class="col-lg-5 text-center">
                             <div class="price-box my-3">
                              <sup>Rp</sup> <span class="display-4">50</span> <sub>.000</sub>
                                <h6 class="text-white">/Bulan</h6>
                                 <a class="btn btn-danger font-small-3 border-0 text-white p-3 btn-block mt-5" href="#">PESAN</a>
                              </div>
                            </div>
                            <div class="col-lg-7 align-self-center">
                              <h5 class="font-weight-lighter mb-0">FITUR</h5>
                                <ul class="list-inline pl-0 font-14 font-weight-medium text-dark">
                                  <li class="py-1">
                                   	<i class="far fa-times-circle"></i> <span>Deposito</span></li>
                                  <li class="py-1">
                                   	<i class="far fa-check-circle"></i> <span>Diskon Pembelian</span></li>  
                                  <li class="py-1">
                                   	<i class="far fa-check-circle"></i> <span>Pengiriman</span></li>
                                </ul>
                             </div>
                           </div>
                         </div>
                        </div>
                      </div>
                   <!-- column  -->
                   <!-- column  -->
            <div class="col-md-4 p-0">
              <div class="card card-shadow border-0 mb-4 bg-gradient-info">
                <div class="ml-auto">
                  <span class="badge badge-danger font-weight-normal p-1" style="border-radius:0">Favorite</span></div>
                 <div class="card-body">                                  	
                   <div class="d-flex align-items-center">
                     <h5 class="font-weight-medium mb-0 font-large-2 text-warning">MIDDLE</h5>
                    </div>
                    <div class="row">
                      <div class="col-lg-5 text-center">
                        <div class="price-box my-3">
                          <sup>Rp</sup> <span class=" text-light display-4">100</span> <sub>.000</sub>
                          <h6 class="text-white">/Bulan</h6>
                          <a class="btn btn-danger font-small-3 border-0 text-white p-3 btn-block mt-3" href="#">PESAN</a>
                        </div>
                       </div>
                       <div class="col-lg-7 align-self-center">
                          <h5 class="font-weight-lighter mb-0 text-warning">FITUR</h5>
                            <ul class="list-inline pl-0 font-14 font-weight-medium text-dark">
                                <li class="py-1">
                                   	<i class="far fa-times-circle"></i> <span>Deposito</span></li>
                                  <li class="py-1">
                                   	<i class="far fa-times-circle"></i> <span>Diskon Pembelian</span></li>  
                                  <li class="py-1">
                                   	<i class="far fa-check-circle"></i> <span>Pengiriman</span></li>
                              </ul>
                           </div>
                         </div>
                       </div>
                     </div>
                   </div>
              <!-- column  -->
              <!-- column  -->
             <div class="col-md-4 p-0 mt-2">
               <div class="card card-shadow border-0 mb-4 bg-gradient-warning">
                 <div class="card-body">
                   <div class="d-flex align-items-center">
                     <h5 class="font-weight-medium font-large-2 mb-0">HIGH</h5>
                   </div>
                   <div class="row">
                     <div class="col-lg-5 text-center">
                       <div class="price-box my-3 text-dark">
                         <sup>Rp</sup> <span class="display-4">150</span> <sub>.000</sub>
                         <h6 class="font-weight-light">/Bulan</h6>
                         <a class="btn btn-danger font-small-3 border-0 text-white p-3 btn-block mt-3" href="#">PESAN</a>
                      </div>
                    </div>
                    <div class="col-lg-7 align-self-center">
                       <h5 class="font-weight-lighter mb-0">FITUR</h5>
                         <ul class="list-inline pl-0 font-14 font-weight-medium text-dark">
                            <li class="py-1">
                                   	<i class="far fa-times-circle"></i> <span>Deposito</span></li>
                                  <li class="py-1">
                                   	<i class="far fa-times-circle"></i> <span>Diskon Pembelian</span></li>  
                                  <li class="py-1">
                                   	<i class="far fa-times-circle"></i> <span>Pengiriman</span></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
               <!-- column  -->
             </div>
           </div>
         </div>
       </section>
    </div>
   </div> 
 </div> 


<div class="content-wrapper pt-0 mt-0" id="diskon"> 
  <div class="card">           
   <div class="content-body">
    <div class="row justify-content-center">
      <div class="col-md-12 text-center">
         <div class="divider">
            <div class="divider-text"><h3 class="mb-3 display-4 pt-2 text-uppercase">Banyak Gratisnya</h3></div>
          </div>
      </div>
    </div>
    <div class="card-content">
      <div class="card-body">
   		
        <div class="swiper-responsive-breakpoints swiper-container">
                <div id="produk_lain" class="carousel slide" data-ride="carousel">
                   <div class="carousel-inner" role="listbox">         
                     <div class="carousel-item active">
                       <div class="row">
<!--------------------------------------------------SCRIPT---------------------------------------->
                         <div class="swiper-wrapper col-sm-4 col-4">
                           <div class="swiper-slide rounded swiper-shadow">
                             <div class="card">
                                <div class="card-content">
                                    <div class="card-body">
                                        <img class="card-img img-fluid mb-1" src="img/produk/t-shirt.jpg">
                                        <h5 class="mt-1">T-shirt</h5>
                                        <p class="card-text">By <?php echo $a['nm_toko'];?></p>
                                        <hr class="my-1">
                                        <div class="d-flex justify-content-between mt-2">
                                            <div class="float-left">
                                                <p class="font-medium-2 mb-0"><sup>Rp.</sup> 40<sup>.000</sup></p>
                                                <a class="badge badge-primary">Diskon 15%</a>
                                            </div>
                                            <div class="float-right">
                                                <p class="font-medium-2 mb-0">Cek Sekarang!</p>
                                                <a href="aut/login.php" class="badge badge-warning">Check Out</a>
                                            </div>
                                        </div>                                        
                                       </div>
                                   </div>
                               </div>                   
                             </div>
                           </div>
<!--------------------------------------------------SCRIPT---------------------------------------->
                        
<!--------------------------------------------------SCRIPT---------------------------------------->
                         <div class="swiper-wrapper col-sm-4 col-4">
                           <div class="swiper-slide rounded swiper-shadow">
                             <div class="card">
                                <div class="card-content">
                                    <div class="card-body">
                                        <img class="card-img img-fluid mb-1" src="img/produk/jaket.jpg">
                                        <h5 class="mt-1">Jacket</h5>
                                        <p class="card-text">By <?php echo $a['nm_toko'];?></p>
                                        <hr class="my-1">
                                        <div class="d-flex justify-content-between mt-2">
                                            <div class="float-left">
                                                <p class="font-medium-2 mb-0"><sup>Rp.</sup> 80<sup>.000</sup></p>
                                                <a class="badge badge-primary">Diskon 15%</a>
                                            </div>
                                            <div class="float-right">
                                                <p class="font-medium-2 mb-0">Cek Sekarang!</p>
                                                <a href="aut/login.php" class="badge badge-warning">Check Out</a>
                                            </div>
                                        </div>                                        
                                       </div>
                                   </div>
                               </div>
                             </div>
                           </div>
<!--------------------------------------------------SCRIPT---------------------------------------->
                        
<!--------------------------------------------------SCRIPT---------------------------------------->
                         <div class="swiper-wrapper col-sm-4 col-4">
                           <div class="swiper-slide rounded swiper-shadow">
                             <div class="card">
                                <div class="card-content">
                                    <div class="card-body">
                                        <img class="card-img img-fluid mb-1" src="img/produk/tas.jpg">
                                        <h5 class="mt-1">Bagpack</h5>
                                        <p class="card-text">By <?php echo $a['nm_toko'];?></p>
                                        <hr class="my-1">
                                        <div class="d-flex justify-content-between mt-2">
                                            <div class="float-left">
                                                <p class="font-medium-2 mb-0"><sup>Rp.</sup> 70<sup>.000</sup></p>
                                                <a class="badge badge-primary">Diskon 15%</a>
                                            </div>
                                            <div class="float-right">
                                                <p class="font-medium-2 mb-0">Cek Sekarang!</p>
                                                <a href="aut/login.php" class="badge badge-warning">Check Out</a>
                                            </div>
                                        </div>                                        
                                       </div>
                                   </div>
                               </div>
                             </div>
                           </div>
<!--------------------------------------------------SCRIPT---------------------------------------->
                     </div>
                  </div>
                                                                        
                  <div class="carousel-item">                                         
                     <div class="row">
<!--------------------------------------------------SCRIPT---------------------------------------->
                         <div class="swiper-wrapper col-sm-4 col-4">
                           <div class="swiper-slide rounded swiper-shadow">
                             <div class="card">
                                <div class="card-content">
                                    <div class="card-body">
                                        <img class="card-img img-fluid mb-1" src="img/produk/t-shirt.jpg">
                                        <h5 class="mt-1">T-shirt</h5>
                                        <p class="card-text">By <?php echo $a['nm_toko'];?></p>
                                        <hr class="my-1">
                                        <div class="d-flex justify-content-between mt-2">
                                            <div class="float-left">
                                                <p class="font-medium-2 mb-0"><sup>Rp.</sup> 40<sup>.000</sup></p>
                                                <a class="badge badge-primary">Diskon 15%</a>
                                            </div>
                                            <div class="float-right">
                                                <p class="font-medium-2 mb-0">Cek Sekarang!</p>
                                                <a href="aut/login.php" class="badge badge-warning">Check Out</a>
                                            </div>
                                        </div>                                        
                                       </div>
                                   </div>
                               </div>                   
                             </div>
                           </div>
<!--------------------------------------------------SCRIPT---------------------------------------->
                        
<!--------------------------------------------------SCRIPT---------------------------------------->
                         <div class="swiper-wrapper col-sm-4 col-4">
                           <div class="swiper-slide rounded swiper-shadow">
                             <div class="card">
                                <div class="card-content">
                                    <div class="card-body">
                                        <img class="card-img img-fluid mb-1" src="img/produk/jaket.jpg">
                                        <h5 class="mt-1">Jacket</h5>
                                        <p class="card-text">By <?php echo $a['nm_toko'];?></p>
                                        <hr class="my-1">
                                        <div class="d-flex justify-content-between mt-2">
                                            <div class="float-left">
                                                <p class="font-medium-2 mb-0"><sup>Rp.</sup> 80<sup>.000</sup></p>
                                                <a class="badge badge-primary">Diskon 15%</a>
                                            </div>
                                            <div class="float-right">
                                                <p class="font-medium-2 mb-0">Cek Sekarang!</p>
                                                <a href="aut/login.php" class="badge badge-warning">Check Out</a>
                                            </div>
                                        </div>                                        
                                       </div>
                                   </div>
                               </div>
                             </div>
                           </div>
<!--------------------------------------------------SCRIPT---------------------------------------->
                        
<!--------------------------------------------------SCRIPT---------------------------------------->
                         <div class="swiper-wrapper col-sm-4 col-4">
                           <div class="swiper-slide rounded swiper-shadow">
                             <div class="card">
                                <div class="card-content">
                                    <div class="card-body">
                                        <img class="card-img img-fluid mb-1" src="img/produk/tas.jpg">
                                        <h5 class="mt-1">Bagpack</h5>
                                        <p class="card-text">By <?php echo $a['nm_toko'];?></p>
                                        <hr class="my-1">
                                        <div class="d-flex justify-content-between mt-2">
                                            <div class="float-left">
                                                <p class="font-medium-2 mb-0"><sup>Rp.</sup> 70<sup>.000</sup></p>
                                                <a class="badge badge-primary">Diskon 15%</a>
                                            </div>
                                            <div class="float-right">
                                                <p class="font-medium-2 mb-0">Cek Sekarang!</p>
                                                <a href="aut/login.php" class="badge badge-warning">Check Out</a>
                                            </div>
                                        </div>                                        
                                       </div>
                                   </div>
                               </div>
                             </div>
                           </div>
<!--------------------------------------------------SCRIPT---------------------------------------->
                        
                       </div>                                    
                     </div>
                    </div>
                    <a class="carousel-control-prev" href="#produk_lain" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#produk_lain" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                 </div>
              </div> 
        
       </div>
     </div> 
   </div>
  </div>
</div> 

 
<div class="content-wrapper pt-0 mt-0" id="akses"> 
  <div class="card">           
   <div class="content-body">
    <div class="row justify-content-center">
      <div class="col-md-12 text-center">
         <div class="divider">
            <div class="divider-text"><h3 class="mb-3 display-4 pt-2 text-uppercase">Akses APP!</h3></div>
          </div>
      </div>
    </div>
    <div class="card-content">
      <div class="card-body">
   		<div class="row">
          <div class="col-lg-6 col-md-6 col-12">
            <div class="card bg-gradient-warning">
              <div class="card-header d-flex flex-column align-content-center pb-0">
                 <div class="avatar bg-rgba-primary p-50 m-0">
                    <div class="avatar-content">
                       <i class="fa fa-shopping-bag fa-3x text-dark"></i>
                    </div>
                 </div>
                 <h2 class="text-bold-700 mt-1 mb-25">Login E-Commerce</h2>
                     <p class="mb-0">Belanja dan Jual Produk Kebutuhan Anda Sekarang</p>
              </div>
             <div class="card-content text-center">
                 <a href="page/" class="btn btn-primary round m-5">LOGIN</a>
             </div>
          </div>
        </div>
          <div class="col-lg-6 col-md-6 col-12">
             <div class="card bg-gradient-success">
                <div class="card-header d-flex flex-column align-content-center pb-0">
                  <div class="avatar bg-rgba-danger p-50 m-0">
                     <div class="avatar-content">
                        <i class="fas fa-cash-register fa-3x text-dark"></i>
                      </div>
                   </div>
                   <h2 class="text-bold-700 mt-1 mb-25">Login iPOS</h2>
                      <p class="mb-0">Kelola pesanan dan produk anda</p>
                 </div>
              <div class="card-content text-center">
                  <a href="page/" class="btn btn-danger round m-5">LOGIN</a>
              </div>
            </div>
          </div>
        </div>
       </div>
     </div> 
   </div>
  </div>
</div> 


 
<div class="content-wrapper pt-0 mt-0" id="contact_us"> 
  <div class="card">           
   <div class="content-body">
       <!-- KONTAK -->
        <section>
          <div class="row justify-content-center">
            <div class="col-md-12 text-center">
                <div class="divider">
                  <div class="divider-text"><h3 class="mb-3 display-4 pt-2 text-uppercase">Bagikan Pengalaman Anda!</h3></div>
                </div>
             </div>
          </div>
         
         <div class="row">
          <div class="col-lg-7 col-md-7 col-12">
            <div class="card">
              <div class="card-content">
            	<div class="card-body">
                   <h4 class="badge badge-danger">Ceritakan disini</h4>
                    <form method="post" action="aksi/aksi_daftar.php">   
                      <fieldset class="form-group position-relative has-icon-left input-divider-left">
                        <input type="text" class="form-control" id="iconLeft3" placeholder="Nama">
                          <div class="form-control-position"><i class="fa fa-user-o"></i></div>
                      </fieldset>
                      <fieldset class="form-group position-relative has-icon-left input-divider-left">
                         <input type="text" class="form-control" id="iconLeft3" placeholder="No.Telepon/Whatsapp">
                           <div class="form-control-position"><i class="fa fa-whatsapp"></i></div>
                      </fieldset>
                      <fieldset class="form-label-group">
                         <textarea class="form-control" id="label-textarea" rows="3" placeholder="Tulis Pengalaman Anda">
                         </textarea>
                         <label for="label-textarea">Tulis Pengalaman Anda</label>
                      </fieldset>
                      <button type="submit" class="btn btn-danger float-right">Kirim</button>
                    </form>
                   </div>  
                  </div>
                </div>
              </div>
              <div class="col-lg-5 col-md-5 col-12"> 
                <div class="card bg-gradient-warning">
                  <div class="card-header">
                     <h4 class="badge badge-danger">Kata Mereka</h4>
                  </div>
                  <div class="card-content">
                    <div class="card-body">
                      <div id="testi" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner" role="listbox">
<!---------------------------------------------SCRIPT----------------------------->                                               
                          <div class="carousel-item active text-center">
                             <div class="avatar mb-3">
                                <img src="img/comment/1.jpg" width="100" height="100">
                                  <span class="avatar-status-busy"></span>
                              </div>
                              <div class="divider">
                                 <div class="divider-text"><h3>Username</h3></div>
                              </div>
                              <div class="text-dark position-bottom-0 pb-0">
                                 <p><i class="fa fa-quote-left font-large-1"></i> Sangat bagus akang</p>
                               </div>
                           </div>
                                                
<!---------------------------------------------SCRIPT----------------------------->   <!---------------------------------------------SCRIPT----------------------------->                                               
                          <div class="carousel-item  text-center">
                             <div class="avatar mb-3">
                                <img src="img/comment/2.jpg" width="100" height="100">
                                  <span class="avatar-status-busy"></span>
                              </div>
                              <div class="divider">
                                 <div class="divider-text"><h3>Username</h3></div>
                              </div>
                              <div class="text-dark position-bottom-0 pb-0">
                                 <p><i class="fa fa-quote-left font-large-1"></i> Sangat bagus akang</p>
                               </div>
                           </div>
                                                
<!---------------------------------------------SCRIPT----------------------------->
                          </div>
                       </div>  
                       <a class="carousel-control-prev" href="#testi" role="button" data-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="sr-only">Previous</span>
                       </a>
                       <a class="carousel-control-next" href="#testi" role="button" data-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="sr-only">Next</span>
                       </a>
                    </div>
                 </div>
                </div>
             </div>
           </div>
         </div>
       </div>
      </div>
     </div>
   </section>
    <!-- KONTAK -->
   </div>
  </div>
</div>   







 
 <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>
 <!-- BEGIN: Footer-->
    <footer class="footer footer-static" style="background:<?php echo $a['headerfooter'];?>">
        <p class="clearfix blue-grey lighten-2 mb-0">
        <span class="float-md-left d-block d-md-inline-block mt-25">COPYRIGHT &copy; <?php echo date('Y')?>
        <a class="text-bold-800 grey darken-2" href="#" target="_blank"></a>All rights Reserved</span><span class="float-md-right d-none d-md-block font-medium-3"><?php echo $a['nm_toko'];?></span>
            <a href="#home" class="btn btn-warning btn-icon scroll-top"><i class="feather icon-arrow-up"></i></a>
        </p>
    </footer>
<!-- END: Footer-->       
	
    
    

    <!-- BEGIN: Vendor JS-->
    <script src="app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <script src="app-assets/vendors/js/charts/apexcharts.min.js"></script>
    <script src="app-assets/vendors/js/extensions/tether.min.js"></script>
    <script src="app-assets/vendors/js/extensions/shepherd.min.js"></script>
    <!-- END: Page Vendor JS-->
    <!-- BEGIN: Theme JS-->
    <script src="app-assets/js/core/app-menu.js"></script>
    <script src="app-assets/js/core/app.js"></script>
    <script src="app-assets/js/scripts/components.js"></script>
    <!-- END: Theme JS-->
    <!-- BEGIN: Page JS-->
    <script src="app-assets/js/scripts/pages/dashboard-analytics.js"></script>
    <script src="app-assets/js/scripts/modal/components-modal.js"></script>
    
    <script src="app-assets/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="app-assets/js/scripts/forms/select/form-select2.js"></script>
    
    <script src="app-assets/js/scripts/extensions/sweet-alerts.js"></script>
    <script src="app-assets/vendors/js/extensions/sweetalert2.all.min.js"></script>
    <script src="app-assets/vendors/js/extensions/polyfill.min.js"></script>
    
    <script src="app-assets/js/scripts/pages/app-ecommerce-details.js"></script>
    <script src="app-assets/js/scripts/forms/number-input.js"></script>
    <script src="app-assets/js/scripts/pages/app-ecommerce-shop.js"></script>
    
    <script src="app-assets/vendors/js/tables/datatable/pdfmake.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/vfs_fonts.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/buttons.html5.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/buttons.print.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/buttons.bootstrap.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/datatables.bootstrap4.min.js"></script>
    <script src="app-assets/js/scripts/datatables/datatable.js"></script> 
    <script src="app-assets/vendors/js/extensions/dropzone.min.js"></script>    
    <script src="app-assets/vendors/js/tables/datatable/dataTables.select.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/datatables.checkboxes.min.js"></script>
    <script src="app-assets/js/scripts/ui/data-list-view.js"></script>    
    <script src="app-assets/vendors/js/forms/validation/jqBootstrapValidation.js"></script>
	<script src="app-assets/vendors/js/pickers/pickadate/picker.js"></script>
    <script src="app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>    
    <script src="app-assets/js/scripts/pages/app-user.js"></script>
    <script src="app-assets/js/scripts/navs/navs.js"></script>    
    <script src="app-assets/vendors/js/extensions/moment.min.js"></script>
    <script src="app-assets/vendors/js/calendar/fullcalendar.min.js"></script>
    <script src="app-assets/vendors/js/calendar/extensions/daygrid.min.js"></script>
    <script src="app-assets/vendors/js/calendar/extensions/timegrid.min.js"></script>
    <script src="app-assets/vendors/js/calendar/extensions/interactions.min.js"></script>
    <script src="app-assets/js/scripts/extensions/fullcalendar.js"></script>    
    <script src="app-assets/vendors/js/pagination/jquery.bootpag.min.js"></script>
    <script src="app-assets/vendors/js/pagination/jquery.twbsPagination.min.js"></script>
    <script src="app-assets/js/scripts/pagination/pagination.js"></script>
    
    <script src="app-assets/vendors/js/extensions/jquery.steps.min.js"></script>
    <script src="app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <script src="app-assets/js/scripts/forms/wizard-steps.js"></script>
    <!-- END: Page JS-->
    <script src="app-assets/vendors/js/coming-soon/jquery.countdown.min.js"></script>
    <script src="app-assets/js/scripts/pages/coming-soon.js"></script>
	
</body>
<!-- END: Body-->

</html>