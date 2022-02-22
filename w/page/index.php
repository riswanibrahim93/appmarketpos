<?php
include "../inc/koneksi.php";
session_start();
if (!isset($_SESSION['nm_user']) && !isset($_SESSION['pass'])) {
  header('location:../aut/login.php');
} 
else {
  
}
?>
<?php $a = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM tabel_toko"));
$background 	= $a['background'];
$headerfooter 	= $a['headerfooter'];
$tombol		 	= $a['tombol'];
$logo		 	= $a['logo'];
$toko		 	= $a['nm_toko'];
$kd_toko           = $a['kd_toko'];
?>
<?php $user = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM tabel_member WHERE nm_user = '$_SESSION[nm_user]'"));
$foto		 	= $user['foto'];
?>
<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<!-- BEGIN: Head-->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="<?php echo $toko;?>">
    <meta name="keywords" content="<?php echo $toko;?>">
    <meta name="author" content="<?php echo $toko;?>">
    <meta http-equiv="refresh" content="1200">
    <title>.:<?php echo $_SESSION['nm_user'];?>:.</title>
    <link rel="apple-touch-icon" href="../app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="../img/<?php echo $logo;?>">
    <link href="../app-assets/font/css/fontawesome.min.css" rel="stylesheet" type="text/css">
	<link href="../app-assets/font/css/all.min.css" rel="stylesheet" type="text/css">
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/charts/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/extensions/tether-theme-arrows.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/extensions/tether.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/extensions/shepherd-theme-default.css">
    <!-- END: Vendor CSS-->
    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="../app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/themes/semi-dark-layout.css">
    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="../app-assets/css/core/menu/menu-types/horizontal-menu.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/core/colors/palette-gradient.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/pages/dashboard-analytics.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/pages/card-analytics.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/plugins/tour/tour.css">    
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/forms/select/select2.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/extensions/sweetalert2.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/pages/app-ecommerce-shop.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/pages/users.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/tables/datatable/datatables.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/pages/app-user.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/plugins/forms/validation/form-validation.css">
	<link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/pickers/pickadate/pickadate.css">    
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/calendars/fullcalendar.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/calendars/extensions/daygrid.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/calendars/extensions/timegrid.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/plugins/calendars/fullcalendar.css">    
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/file-uploaders/dropzone.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/tables/datatable/datatables.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/tables/datatable/extensions/dataTables.checkboxes.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/plugins/file-uploaders/dropzone.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/pages/data-list-view.css"> 
    <link rel="stylesheet" type="text/css" href="../app-assets/css/plugins/forms/wizard.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/pages/invoice.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/bootstrap-colorpicker.css">    
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/forms/spinner/jquery.bootstrap-touchspin.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/extensions/toastr.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/plugins/extensions/toastr.css">
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
    <!-- END: Custom CSS-->

    <style type="text/css"> 
        .image-container{
            width: 90%;
            margin: 0 auto 30px auto;
        }
        .image-container img{
            display: block;
            position: relative;
            max-width: 100%;
            max-height: 400px;
            margin: auto;
        }
        figcaption .figcaptio-image{
            margin: 20px 0 30px 0;
            text-align: center;
            color: #fff;
        }
        .input-image{
            display: none;
        }
        .label-images{
            display: block;
            position: relative;
            background-color:#1c72fd;
            color: #000;
            font-size: 12px;
            text-align: center;
            width: 150px;
            padding: 2px 0;
            border-radius: 19px;
            margin: auto;
            cursor: pointer;
        }
    </style>

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="horizontal-layout horizontal-menu 2-columns navbar-floating footer-static ecommerce-application " data-open="hover" data-menu="horizontal-menu" data-col="2-columns" style="background:<?php echo $background;?>">

<?php include '../inc/header.php' ;?>

<?php if ($_SESSION['akses'] == 'admin') {
	//if ($_SESSION['level'] == "admin" || $_SESSION['level'] == 'superadmin') {
?>
<?php          
          if (isset($_GET['menu'])) {
            $menu = $_GET['menu'];
            switch ($menu) {
              case ('home');
                include('home.php');
                break;
		      case ('ipos');
                include('ipos.php');
                break;
			  case ('product');
                include('product.php');
                break;
			  case ('order');
                include('order.php');
                break;	
			  case ('ads');
                include('ads.php');
                break;				
			  case ('info');
                include('info.php');
                break;
			  case ('user');
                include('user.php');
                break;			  	
			  case ('profile');
                include('profile.php');
                break;	
			  case ('website');
                include('website.php');
                break;				  
			  case ('streaming');
                include('streaming.php');
                break;
			  case ('saldo');
                include('saldo.php');
                break;
			  case ('retur');
                include('retur.php');
                break;		
			  case ('nota');
                include('nota.php');
                break;
			  case ('sales');
                include('report_sales.php');
                break;	
			  case ('balance');
                include('report_balance.php');
                break;
			  case ('stock');
                include('report_stock.php');
                break;
              case ('edit_product');
                include('edit_product.php');
                break;						
            }
          }
?>
<?php } ?>
<?php if ($_SESSION['akses'] == 'merchant') {
?>
<?php          
          if (isset($_GET['menu'])) {
            $menu = $_GET['menu'];
            switch ($menu) {
              case ('home');
                include('dashboard.php');
                break;
			  case ('product');
                include('product.php');
                break;
			  case ('checkout');
                include('checkout.php');
                break;		
			  case ('order');
                include('order.php');
                break;
			  case ('detail');
                include('details.php');
                break;
			  case ('saldo');
                include('saldo.php');
                break;				
		      case ('profile');
                include('profile.php');
                break;
			  case ('retur');
                include('retur.php');
                break;		
			  case ('nota');
                include('nota.php');
                break;
			  case ('sales');
                include('report_sales.php');
                break;	
			  case ('balance');
                include('report_balance.php');
                break;
			  case ('stock');
                include('report_stock.php');
                break;					
            }
          }
?>
<?php } ?>

<?php if ($_SESSION['akses'] == 'member') {
?>
<?php          
          if (isset($_GET['menu'])) {
            $menu = $_GET['menu'];
            switch ($menu) {
              case ('home');
                include('beranda.php');
                break;
			  case ('list');
                include('list_produk.php');
                break;
			  case ('detail');
                include('details.php');
                break;
			  case ('read');
                include('reading.php');
                break;	
			  case ('checkout');
                include('checkout.php');
                break;		
			  case ('order');
                include('order.php');
                break;
			  case ('detail');
                include('details.php');
                break;
			  case ('saldo');
                include('saldo.php');
                break;				
		      case ('profile');
                include('profile.php');
                break;	
			  case ('store');
                include('store.php');
                break;				
            }
          }
?>
<?php } ?>

	
    <!--a href="#" id="toTopBtn" class="cd-top text-replace js-cd-top cd-top--is-visible cd-top--fade-out" data-abc="true"></a-->
    
    <?php include '../inc/footer.php';?>

    <!-- BEGIN: Vendor JS-->
    <script src="../app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->
    <!-- BEGIN: Page Vendor JS-->
    <script src="../app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <script src="../app-assets/vendors/js/charts/apexcharts.min.js"></script>
    <script src="../app-assets/vendors/js/extensions/tether.min.js"></script>
    <script src="../app-assets/vendors/js/extensions/shepherd.min.js"></script>
    <!-- END: Page Vendor JS-->
    <!-- BEGIN: Theme JS-->
    <script src="../app-assets/js/core/app-menu.js"></script>
    <script src="../app-assets/js/core/app.js"></script>
    <script src="../app-assets/js/scripts/components.js"></script>
    <!-- END: Theme JS-->
    <!-- BEGIN: Page JS-->
    <script src="../app-assets/js/scripts/pages/dashboard-analytics.js"></script>
    <script src="../app-assets/js/scripts/modal/components-modal.js"></script>    
    <script src="../app-assets/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="../app-assets/js/scripts/forms/select/form-select2.js"></script>    
    <script src="../app-assets/js/scripts/extensions/sweet-alerts.js"></script>
    <script src="../app-assets/vendors/js/extensions/sweetalert2.all.min.js"></script>
    <script src="../app-assets/vendors/js/extensions/polyfill.min.js"></script>    
    <script src="../app-assets/js/scripts/pages/app-ecommerce-details.js"></script>
    <script src="../app-assets/js/scripts/forms/number-input.js"></script>
    <script src="../app-assets/js/scripts/pages/app-ecommerce-shop.js"></script>    
    <script src="../app-assets/vendors/js/tables/datatable/pdfmake.min.js"></script>
    <script src="../app-assets/vendors/js/tables/datatable/vfs_fonts.js"></script>
    <script src="../app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
    <script src="../app-assets/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
    <script src="../app-assets/vendors/js/tables/datatable/buttons.html5.min.js"></script>
    <script src="../app-assets/vendors/js/tables/datatable/buttons.print.min.js"></script>
    <script src="../app-assets/vendors/js/tables/datatable/buttons.bootstrap.min.js"></script>
    <script src="../app-assets/vendors/js/tables/datatable/datatables.bootstrap4.min.js"></script>
    <script src="../app-assets/js/scripts/datatables/datatable.js"></script> 
    <script src="../app-assets/vendors/js/extensions/dropzone.min.js"></script>    
    <script src="../app-assets/vendors/js/tables/datatable/dataTables.select.min.js"></script>
    <script src="../app-assets/vendors/js/tables/datatable/datatables.checkboxes.min.js"></script>
    <script src="../app-assets/js/scripts/ui/data-list-view.js"></script>    
    <script src="../app-assets/vendors/js/forms/validation/jqBootstrapValidation.js"></script>	   
    <script src="../app-assets/js/scripts/pages/app-user.js"></script>
    <script src="../app-assets/js/scripts/navs/navs.js"></script>    
    <script src="../app-assets/vendors/js/extensions/moment.min.js"></script>    
    <script src="../app-assets/vendors/js/calendar/extensions/interactions.min.js"></script>
    <script src="../app-assets/js/scripts/extensions/fullcalendar.js"></script>    
    <script src="../app-assets/vendors/js/pagination/jquery.bootpag.min.js"></script>
    <script src="../app-assets/vendors/js/pagination/jquery.twbsPagination.min.js"></script>
    <script src="../app-assets/js/scripts/pagination/pagination.js"></script>    
    <script src="../app-assets/vendors/js/extensions/jquery.steps.min.js"></script>
    <script src="../app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <script src="../app-assets/js/scripts/forms/wizard-steps.js"></script>
    <script src="../app-assets/js/scripts/cards/card-statistics.js"></script>    
    <script src="../app-assets/vendors/js/forms/spinner/jquery.bootstrap-touchspin.js"></script>    
    <script src="../app-assets/js/scripts/forms/number-input.js"></script>
    <script src="../app-assets/vendors/js/pickers/pickadate/picker.js"></script>
    <script src="../app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
    <script src="../app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>    
    <script src="../app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>
    <script src="../app-assets/js/scripts/pages/account-setting.js"></script>
	<script src="../app-assets/js/scripts/pages/invoice.js"></script>
    <script src="../app-assets/js/scripts/bootstrap-colorpicker.js"></script>     
    <!-- END: Page JS-->
    <script>
      $(function () {
      $('#headerfooter').colorpicker();
      $('#headerfooter').on('colorpickerChange', function(event) {
        $('#demo').css('background-color', event.color.toString());
      });
      });
	   
	  $(function () {      
      $('#latar').colorpicker();
      $('#latar').on('colorpickerChange', function(event) {
        $('#demo').css('background-color', event.color.toString());
      });
      });
	  
	  $(function () {      
      $('#tombol').colorpicker();
      $('#tombol').on('colorpickerChange', function(event) {
        $('#demo').css('background-color', event.color.toString());
      });
      });

      let uploadButton1 = document.getElementById("upload-button1");
  let chosenImage1 = document.getElementById("chosen-image1");
  let uploadButton2 = document.getElementById("upload-button2");
  let chosenImage2 = document.getElementById("chosen-image2");
  let uploadButton3 = document.getElementById("upload-button3");
  let chosenImage3 = document.getElementById("chosen-image3");

  uploadButton1.onchange = () => {
      let reader = new FileReader();
      reader.readAsDataURL(uploadButton1.files[0]);
      reader.onload = () => {
          chosenImage1.setAttribute("src",reader.result);
      }
  }

  function delete_image1(){
    chosenImage1.setAttribute("src","")
  }

  uploadButton2.onchange = () => {
      let reader = new FileReader();
      reader.readAsDataURL(uploadButton2.files[0]);
      reader.onload = () => {
          chosenImage2.setAttribute("src",reader.result);
      }
  }

  function delete_image2(){
    chosenImage2.setAttribute("src","")
  }

  uploadButton3.onchange = () => {
      let reader = new FileReader();
      reader.readAsDataURL(uploadButton3.files[0]);
      reader.onload = () => {
          chosenImage3.setAttribute("src",reader.result);
      }
  }

  function delete_image3(){
    chosenImage3.setAttribute("src","")
  }


  let uploadButtonEdit1 = document.getElementById("edit-upload-button1");
  let chosenImageEdit1 = document.getElementById("edit-chosen-image1");
  let uploadButtonEdit2 = document.getElementById("edit-upload-button2");
  let chosenImageEdit2 = document.getElementById("edit-chosen-image2");
  let uploadButtonEdit3 = document.getElementById("edit-upload-button3");
  let chosenImageEdit3 = document.getElementById("edit-chosen-image3");

  uploadButtonEdit1.onchange = () => {
      let reader = new FileReader();
      reader.readAsDataURL(uploadButtonEdit1.files[0]);
      reader.onload = () => {
          chosenImageEdit1.setAttribute("src",reader.result);
      }
  }

  function edit_delete_image1(){
    chosenImageEdit1.setAttribute("src","")
    $('#cek_hapus1').val('1');
  }

  uploadButtonEdit2.onchange = () => {
      let reader = new FileReader();
      reader.readAsDataURL(uploadButtonEdit2.files[0]);
      reader.onload = () => {
          chosenImageEdit2.setAttribute("src",reader.result);
      }
  }

  function edit_delete_image2(){
    chosenImageEdit2.setAttribute("src","")
    $('#cek_hapus2').val('1');
  }

  uploadButtonEdit3.onchange = () => {
      let reader = new FileReader();
      reader.readAsDataURL(uploadButtonEdit3.files[0]);
      reader.onload = () => {
          chosenImageEdit3.setAttribute("src",reader.result);
      }
  }

  function edit_delete_image3(){
    chosenImageEdit3.setAttribute("src","")
    $('#cek_hapus3').val('1');
  }


  function pilihVarian() {
    var x = document.getElementById("kategori").value;
    var response = '';
    $.ajax({
        type: "GET",
        url: "../aksi/select_varian_in_kategori.php?id_kategori="+x,
        async: false,
        success: function(text) {
            response = text;
        }
    });
    let text = "";
    let varian = response.replace('"', '');
    varian = varian.replace('"', '');
    varian = varian.split(',');

    for (var i = 0; i < varian.length; i++) {
      if(varian[i] == 'panjang')
      {
        text += `<div class="col-6 col-md-4">
            <div class="font-small-2">Panjang</div>
               <fieldset class="form-group position-relative has-icon-left input-divider-left">
                  <input type="text" name="panjang" class="form-control" placeholder="Isi disini" />                     
               <div class="form-control-position"><i class="fas fa-ruler-horizontal"></i>
             </div>
            </fieldset>
          </div>`
      }
      else if(varian[i] == 'lebar')
      {
        text += `<div class="col-6 col-md-4">
            <div class="font-small-2">Lebar</div>
                <fieldset class="form-group position-relative has-icon-left input-divider-left">
                   <input type="text" name="lebar" class="form-control" placeholder="Isi disini" />                     
                <div class="form-control-position"><i class="fas fa-ruler-combined"></i>
               </div>
              </fieldset>
          </div>`
      }
      else if(varian[i] == 'tinggi')
      {
        text += `<div class="col-6 col-md-4">
             <div class="font-small-2">Tinggi</div>
                <fieldset class="form-group position-relative has-icon-left input-divider-left">
                    <input type="text" name="tinggi" class="form-control" placeholder="Isi disini" />                     
                 <div class="form-control-position"><i class="fas fa-ruler-vertical"></i>
                </div>
               </fieldset>
          </div>`
      }
      else if(varian[i] == 'warna')
      {
        text += `<div class="col-6 col-md-4">
            <div class="font-small-2">Warna</div>
                 <fieldset class="form-group position-relative has-icon-left input-divider-left">
                    <input type="text" name="warna" class="form-control" placeholder="Isi disini" />                     
                 <div class="form-control-position"><i class="fas fa-eye-dropper"></i>
               </div>
              </fieldset>
          </div>`
      }
      else if(varian[i] == 'type')
      {
        text += `<div class="col-6 col-md-4">
            <div class="font-small-2">Type</div>
                 <fieldset class="form-group position-relative has-icon-left input-divider-left">
                    <input type="text" name="type" class="form-control" placeholder="Isi disini" />                     
                 <div class="form-control-position"><i class="fas fa-tag"></i>
               </div>
              </fieldset>
          </div>`
      }
    }
    if(text == "")
    {
      text += `<div class="col-6 col-md-12">
            <p class="text-center"> tidak ada varian </p>
          </div>`
    }

    $("#varian").html(text);
  }

  function pilihVarianEdit() {
    var x = document.getElementById("kategori_edit").value;
    var response = '';
    $.ajax({
        type: "GET",
        url: "../aksi/select_varian_in_kategori.php?id_kategori="+x,
        async: false,
        success: function(text) {
            response = text;
        }
    });
    let text = "";
    let varian = response.replace('"', '');
    varian = varian.replace('"', '');
    varian = varian.split(',');

    for (var i = 0; i < varian.length; i++) {
      if(varian[i] == 'panjang')
      {
        text += `<div class="col-6 col-md-4">
            <div class="font-small-2">Panjang</div>
               <fieldset class="form-group position-relative has-icon-left input-divider-left">
                  <input type="text" name="panjang" class="form-control" placeholder="Isi disini" />                     
               <div class="form-control-position"><i class="fas fa-ruler-horizontal"></i>
             </div>
            </fieldset>
          </div>`
      }
      else if(varian[i] == 'lebar')
      {
        text += `<div class="col-6 col-md-4">
            <div class="font-small-2">Lebar</div>
                <fieldset class="form-group position-relative has-icon-left input-divider-left">
                   <input type="text" name="lebar" class="form-control" placeholder="Isi disini" />                     
                <div class="form-control-position"><i class="fas fa-ruler-combined"></i>
               </div>
              </fieldset>
          </div>`
      }
      else if(varian[i] == 'tinggi')
      {
        text += `<div class="col-6 col-md-4">
             <div class="font-small-2">Tinggi</div>
                <fieldset class="form-group position-relative has-icon-left input-divider-left">
                    <input type="text" name="tinggi" class="form-control" placeholder="Isi disini" />                     
                 <div class="form-control-position"><i class="fas fa-ruler-vertical"></i>
                </div>
               </fieldset>
          </div>`
      }
      else if(varian[i] == 'warna')
      {
        text += `<div class="col-6 col-md-4">
            <div class="font-small-2">Warna</div>
                 <fieldset class="form-group position-relative has-icon-left input-divider-left">
                    <input type="text" name="warna" class="form-control" placeholder="Isi disini" />                     
                 <div class="form-control-position"><i class="fas fa-eye-dropper"></i>
               </div>
              </fieldset>
          </div>`
      }
      else if(varian[i] == 'type')
      {
        text += `<div class="col-6 col-md-4">
            <div class="font-small-2">Type</div>
                 <fieldset class="form-group position-relative has-icon-left input-divider-left">
                    <input type="text" name="type" class="form-control" placeholder="Isi disini" />                     
                 <div class="form-control-position"><i class="fas fa-tag"></i>
               </div>
              </fieldset>
          </div>`
      }
    }
    if(text == "")
    {
      text += `<div class="col-6 col-md-12">
            <p class="text-center"> tidak ada varian </p>
          </div>`
    }

    $("#varian_edit").html(text);
  }

  function deleteImage(id){
    console.log(id);
    $.ajax({
      type: "GET",
      url: "../aksi/delete_produk.php?id_produk="+id,
      async: false,
      success: function(text) {
        alert(text);
      }
    });
  }

  function show(id) {
    var response = [];
    var gambar = "";
    let text = "";

    chosenImageEdit1.setAttribute("src","");
    chosenImageEdit2.setAttribute("src","");
    chosenImageEdit3.setAttribute("src","");

    $('#cek_hapus1').val('');
    $('#cek_hapus2').val('');
    $('#cek_hapus3').val('');

    $.ajax({
      type: "GET",
      url: "../aksi/show_produk.php?id_produk="+id,
      async: false,
      success: function(text) {
        response = JSON.parse(text);
      }
    });
    console.log(response);
    $('#kd_barang').val(response.barang.kd_barang);
    $('#nm_barang').val(response.barang.nm_barang);
    $('#kategori_edit option[value="'+response.barang.kd_kategori+'"]').prop('selected', true);
    $('#satuan_edit option[value="'+response.barang.kd_satuan+'"]').prop('selected', true);
    $('#merk_edit option[value="'+response.barang.merek+'"]').prop('selected', true);
    $('#stok_edit').val(response.stok.stok);
    $('#harga_beli_edit').val(response.barang.hrg_beli);
    $('#harga_jual_edit').val(response.barang.hrg_jual);
    $('#harga_grosir_edit').val(response.barang.hrg_grosir);
    $('#deskripsi_edit').val(response.barang.deskripsi);

    if(response.barang.panjang != "")
    {
      text += `<div class="col-6 col-md-4">
          <div class="font-small-2">Panjang</div>
             <fieldset class="form-group position-relative has-icon-left input-divider-left">
                <input type="text" name="panjang" value="${response.barang.panjang}" class="form-control" placeholder="Isi disini" />                     
             <div class="form-control-position"><i class="fas fa-ruler-horizontal"></i>
           </div>
          </fieldset>
        </div>`
    }
    if(response.barang.lebar != "")
    {
      text += `<div class="col-6 col-md-4">
          <div class="font-small-2">Lebar</div>
              <fieldset class="form-group position-relative has-icon-left input-divider-left">
                 <input type="text" name="lebar" value="${response.barang.lebar}" class="form-control" placeholder="Isi disini" />                     
              <div class="form-control-position"><i class="fas fa-ruler-combined"></i>
             </div>
            </fieldset>
        </div>`
    }
    if(response.barang.tinggi != "")
    {
      text += `<div class="col-6 col-md-4">
           <div class="font-small-2">Tinggi</div>
              <fieldset class="form-group position-relative has-icon-left input-divider-left">
                  <input type="text" name="tinggi" value="${response.barang.tinggi}" class="form-control" placeholder="Isi disini" />                     
               <div class="form-control-position"><i class="fas fa-ruler-vertical"></i>
              </div>
             </fieldset>
        </div>`
    }
    if(response.barang.warna != "")
    {
      text += `<div class="col-6 col-md-4">
          <div class="font-small-2">Warna</div>
               <fieldset class="form-group position-relative has-icon-left input-divider-left">
                  <input type="text" name="warna" value="${response.barang.warna}" class="form-control" placeholder="Isi disini" />                     
               <div class="form-control-position"><i class="fas fa-eye-dropper"></i>
             </div>
            </fieldset>
        </div>`
    }
    if(response.barang.tipe != "")
    {
      text += `<div class="col-6 col-md-4">
          <div class="font-small-2">Type</div>
               <fieldset class="form-group position-relative has-icon-left input-divider-left">
                  <input type="text" name="type" value="${response.barang.tipe}" class="form-control" placeholder="Isi disini" />                     
               <div class="form-control-position"><i class="fas fa-tag"></i>
             </div>
            </fieldset>
        </div>`
    }
    $("#varian_edit").html(text);
    gambar = response.gambar.gambar
    gambar = gambar.split(',');
    console.log(gambar[2]);

    if(gambar[0] != "kosong"){
      chosenImageEdit1.setAttribute("src","../img/produk/"+gambar[0]);

    }
    if(gambar[1] != "kosong"){
      chosenImageEdit2.setAttribute("src","../img/produk/"+gambar[1]);

    }
    if(gambar[2] != "kosong"){
      chosenImageEdit3.setAttribute("src","../img/produk/"+gambar[2]);
    }
    $("#modal_produk").modal('show');
  }
    </script>

 
</body>
<!-- END: Body-->

</html>