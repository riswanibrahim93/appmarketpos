 BEGIN: Content-->
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
                                    <li class="breadcrumb-item"><a href="#" class="text-dark">iPOS (Point Of Sale)</a>
                                    </li>                                   
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
                    
                    
<div class="row">
 <div class="col-lg-8 col-md-12 col-sm-12">
<!-- Data list view starts -->
  <section id="horizontal-vertical">
  <!-- dataTable starts -->
   <div class="card">
    <div class="row mt-2 p-1">
    	<div class="col-lg-6 col-6">
          <fieldset>
            <label for="basicInput">Gunakan Scanner Anda</label>
             <div class="input-group">
                 <input type="text" class="form-control" autofocus="autofocus" placeholder="Scan Here!" aria-describedby="button-addon2">
                    <div class="input-group-append" id="button-addon2">
                       <button class="btn btn-primary rounded-0" type="button"><i class="fas fa-qrcode"></i></button>
                    </div>
                 </div>
          </fieldset>        
        </div>
        <div class="col-lg-6 col-6">
        	<div class="form-group">
             <label for="basicInput">Gunakan Manual Pencarian</label>
              <select class="form-control select2" name="barang" id="barang" onchange="add_data()">
<?php error_reporting(0);           
   $ketQuery = "SELECT * FROM tabel_barang ORDER BY nm_barang ASC";
   $executeSat = mysqli_query($koneksi, $ketQuery);
   while ($a=mysqli_fetch_array($executeSat)) {
?>              
                   <option value="<?php echo $a['kd_barang'];?>"><?php echo $a['nm_barang'];?></option>
                   <?php } ?>
              </select>
           </div>
        </div>        
    </div>
     <div class="table-responsive p-1">
       <table class="table text-center table-striped" id="tableTransaksi">
          <thead>
            <tr>                                    
              <th>ID.BARANG</th>
              <th>PRODUK</th>
              <th>HARGA</th>
              <th>JUMLAH</th>
              <th>SUBTOTAL</th>
              <th>EDIT</th>
            </tr>
          </thead>
          <tbody>
            <tr id="tabel-contoh">                                    
              <td>-</td>
              <td>-</td>
              <td>-</td>
              <td>
              <!-- <form> -->
                 <div class="d-inline-block mb-1">
                   <div class="input-group">
                     <input type="number" class="touchspin rounded-0" value="1">
                   </div>
                 </div>
                <!-- </form>  -->
              </td>
              <!-- <td>-</td> -->
              <td>-</td>
              <td><a href="#" class="action-delete"><i class="far fa-trash-alt"></i></a></td>
            </tr>
            
                                
          </tbody>
        </table>
        <hr class="mt-2 mb-2">
        <table class="table">

          <tbody class="text-center">

            <tr class="footer-tr">

              <td>Disc</td>

              <td>0</td>

              <td>Total Barang</td>

              <td id="sum-product">0</td>

              <td>Total Harga</td>

              <td id="sum_price">Rp.0</td>

            </tr>

          </tbody>

        </table>
      </div>
   <!-- dataTable ends -->
  </div>
 </section>
<!-- Data list view end -->
 </div>
 <div class="col-lg-4 col-md-12 col-sm-12">
 	<div class="card">           
       <div class="content-body">
        <div class="card-body">
        	
          <div class="card">
            <div class="card-content">
               <div class="card-body">
                  <form class="form form-horizontal" method="post" action="index.php?menu=nota">
                      <div class="form-body">
                         <div class="row">
                              <div class="col-12 mb-2">
                                    <h3 class="display-4 text-center m-1"> No. Nota</h3>
                               </div> 
                                  
                              <div class="col-12">
                                 <div class="form-group row">
                                    <div class="col-md-4"><span>Total</span></div>
                                    <div class="col-md-8">
                                       <div class="position-relative has-icon-left">
                                           <input type="text" class="form-control" id="sum-price" name="" placeholder="Total">
                                         <div class="form-control-position"><i class="fas fa-tasks"></i></div>
                                       </div>
                                     </div>
                                  </div>
                                </div>
                                
                                <div class="col-12">
                                  <div class="form-group row">
                                     <div class="col-md-4"><span>Kembali</span></div>
                                       <div class="col-md-8">
                                          <div class="position-relative has-icon-left">
                                             <input type="text" class="form-control" id="change-price" name="" placeholder="Kembali">
                                            <div class="form-control-position"><i class="fas fa-money-bill-wave-alt"></i></div>
                                           </div>
                                         </div>
                                      </div>
                                  </div>
                                  
                                 <div class="col-12 mb-2">
                                  <fieldset>
                                    <label for="basicInput">Cash</label>
                                     <div class="input-group">
                                         <input type="text" id="kembalian" class="form-control" placeholder="Masukkan Jumlah Uang" aria-describedby="button-addon2">
                                            <div class="input-group-append" id="button-addon2">
                                               <button class="btn btn-primary rounded-0" type="button" onclick="hitung_kembalian()" >HITUNG</button>
                                            </div>
                                         </div>
                                  </fieldset>
                                  </div> 
                                  
                                                 
                                                    
                                  <div class="btn-group" role="group" aria-label="Basic example">
                                     <button type="submit" class="btn btn-primary rounded-0 mr-1 mb-1">Simpan</button>
                                     <button type="submit" class="btn btn-warning rounded-0 mr-1 mb-1">Diskon</button>
                                     <button type="reset" class="btn btn-danger rounded-0 mr-1 mb-1">Batal</button>
                                  </div>
                                </div>
                              </div>
                            </form>
                          </div>
                        </div>
                      </div>
                   </div>  
        
        </div>
       </div>
     </div>
 </div>
</div>         

  
 </div>
</div>
<script type="text/javascript">
  function add_data() {
    console.log($("#barang").val())

    $.ajax({

        type: "POST",

        url: "../aksi/kasir_add_to_table.php",

        // dataType: "html",

        data: {

            id_barang: $("#barang").val()

        },

        success: function(data) {
            // console.log(data)
            response = JSON.parse(data);
            console.log(response);

            var text =`<tr id="kode${response.kd_barang}">                                    
                        <td>${response.kd_barang}</td>
                        <td>${response.nm_barang}</td>
                        <td>${response.hrg_jual}</td>
                        <td>
                          <div class="d-inline-block mb-1">
                            <div class="input-group">
                              <input type="number" class="touchspin rounded-0" value="1" onchange="cek_jumlah()">
                            </div>
                          </div>
                        </td>
                        <td id="sum_harga">${response.hrg_jual}</td>
                        <td><a href="#" class="action-delete" onclick="delete_('${response.kd_barang}')"><i class="far fa-trash-alt"></i></a></td>
                      </tr>`;
            $("#tabel-contoh").remove();

            $("#tableTransaksi > tbody ").append(text);

            // $("#barang").val("1");

            cek_jumlah();

            set_jumlah();

        }

    });
  }

  function delete_(id){
    console.log("kode"+id)
    $("#kode"+id).remove();

    cek_jumlah();

    set_jumlah();
  }

  function cek_jumlah() {

      $("#tableTransaksi tr").each(function(i) {

          var self = $(this);

          var col_3 = self.find("td:eq(2)").text().trim();

          var col_4 = self.find("td:eq(3) input[type='number']").val();

          var jumlah = parseInt(col_3) * parseInt(col_4);

          if (i > 0) {

              var col_5 = self.find("td:eq(4)").text(jumlah);

          }

      });

      set_jumlah();

  }



  function set_jumlah() {

      var totalHarga = 0;

      var jumlah = 0;

      var jumlahBarang = 0;

      $("#tableTransaksi tr").each(function(i) {

          var self = $(this);

          var col_3 = self.find("td:eq(2)").text().trim();

          var col_4 = self.find("td:eq(3) input[type='number']").val();

          if (i > 0) {

              jumlah = parseInt(col_3) * parseInt(col_4);

              var col_5 = self.find("td:eq(4)").text(jumlah);

              jumlahBarang = jumlahBarang + parseInt(col_4);

          }

          totalHarga = totalHarga + jumlah;

      });

      $("#sum_price").text("Rp." + totalHarga);

      $("#sum-product").text(jumlahBarang);

      hitung_kembalian();

  }



  function hitung_kembalian() {

    var bayar = $("#kembalian").val();

    var totalBayar = $("#sum_price").text();

    var kembalian = bayar - totalBayar.substr(3);

    $("#change-price").val(kembalian);

    $("#kembalian").val("");

    $("#sum-price").val("Rp." + bayar);

  }

</script>
<!-- END: Content