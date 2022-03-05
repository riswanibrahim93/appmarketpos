<style type="text/css" media="print">

@page {

    size: auto;   /* auto is the initial value */

    margin: 0;  /* this affects the margin in the printer settings */

}

</style>

<?php

    session_start();

    include "../inc/koneksi.php";

    $kd_toko = $_SESSION['kd_toko'];    
    $no_faktur    = $_GET['faktur'];
    $bayar    = $_GET['bayar'];

    $selectDataToko = mysqli_query($koneksi, "SELECT * FROM tabel_toko where kd_toko = '$kd_toko'");

    $namaToko       = "";

    $alamatToko     = "";

    $teleponToko    = "";

    if ($selectDataToko) {

        while ($dataToko = mysqli_fetch_array($selectDataToko)) {

            $namaToko       = $dataToko['nm_toko'];

            $alamatToko     = $dataToko['almt_toko'];

            $teleponToko    = $dataToko['tlp_toko'];

        }

    }else {

        echo $koneksi->error;

    }

?>

<div style="width: 6cm; padding: 0 0.5cm; font-size: 14px;">

    <p style="text-align: center; margin: 0; padding-top: 2cm;">

        <?php

            echo strtoupper($namaToko);

        ?>

    </p>

    <p style="text-align: center; margin: 0;">

        <?php

            echo strtoupper($alamatToko);

        ?>

    </p>

    <p style="text-align: center; margin: 0; padding-bottom: 10px;">

        <?php

            echo "TELP.".strtoupper($teleponToko);

        ?>

    </p>

    <hr style="border: dashed 1px black;">

    <hr style="border: dashed 1px black;">

    <?php
        $query = "SELECT * FROM `tabel_penjualan` INNER JOIN tabel_rinci_penjualan WHERE tabel_penjualan.no_faktur_penjualan = tabel_rinci_penjualan.no_faktur_penjualan AND tabel_penjualan.no_faktur_penjualan = '$no_faktur'";

        $selectDataBarang = mysqli_query($koneksi, $query);

        ?>

    <table border="0" style="width: 100%;">

        <?php

            $jumlahBarang   = mysqli_num_rows($selectDataBarang);

            $total = "";

            $grand_total = "";

            $pengiriman = "";

            if ($selectDataBarang) {

                while ($dataBarang = mysqli_fetch_array($selectDataBarang)) {

                    $kd_barang = $dataBarang['kd_barang'];

                    $subtotal = $dataBarang['harga'] * $dataBarang['jumlah'];
                    $query = "SELECT * FROM `tabel_barang` WHERE `kd_barang` = '$kd_barang'";

                    $hasil = mysqli_fetch_array(mysqli_query($koneksi, $query));

                    $total = $dataBarang['total_penjualan'];

                    $grand_total = $dataBarang['total_biaya'];

                    $pengiriman = $dataBarang['biaya_pengiriman'];

                    ?>

                    <tr>

                        <td style="text-align: left;"><?php echo $hasil['nm_barang']?></td>

                        <td style="text-align: right;"><?php echo $dataBarang['harga']?></td>

                        <td style="text-align: center;"><?php echo $dataBarang['jumlah']?></td>

                        <td style="text-align: right;"><?php echo $dataBarang['sub_total_jual']?></td>

                    </tr>

                    <?php

                }

            }



        ?>

    </table>

    <hr>

    <table border="0" style="width: 100%; font-size: 12px;" >

        <tr>

            <td style="text-align: left;">Total Qty</td>

            <td style="text-align: center;">:</td>

            <td style="text-align: left;"><?php echo $jumlahBarang?></td>

            <td style="text-align: right;"></td>

        </tr>

        <tr>

            <td style="text-align: left;">Total</td>

            <td style="text-align: center;">:</td>

            <td style="text-align: center;"></td>

            <td style="text-align: right;"><?php echo $total;?></td>

        </tr>

        <tr>

            <td style="text-align: left;">Pengiriman</td>

            <td style="text-align: center;">:</td>

            <td style="text-align: center;"></td>

            <td style="text-align: right;">
                <?php 
                    if($pengiriman != null){
                        echo $pengiriman;
                    }
                    else{
                        echo "0";
                    }
                ?>  
            </td>

        </tr>

        <tr>

            <td style="text-align: left;">Grand Total</td>

            <td style="text-align: center;">:</td>

            <td style="text-align: center;"></td>

            <td style="text-align: right;"><?php echo $grand_total;?></td>

        </tr>

        <tr>

            <td style="text-align: left;">Pembayaran</td>

            <td style="text-align: center;">:</td>

            <td style="text-align: left;"></td>

            <td style="text-align: right;"><?php echo $bayar?></td>

        </tr>

        <tr>

            <td style="text-align: left;">Kembali</td>

            <td style="text-align: center;">:</td>

            <td style="text-align: left;"></td>

            <td style="text-align: right;">
                <?php
                    echo intval($bayar)-intval($grand_total);
                ?>   
            </td>

        </tr>

        <tr>

            <td style="text-align: left;">Cara Bayar</td>

            <td style="text-align: center;">:</td>

            <td style="text-align: left;">Kas</td>

            <td style="text-align: right;"></td>

        </tr>

        <tr>

            <td style="text-align: left;">Kasir</td>

            <td style="text-align: center;">:</td>

            <td style="text-align: left;"><?php echo $_SESSION['nm_user'];?></td>

            <td style="text-align: right;"><?php echo date("d-m-Y")?></td>

        </tr>

    </table>

    <hr style="border: dashed 1px black;">

    <p style="margin: 0; text-align: center; font-size: 10px;">

        TERIMA KASIH ATAS KUNJUNGAN ANDA 

    </p>

    <br>

    <P style="margin: 0; text-align: center; font-size: 12px;">

        Barang yang sudah dibeli tidak dapat

        <br>

        ditukar/dikembalikan

    </P>

</div>

<script>

    window.print();

</script>