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
                     <li class="breadcrumb-item"><a href="index.php?menu=home" class="text-dark">Home</a></li>                  </ol>
                </div>
              </div>
           </div>
       </div>
    </div>

<div class="content-body">
   <div id="user-profile">
     <div class="row">
       <div class="col-12">
         <div class="profile-header">
           <div class="relative">
             <div class="cover-container">
                <div id="carousel-keyboard" class="carousel slide" data-keyboard="true">
                   <ol class="carousel-indicators">
                      <li data-target="#carousel-keyboard" data-slide-to="0" class="active"></li>
                      <li data-target="#carousel-keyboard" data-slide-to="1"></li>
                   </ol>
                   <div class="carousel-inner" role="listbox">
<?php             
   $ketQuery = "SELECT * FROM tabel_slide WHERE kat_slide = '1' ORDER BY id_slide DESC limit 1";
   $executeSat = mysqli_query($koneksi, $ketQuery);
   while ($m=mysqli_fetch_array($executeSat)) {
?>                      
                      <div class="carousel-item active">
                         <img class="img-fluid" src="../img/iklan/<?php echo $m['gbr_slide'] ?>">
                      </div>
                      <?php } ?> 
<?php             
   $ketQuery = "SELECT * FROM tabel_slide WHERE kat_slide = '1' ORDER BY id_slide DESC limit 1";
   $executeSat = mysqli_query($koneksi, $ketQuery);
   while ($m=mysqli_fetch_array($executeSat)) {
?>                      
                      <div class="carousel-item">
                         <img class="img-fluid" src="../img/iklan/<?php echo $m['gbr_slide'] ?>">
                      </div>
                      <?php } ?>                         
                   </div>
                   <a class="carousel-control-prev" href="#carousel-keyboard" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                   </a>
                   <a class="carousel-control-next" href="#carousel-keyboard" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                   </a>
                  </div>
                </div>                                        
             </div>                 
             <div class="profile-img-container d-flex align-items-center justify-content-between">
                 <img src="../img/user/<?php echo $foto;?>" class="rounded-circle img-border box-shadow-1">
                     <div class="float-right">
                        <a href="index.php?menu=profile" class="btn btn-icon btn-icon rounded-circle btn-dark mr-1">
                           <i class="fas fa-user-edit fa-2x"></i>
                        </a>                                            
                    </div>
                 </div>
             </div>
             <div class="d-flex justify-content-end align-items-center profile-header-nav">
               <nav class="navbar navbar-expand-sm w-100 pr-0">                  
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <ul class="navbar-nav justify-content-around w-50 ml-sm-auto">
                       <!--li class="nav-item px-sm-0"><a href="index.php?menu=profile" class="nav-link">Edit Profile</a></li>
                       <li class="nav-item px-sm-0"><a href="#" class="nav-link font-medium-1 text-dark">Ads</a></li>
                       <li class="nav-item px-sm-0"><a href="#" class="nav-link font-medium-1 text-dark">Partner</a></li-->                     </ul>
                   </div>
                 </nav>
               </div>
             </div>
           </div>
         </div>


<div class="row mt-5 mb-5"> 
 <div class="col-lg-3 col-md-6 col-sm-12 col-12"> 

      <div class="card">
         <div class="card-header">
            <h4>Live Ovent</h4>
               <i class="feather icon-more-horizontal cursor-pointer"></i>
         </div>
      <div class="card-body">
       Embbed video disini      
    </div>
  </div>
                                
  <div class="card">
    <div class="card-header">
       <h4>Order saya</h4>
    </div>
    
    <div class="card-body">
      <div class="twitter-feed">
        <div class="d-flex justify-content-start align-items-center mb-1">
            <div class="avatar mr-50">
               <i class="far fa-calendar-alt fa-5x"></i>
            </div>
         <div class="user-page-info">
             <p class="text-bold-600 mb-0">Tiana Vercetti</p>
             <small>@tiana59</small>
           <div class="badge badge-primary badge-pill badge-sm p-0">
              <i class="feather icon-check font-small-1"></i>
           </div>
         </div>
       </div>
           <p class="mb-0">I love cookie chupa chups sweet tart apple pie chocolate bar. Jelly-o oat cake chupa chups.</p>
           <p class="text-primary">#js #vuejs</p>
             <small>12 Dec 2018</small>
     </div>
                                        
    </div>
   </div>
  </div>
	
<div class="col-lg-6 col-md-6 col-sm-12 col-12"> 
<!-- Background variants section start -->
  <section id="bg-variants">
     <div class="row">                                              
<?php 
   $ketQuery = "SELECT * FROM tabel_kategori_barang ORDER BY nm_kategori ASC";
   $executeSat = mysqli_query($koneksi, $ketQuery);
   while ($a=mysqli_fetch_array($executeSat)) {
?>                        
         <div class="col-lg-6 col-md-12 col-sm-12 col-6 p-1">                         
           <div class="card text-white  bg-transparent text-center">
             <a href="?menu=list&kd_kategori=<?php echo $a['kd_kategori']; ?>" class="text-uppercase text-white">
               <div class="card-content d-flex">
                  <div class="card-body">
                    <img src="../img/icon/<?php echo $a['ikon_kategori'];?>" width="50" /><hr class="d-xl-block d-none" />
                        <p class="font-small-1 text-dark d-xl-block d-none"><?php echo $a['nm_kategori'];?></p>
                   </div>
               </div></a>
            </div>
          </div>  
<?php } ?>                        
        </div>
    </section>
<!-- Background variants section end -->  
   </div>
<div class="col-lg-3 col-md-6 col-sm-12 col-12"> 
<!-- Background variants section start -->
 
     <div class="card-body bg-white suggested-block">
<?php 
   $ketQuery = "SELECT * FROM tabel_info,tabel_info_gambar WHERE tabel_info.id_info = tabel_info_gambar.id_info ORDER BY tabel_info.id_info DESC";
   $executeSat = mysqli_query($koneksi, $ketQuery);
   while ($a=mysqli_fetch_array($executeSat)) {
?>       
       <div class="d-flex justify-content-start align-items-center mb-1">          
          <img src="../img/info/<?php echo $a['gambar'];?>" class="img-thumbnail mr-2" width="50" />
          <div class="user-page-info">
            <h3 class="font-medium-1"><?php echo $a['judul'];?></h3>
             <p class="font-small-1"><?php echo $a['subjudul'];?></p><hr class="my-1" />
            <a href="?menu=read" class="badge badge-danger rounded-0"><i class="fab fa-readme"></i>...read...</a>
          </div>
       </div>
       <hr class="my-1" />
 <?php } ?>      
     </div>  
       
<!-- Background variants section end -->  
   </div>
   
  </div>
 </div>  
 </div>
</div>    