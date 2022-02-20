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
                                    <li class="breadcrumb-item"><a href="#" class="text-dark">Retur</a>
                                    </li>                                   
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

<div class="card">
 <div class="card-body">
  <div class="divider">
    <div class="divider-text"><h3 class="mb-3 display-4 text-uppercase">Retur Produk</h3></div>
   </div>
   <div class="row">
  	<div class="col-lg-5 col-12 pb-5">        
        
      <form method="post" action="" enctype="multipart/form-data">
        
        <div class="row">
          <div class="col-12 col-md-12">
          	<div class="font-small-2">Cari produk</div>
              <select name="" class="form-control select2">
                 <option disabled selected>Pilih Produk</option>
<?php error_reporting(0);           
    $ketQuery = "SELECT * FROM tabel_barang ORDER BY nm_barang ASC";
    $executeSat = mysqli_query($koneksi, $ketQuery);
    while ($k=mysqli_fetch_array($executeSat)) {
?> 
                  <option value="<?php echo $k['kd_barang'];?>"><?php echo $k['nm_barang'];?> </option>
                    <?php } ?>
              </select>
          </div>         
         </div>
              
        <div class="row mt-1">  
          <div class="col-6 col-md-6">
          	<div class="font-small-2">Supplier/ Member</div>
                <select class="select2 form-control" name="satuan">
<?php error_reporting(0);           
    $ketQuery = "SELECT * FROM tabel_satuan_barang ORDER BY nm_satuan ASC";
    $executeSat = mysqli_query($koneksi, $ketQuery);
    while ($s=mysqli_fetch_array($executeSat)) {
?>                 
                  <option value="<?php echo $s['id_satuan'];?>"><?php echo $s['nm_satuan'];?></option>
         			<?php } ?>                 
               </select>
          </div>
           <div class="col-6 col-md-6">
          	<div class="font-small-2">Jumlah Retur</div>
                <div class="d-inline-block mb-1">
                <div class="input-group">
                  <input type="number" class="touchspin rounded-0" value="1">
                </div>
              </div>
          </div>
        </div> 
        
              
        <div class="row">
        	<div class="col-12 mt-1">
              <div class="font-small-2 mb-1">Deskripsi Retur</div>
               <fieldset class="form-label-group mb-0">
                 <textarea data-length=100 class="form-control char-textarea" rows="3" name="" >Isi disini</textarea>
               </fieldset>
               <small class="counter-value float-right"><span class="char-count">maks.</span> / 100 karakter</small>
             </div>
            <div class="col-12 mt-1">
              <div class="font-small-2 mb-1">Tanggal Retur</div>
               <fieldset class="form-label-group mb-0">
                 <input type='text' name="" class="form-control pickadate" />
               </fieldset>               
             </div>
        </div>
        <div class="row">
        	<div class="col-12 mt-1">
            	<input type="submit" name="" value="Kirim" class="btn btn-primary rounded-0" />
            	<input type="reset" name="" value="Cancel" onClick="hide(0)" class="btn btn-danger rounded-0" />
            </div>
        </div>   
        </form>      
    </div>
 	<div class="col-lg-7 col-12">
     <div class="badge badge-primary float-right">
      <?php $sql_user = mysqli_query($koneksi,"SELECT * FROM tabel_barang"); $jumlah_user = mysqli_num_rows($sql_user); ?>
         <span class="badge badge-pill badge-up badge-danger font-small-2 mr-2">
		 <?php echo $jumlah_user?></span>Total Produk 
     </div>    
      <div class="table-responsive">
        <table class="table table-striped dataex-html5-selectors">
           <thead>
              <tr>
                <th>Kode</th>
                <th>Produk</th>
                <th>Stok</th> 
                <th>Harga Jual</th> 
                <th>Harga Beli</th>
                <th>Harga Grosir</th>                               
                <th>Edit</th>
              </tr>
           </thead>
           <tbody>
<?php            
   $ketQuery = "SELECT * FROM tabel_barang, tabel_stok_toko WHERE tabel_barang.kd_barang = tabel_stok_toko.kd_barang";
   $executeSat = mysqli_query($koneksi, $ketQuery);
   while ($b=mysqli_fetch_array($executeSat)) {
?>                                  
                                 <tr>
                                   <td><?php echo $b['kd_barang'] ?></td>
                                   <td class="text-capitalize"><?php echo $b['nm_barang'] ?></td>
                                   <td><?php echo $b['stok'] ?></td>
                                   <td>Rp.<?php echo number_format($b['hrg_jual'],0,",","."); ?></td>
                                   <td>Rp.<?php echo number_format($b['hrg_beli'],0,",","."); ?></td>
                                   <td>Rp.<?php echo number_format($b['hrg_grosir'],0,",","."); ?></td>
                                   <td>
                                   		<a href="#" data-toggle="modal" data-target="#produk">
                                        	<i class="fas fa-edit"></i></a>
                                        <a class="action-delete"><i class="fas fa-trash-alt"></i></a>
                                   </td>
                                 </tr>
                                   <?php } ?>                                                  
                               </tbody>
                               <tfoot>
                                 <tr>
                                     <th>Kode</th>
                                     <th>Produk</th>
                                     <th>Stok</th> 
                                     <th>Harga Jual</th> 
                                     <th>Harga Beli</th>
                                     <th>Harga Grosir</th>                               
                                     <th>Edit</th>
                                 </tr>
                                </tfoot>
                             </table>
                          </div>
      
    </div>
   </div>  
<!-- END: Content-->
 </div>
</div> 

<!---------------------------------------- Modal Kategori ------------------------------------>
<div class="modal fade text-left" id="kategori" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-xs" role="document">
     <div class="modal-content">
       <div class="modal-header">
         <h4 class="modal-title font-medium-2" id="myModalLabel20"><i class="fas fa-plus-circle"></i> Tambahkan kategori baru</h4>
           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span></button>
         </div>
         <div class="modal-body">
         	<form method="post" class="form-kategori">
            <div class="row">
                <div class="col-12">
                  <div class="font-small-2 mb-1">Icon</div>
                    <fieldset class="form-group">
                       <div class="custom-file">
                          <input type="file" class="custom-file-input" name="gambar" accept="image/png, image/gif, image/jpeg">
                            <label class="custom-file-label" for="image">Choose file</label>
                       </div>
                     </fieldset>
                  </div>
                  <div class="col-12">
                   <div class="font-small-2 mb-1">Nama Kategori</div>
                    <fieldset class="form-group">
                       <div class="custom-file">
                          <input type="text" name="kategori" class="form-control" placeholder="Isi disini" /> 
                       </div>
                     </fieldset>
                  </div>
                  
                  <div class="col-12">
                   <div class="font-small-2 mb-1">Form</div>
                    <fieldset class="form-group">
                       <div class="custom-file">
                          <select class="select2 form-control" name="form"> 
                          	<option value="sf">Single Form</option>
                            <option value="mf">Multi Form</option>
                          </select>
                       </div>
                     </fieldset>
                  </div>
            
            </div>
         </div>
         <div class="modal-footer">
         <button type="button" name="submit-kategori" id="submit-kategori" class="btn btn-dark" data-dismiss="modal">SEND</button>
           </form>
         </div>
       </div>
      </div>
     </div>
</div> 
<!---------------------------------------- Modal Kategori ------------------------------------>

  
<!---------------------------------------- Modal Satuan------------------------------------>
<div class="modal fade text-left" id="satuan" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-xs" role="document">
     <div class="modal-content">
       <div class="modal-header">
         <h4 class="modal-title font-medium-2" id="myModalLabel20"><i class="fas fa-plus-circle"></i> Tambahkan Satuan baru</h4>
           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span></button>
         </div>
         <div class="modal-body">
         	<form method="post" class="form-kategori">
            <div class="row">                
                  <div class="col-12">
                  <div class="font-small-2 mb-1">Nama Satuan</div>
                    <fieldset class="form-group">
                       <div class="custom-file">
                          <input type="text" name="" class="form-control" placeholder="Isi disini" id="defaultForm-kat" /> 
                       </div>
                     </fieldset>
                  </div>
            
            </div>
         </div>
         <div class="modal-footer">
         <button type="button" name="submit-kategori" id="submit-kategori" class="btn btn-dark" data-dismiss="modal">SEND</button>
           </form>
         </div>
       </div>
      </div>
     </div>
</div> 
<!---------------------------------------- Modal Satuan------------------------------------>  

<!---------------------------------------- Modal Produk------------------------------------>
<div class="modal fade" id="produk" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
   <div class="modal-dialog modal-dialog-scrollable" role="document">
     <div class="modal-content">
       <div class="modal-header">
         <h4 class="modal-title font-medium-2" id="myModalLabel20"><i class="fas fa-plus-circle"></i> Ubah Data Produk</h4>
           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span></button>
         </div>
         <div class="modal-body">
         	<form method="post" class="form-kategori">
            
            <div class="row">
              <div class="col-12 col-md-12">
                <div class="font-small-2">Kode barang</div>
                    <fieldset>
                        <div class="input-group">
                             <input type="text" class="form-control" placeholder="Scan Here!">
                                <div class="input-group-append" id="button-addon2">
                                   <button class="btn btn-primary rounded-0" type="button"><i class="fas fa-qrcode"></i></button>
                                </div>
                             </div>
                      </fieldset>
              </div>
              <div class="col-12 col-md-12 mt-2 mb-1">
                <div class="font-small-2">Upload Foto terbaik <span class="badge badge-dark">Max.3 (JPG/JPEG/PNG)</span></div>
              </div>  
              <div class="col-4 col-md-4">
                    <fieldset class="form-group">
                       <div class="custom-file">
                          <input type="file" class="custom-file-input" name="" id="image">
                            <label class="custom-file-label" for="image">Pilih File</label>
                       </div>
                     </fieldset>
              </div>
              <div class="col-4 col-md-4">
                    <fieldset class="form-group">
                       <div class="custom-file">
                          <input type="file" class="custom-file-input" name="" id="image">
                            <label class="custom-file-label" for="image">Pilih File</label>
                       </div>
                     </fieldset>
              </div>
              <div class="col-4 col-md-4">
                    <fieldset class="form-group">
                       <div class="custom-file">
                          <input type="file" class="custom-file-input" name="" id="image">
                            <label class="custom-file-label" for="image">Pilih File</label>
                       </div>
                     </fieldset>
              </div>
              <div class="col-12 col-md-12">
                 <div class="font-small-2">Masukkan nama produk anda</div>
                     <fieldset class="form-group position-relative has-icon-left input-divider-left">
                        <input type="text" name="" class="form-control" placeholder="Isi disini" />                     
                     <div class="form-control-position"><i class="fas fa-box-open"></i>
                   </div>
                  </fieldset>
              </div>
            </div> 
            <div class="row">
              <div class="col-6 col-md-8">
              <div class="font-small-2 mt-1 mb-1">
                     Kategori Produk <a href="#" class="badge badge-dark" data-toggle="modal" data-target="#kategori">
                      <i class="fas fa-plus-circle"></i>Tambah</a>
                       </div>            
                          <select name="kategori" class="form-control select2" id="seeAnotherField">
                            <option disabled selected>Pilih Kategori</option>
    <?php error_reporting(0);           
        $ketQuery = "SELECT * FROM tabel_kategori_barang ORDER BY nm_kategori ASC";
        $executeSat = mysqli_query($koneksi, $ketQuery);
        while ($k=mysqli_fetch_array($executeSat)) {
    ?> 
                        <option value="<?php echo $k['kd_kategori'];?>"><?php echo $k['nm_kategori'];?> </option>
                        <?php } ?>
                        </select>
              </div>
              <div class="col-6 col-md-4">
                <div class="font-small-2 mt-1 mb-1">
                     Satuan Produk <a href="#" class="badge badge-dark" data-toggle="modal" data-target="#satuan">
                      <i class="fas fa-plus-circle"></i>Tambah</a>
                       </div>
                        <select class="select2 form-control" name="satuan">
    <?php error_reporting(0);           
        $ketQuery = "SELECT * FROM tabel_satuan_barang ORDER BY nm_satuan ASC";
        $executeSat = mysqli_query($koneksi, $ketQuery);
        while ($s=mysqli_fetch_array($executeSat)) {
    ?>                 
                      <option value="<?php echo $s['id_satuan'];?>"><?php echo $s['nm_satuan'];?></option>
                        <?php } ?>                 
                         </select>
              </div>
            </div>        
            <div class="row">
              <div class="col-6 col-md-4">
                <div class="font-small-2">Panjang</div>
                   <fieldset class="form-group position-relative has-icon-left input-divider-left">
                      <input type="text" name="" class="form-control" placeholder="Isi disini" />                     
                   <div class="form-control-position"><i class="fas fa-ruler-horizontal"></i>
                 </div>
                </fieldset>
              </div>
              <div class="col-6 col-md-4">
                <div class="font-small-2">Lebar</div>
                    <fieldset class="form-group position-relative has-icon-left input-divider-left">
                       <input type="text" name="" class="form-control" placeholder="Isi disini" />                     
                    <div class="form-control-position"><i class="fas fa-ruler-combined"></i>
                   </div>
                  </fieldset>
              </div>
              <div class="col-6 col-md-4">
                 <div class="font-small-2">Tinggi</div>
                    <fieldset class="form-group position-relative has-icon-left input-divider-left">
                        <input type="text" name="" class="form-control" placeholder="Isi disini" />                     
                     <div class="form-control-position"><i class="fas fa-ruler-vertical"></i>
                    </div>
                   </fieldset>
              </div>
              <div class="col-6 col-md-4">
                <div class="font-small-2">Warna</div>
                     <fieldset class="form-group position-relative has-icon-left input-divider-left">
                        <input type="text" name="" class="form-control" placeholder="Isi disini" />                     
                     <div class="form-control-position"><i class="fas fa-eye-dropper"></i>
                   </div>
                  </fieldset>
              </div>
              <div class="col-6 col-md-4">
                <div class="font-small-2">Type</div>
                     <fieldset class="form-group position-relative has-icon-left input-divider-left">
                        <input type="text" name="" class="form-control" placeholder="Isi disini" />                     
                     <div class="form-control-position"><i class="fas fa-tag"></i>
                   </div>
                  </fieldset>
              </div>
               <div class="col-6 col-md-4">
                <div class="font-small-2">Jumlah Stok</div>
                    <div class="d-inline-block mb-1">
                    <div class="input-group">
                      <input type="number" class="touchspin rounded-0" value="1">
                    </div>
                  </div>
              </div>
            </div> 
            <div class="row">
              <div class="col-12 col-md-4">
                 <div class="font-small-2 mb-1">Harga Beli Produk</div>
                     <fieldset class="form-group position-relative has-icon-left input-divider-left">
                        <input type="text" name="hargabeli" class="form-control" placeholder="Isi disini" />
                         <small class="counter-value float-right"><span class="char-count">Tanpa titik dan Rupiah</span></small>
                     <div class="form-control-position"><i class="feather icon-clipboard"></i>
                   </div>
                  </fieldset>
              </div>
              <div class="col-12 col-md-4">
                 <div class="font-small-2 mb-1">Harga Jual Produk</div>
                     <fieldset class="form-group position-relative has-icon-left input-divider-left">
                        <input type="text" name="hargabeli" class="form-control" placeholder="Isi disini" />
                         <small class="counter-value float-right"><span class="char-count">Tanpa titik dan Rupiah</span></small>
                     <div class="form-control-position"><i class="feather icon-clipboard"></i>
                   </div>
                  </fieldset>
              </div>
              <div class="col-12 col-md-4">
                  <div class="font-small-2 mb-1">Harga Grosir Produk</div>
                     <fieldset class="form-group position-relative has-icon-left input-divider-left">
                        <input type="text" name="hargabeli" class="form-control" placeholder="Isi disini" />
                         <small class="counter-value float-right"><span class="char-count">Tanpa titik dan Rupiah</span></small>
                     <div class="form-control-position"><i class="feather icon-clipboard"></i>
                   </div>
                  </fieldset>
              </div>
            </div>        
            <div class="row">
                <div class="col-12 mt-1">
                  <div class="font-small-2 mb-1">Deskripsi Produk anda</div>
                   <fieldset class="form-label-group mb-0">
                     <textarea data-length=100 class="form-control char-textarea" rows="3" name="" >Isi disini</textarea>
                   </fieldset>
                   <small class="counter-value float-right"><span class="char-count">maks.</span> / 100 karakter</small>
                 </div>
            </div>
         </div>
         <div class="modal-footer">
         			<input type="submit" name="" value="Upload" class="btn btn-primary rounded-0" />
                    <input type="reset" name="" value="Cancel" onClick="hide(0)" class="btn btn-danger rounded-0" />
           </form>
         </div>
       </div>
      </div>
     </div>
</div> 
<!---------------------------------------- Modal Produk------------------------------------>

