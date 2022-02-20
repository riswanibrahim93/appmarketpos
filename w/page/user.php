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
                                    <li class="breadcrumb-item"><a href="#" class="text-dark"><?php echo $_SESSION['nm_user'];?></a>
                                    </li>                                   
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

<div class="card">
     <div class="card-body">
  
<!-- Column selectors with Export Options and print table -->
      <section id="column-selectors">
         <div class="row">
           <div class="col-12">
             <div class="card">
                <div class="divider">
                     <div class="divider-text"><h3 class="mb-3 display-4 text-uppercase">Data Pengguna</h3></div>
                   </div>
                 <div class="card-content">
                   <div class="card-body card-dashboard">                                       
                      <div class="table-responsive">
                        <table class="table table-striped dataex-html5-selectors">
                           <thead>
                             <tr>
                                 <th>Kode</th>
                                 <th>Nama</th>
                                 <th>Alamat</th>
                                 <th>No.HP</th>
                                 <th>Saldo</th>
                                 <th>Edit</th>
                               </tr>
                              </thead>
                              <tbody>
<?php 
   $akses = $_GET['akses'];           
   $ketQuery = "SELECT * FROM tabel_member,tabel_saldo WHERE tabel_member.akses = '$akses' AND tabel_member.id_user = tabel_saldo.id_user ORDER BY nm_user ASC";
   $executeSat = mysqli_query($koneksi, $ketQuery);
   while ($m=mysqli_fetch_array($executeSat)) {
?>                                  
                                 <tr>
                                   <td><?php echo $m['kode_user'] ?></td>
                                   <td class="text-capitalize"><?php echo $m['nm_user'] ?></td>
                                   <td><?php echo $m['alamat_user'] ?></td>
                                   <td><?php echo $m['hp'] ?></td>
                                   <td>Rp.<?php echo number_format($m['jumlah'],0,",","."); ?></td>
                                   <td>
                                   		<a class="action-edit"><i class="fas fa-edit"></i></a>
                                        <a class="action-delete"><i class="fas fa-trash-alt"></i></a>
                                   </td>
                                 </tr>
                                   <?php } ?>                                                  
                               </tbody>
                               <tfoot>
                                 <tr>
                                    <th>Kode</th>
                                 	<th>Nama</th>
                                 	<th>Alamat</th>
                                 	<th>No.HP</th>
                                 	<th>Saldo</th>
                                 	<th>Edit</th>
                                 </tr>
                                </tfoot>
                             </table>
                          </div>
                       </div>
                    </div>
                 </div>
              </div>
           </div>
        </section>
<!-- Column selectors with Export Options and print table --> 
     </div>
    </div>
  </div>
  </div>
<!-- END: Content-->
 </div>
</div> 