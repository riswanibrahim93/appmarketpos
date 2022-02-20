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
    <link rel="stylesheet" type="text/css" href="../app-assets/css/pages/app-chat.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../../../assets/css/style.css">
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->
<body class="horizontal-layout horizontal-menu content-left-sidebar chat-application navbar-floating footer-static" data-open="hover" data-menu="horizontal-menu" data-col="content-left-sidebar" style="background:<?php echo $background;?>">    
    <?php include '../inc/header.php' ;?>
    <!-- BEGIN: Content-->
    <div class="app-content content mb-5">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-area-wrapper">
            <div class="sidebar-left">
                <div class="sidebar">
                    <!-- User Chat profile area -->
                    <div class="chat-profile-sidebar">
                        <header class="chat-profile-header">
                            <span class="close-icon">
                                <i class="feather icon-x"></i>
                            </span>
                            <div class="header-profile-sidebar">
                                <div class="avatar">
                                    <img src="../img/icon/admin.jpg" height="70" width="70">
                                    <span class="avatar-status-online avatar-status-lg"></span>
                                </div>
                                <h4 class="chat-user-name">John Doe</h4>
                            </div>
                        </header>
                        <div class="profile-sidebar-area">
                            <div class="scroll-area">
                                <h6>About</h6>
                                <div class="about-user">
                                    <fieldset class="mb-0">
                                        <textarea data-length="120" class="form-control char-textarea" id="textarea-counter" rows="5" placeholder="About User">Dessert chocolate cake lemon drops jujubes. Biscuit cupcake ice cream bear claw brownie brownie marshmallow.</textarea>
                                    </fieldset>
                                    <small class="counter-value float-right"><span class="char-count">108</span> / 120 </small>
                                </div>
                                <h6 class="mt-3">Status</h6>
                                <ul class="list-unstyled user-status mb-0">
                                    <li class="pb-50">
                                        <fieldset>
                                            <div class="vs-radio-con vs-radio-success">
                                                <input type="radio" name="userStatus" value="online" checked="checked">
                                                <span class="vs-radio">
                                                    <span class="vs-radio--border"></span>
                                                    <span class="vs-radio--circle"></span>
                                                </span>
                                                <span class="">Active</span>
                                            </div>
                                        </fieldset>
                                    </li>
                                    <li class="pb-50">
                                        <fieldset>
                                            <div class="vs-radio-con vs-radio-danger">
                                                <input type="radio" name="userStatus" value="busy">
                                                <span class="vs-radio">
                                                    <span class="vs-radio--border"></span>
                                                    <span class="vs-radio--circle"></span>
                                                </span>
                                                <span class="">Do Not Disturb</span>
                                            </div>
                                        </fieldset>
                                    </li>
                                    <li class="pb-50">
                                        <fieldset>
                                            <div class="vs-radio-con vs-radio-warning">
                                                <input type="radio" name="userStatus" value="away">
                                                <span class="vs-radio">
                                                    <span class="vs-radio--border"></span>
                                                    <span class="vs-radio--circle"></span>
                                                </span>
                                                <span class="">Away</span>
                                            </div>
                                        </fieldset>
                                    </li>
                                    <li class="pb-50">
                                        <fieldset>
                                            <div class="vs-radio-con vs-radio-secondary">
                                                <input type="radio" name="userStatus" value="offline">
                                                <span class="vs-radio">
                                                    <span class="vs-radio--border"></span>
                                                    <span class="vs-radio--circle"></span>
                                                </span>
                                                <span class="">Offline</span>
                                            </div>
                                        </fieldset>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--/ User Chat profile area -->
                    <!-- Chat Sidebar area -->
                    <div class="sidebar-content card">
                        <span class="sidebar-close-icon">
                            <i class="feather icon-x"></i>
                        </span>
                        <div class="chat-fixed-search">
                            <div class="d-flex align-items-center">
                                <div class="sidebar-profile-toggle position-relative d-inline-flex">
                                    <div class="avatar">
                                        <img src="../img/user/user.jpg" height="40" width="40">
                                        <span class="avatar-status-online"></span>
                                    </div>
                                    <div class="bullet-success bullet-sm position-absolute"></div>
                                </div>
                                <fieldset class="form-group position-relative has-icon-left mx-1 my-0 w-100">
                                    <input type="text" class="form-control round" id="chat-search" placeholder="Search or start a new chat">
                                    <div class="form-control-position">
                                        <i class="feather icon-search"></i>
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                        
                        <div id="users-list" class="chat-user-list list-group position-relative">
                            <h3 class="primary p-1 mb-0">Chats</h3>
                            <ul class="chat-users-list-wrapper media-list">
<?php             
   $ketQuery = "SELECT * FROM tabel_member WHERE akses = 'admin' ORDER BY nm_user ASC";
   $executeSat = mysqli_query($koneksi, $ketQuery);
   while ($a=mysqli_fetch_array($executeSat)) {
?>                                
                                <li style="background:<?php echo $tombol;?>">
                                  <div class="pr-1">
                                    <span class="avatar m-0 avatar-md">
                                      <img class="media-object rounded-circle" src="../img/user/user.jpg" height="40" width="40">
                                    </span>
                                  </div>
                                  <div class="user-chat-info">
                                        <div class="contact-info">
                                            <h5 class="font-weight-bold mb-0"><?php echo $a['nm_user'] ?></h5>
                                            <p class="truncate font-small-2">Status saya saat ini</p>
                                        </div>
                                        <div class="contact-meta">
                                            <span class="float-right mb-25">4:14 PM</span>
                                            <span class="badge badge-primary badge-pill float-right">3</span>
                                        </div>
                                    </div>
                                </li>
 <?php } ?>                                
                           </ul>
                           <h3 class="primary p-1 mb-0">Contacts</h3>
                            <ul class="chat-users-list-wrapper media-list">     
 <?php             
   $ketQuery = "SELECT * FROM tabel_member WHERE akses != 'admin' ORDER BY nm_user ASC";
   $executeSat = mysqli_query($koneksi, $ketQuery);
   while ($a=mysqli_fetch_array($executeSat)) {
?>                                
                                <li>
                                  <div class="pr-1">
                                    <span class="avatar m-0 avatar-md">
                                      <img class="media-object rounded-circle" src="../img/user/user.jpg" height="40" width="40">
                                    </span>
                                  </div>
                                  <div class="user-chat-info">
                                        <div class="contact-info">
                                            <h5 class="font-weight-bold mb-0"><?php echo $a['nm_user'] ?></h5>
                                            <p class="truncate font-small-2">Status saya saat ini</p>
                                        </div>
                                        <div class="contact-meta">
                                            <span class="float-right mb-25">4:14 PM</span>
                                            <span class="badge badge-primary badge-pill float-right">3</span>
                                        </div>
                                    </div>
                                </li>
 <?php } ?>                                
                                
                            </ul>
                        </div>
                    </div>
                    <!--/ Chat Sidebar area -->

                </div>
            </div>
            <div class="content-right">
                <div class="content-wrapper">
                    <div class="content-header row">
                    </div>
                    <div class="content-body">
                        <div class="chat-overlay"></div>
                        <section class="chat-app-window">
                            <div class="start-chat-area">
                                <span class="mb-1 start-chat-icon feather icon-message-square"></span>
                                <h4 class="py-50 px-1 sidebar-toggle start-chat-text">Start Conversation</h4>
                            </div>
                            <div class="active-chat d-none">
                                <div class="chat_navbar">
                                    <header class="chat_header d-flex justify-content-between align-items-center p-1">
                                        <div class="vs-con-items d-flex align-items-center">
                                            <div class="sidebar-toggle d-block d-lg-none mr-1"><i class="feather icon-menu font-large-1"></i></div>
                                            <div class="avatar user-profile-toggle m-0 m-0 mr-1">
                                                <img src="../img/user/user.jpg" alt="" height="40" width="40" />
                                                <span class="avatar-status-busy"></span>
                                            </div>
                                            <h6 class="mb-0">Felecia Rower</h6>
                                        </div>
                                        <span class="favorite"><i class="feather icon-star font-medium-5"></i></span>
                                    </header>
                                </div>
                                <div class="user-chats">
                                    <div class="chats">
                                        <div class="chat">
                                            <div class="chat-avatar">
                                                <a class="avatar m-0" data-toggle="tooltip" href="#" data-placement="right" title="" data-original-title="">
                                                    <img src="../img/user/user.jpg" alt="avatar" height="40" width="40" />
                                                </a>
                                            </div>
                                            <div class="chat-body">
                                                <div class="chat-content">
                                                    <p>How can we help? We're here for you!</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="chat chat-left">
                                            <div class="chat-avatar">
                                                <a class="avatar m-0" data-toggle="tooltip" href="#" data-placement="left" title="" data-original-title="">
                                                    <img src="../img/user/user.jpg" alt="avatar" height="40" width="40" />
                                                </a>
                                            </div>
                                            <div class="chat-body">
                                                <div class="chat-content">
                                                    <p>Hey John, I am looking for the best admin template.</p>
                                                    <p>Could you please help me to find it out?</p>
                                                </div>
                                                <div class="chat-content">
                                                    <p>It should be Bootstrap 4 compatible.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="divider">
                                            <div class="divider-text">Yesterday</div>
                                        </div>
                                        <div class="chat">
                                            <div class="chat-avatar">
                                                <a class="avatar m-0" data-toggle="tooltip" href="#" data-placement="right" title="" data-original-title="">
                                                    <img src="../img/user/user.jpg" alt="avatar" height="40" width="40" />
                                                </a>
                                            </div>
                                            <div class="chat-body">
                                                <div class="chat-content">
                                                    <p>Absolutely!</p>
                                                </div>
                                                <div class="chat-content">
                                                    <p>Vuexy admin is the responsive bootstrap 4 admin template.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="chat chat-left">
                                            <div class="chat-avatar">
                                                <a class="avatar m-0" data-toggle="tooltip" href="#" data-placement="left" title="" data-original-title="">
                                                    <img src="../img/user/user.jpg" alt="avatar" height="40" width="40" />
                                                </a>
                                            </div>
                                            <div class="chat-body">
                                                <div class="chat-content">
                                                    <p>Looks clean and fresh UI.</p>
                                                </div>
                                                <div class="chat-content">
                                                    <p>It's perfect for my next project.</p>
                                                </div>
                                                <div class="chat-content">
                                                    <p>How can I purchase it?</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="chat">
                                            <div class="chat-avatar">
                                                <a class="avatar m-0" data-toggle="tooltip" href="#" data-placement="right" title="" data-original-title="">
                                                    <img src="../img/user/user.jpg" alt="avatar" height="40" width="40" />
                                                </a>
                                            </div>
                                            <div class="chat-body">
                                                <div class="chat-content">
                                                    <p>Thanks, from ThemeForest.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="chat chat-left">
                                            <div class="chat-avatar">
                                                <a class="avatar m-0" data-toggle="tooltip" href="#" data-placement="left" title="" data-original-title="">
                                                    <img src="../img/user/user.jpg" alt="avatar" height="40" width="40" />
                                                </a>
                                            </div>
                                            <div class="chat-body">
                                                <div class="chat-content">
                                                    <p>I will purchase it for sure.</p>
                                                </div>
                                                <div class="chat-content">
                                                    <p>Thanks.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="chat">
                                            <div class="chat-avatar">
                                                <a class="avatar m-0" data-toggle="tooltip" href="#" data-placement="right" title="" data-original-title="">
                                                    <img src="../img/user/user.jpg" alt="avatar" height="40" width="40" />
                                                </a>
                                            </div>
                                            <div class="chat-body">
                                                <div class="chat-content">
                                                    <p>Great, Feel free to get in touch on</p>
                                                </div>
                                                <div class="chat-content">
                                                    <p>https://pixinvent.ticksy.com/</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                             
                         <div class="chat-app-form">
                          <form class="chat-app-input d-flex" onsubmit="enter_chat();" action="javascript:void(0);">
                           <input type="text" class="form-control message mr-1 ml-50" id="iconLeft4-1" placeholder="Tulis pesan">
                           
                           <button type="button" class="btn rounded-0 send" onclick="enter_chat();">
                              <i class="fas fa-paperclip"></i></button>
                                        
                           <button type="button" class="btn btn-primary rounded-0 send" onclick="enter_chat();">
                                        <i class="fa fa-paper-plane-o"></i></button>
                          </form>
                         </div>
                       </div>
                     </section>
                     
                     <!-- User Chat profile right area -->
                        <div class="user-profile-sidebar">
                            <header class="user-profile-header">
                                <span class="close-icon">
                                    <i class="feather icon-x"></i>
                                </span>
                                <div class="header-profile-sidebar">
                                    <div class="avatar">
                                        <img src="../img/user/user.jpg" height="70" width="70">
                                        <span class="avatar-status-busy avatar-status-lg"></span>
                                    </div>
                                    <h4 class="chat-user-name">Felecia Rower</h4>
                                </div>
                            </header>
                            <div class="user-profile-sidebar-area p-2">
                                <h6>About</h6>
                                <p>Toffee caramels jelly-o tart gummi bears cake I love ice cream lollipop. Sweet liquorice croissant candy danish dessert icing. Cake macaroon gingerbread toffee sweet.</p>
                            </div>
                        </div>
                        <!--/ User Chat profile right area -->

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END: Content-->
    <?php include '../inc/footer.php' ;?>
<!-- BEGIN: Vendor JS-->
    <script src="../app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="../app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="../app-assets/js/core/app-menu.js"></script>
    <script src="../app-assets/js/core/app.js"></script>
    <script src="../app-assets/js/scripts/components.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="../app-assets/js/scripts/pages/app-chat.js"></script>
    <!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>