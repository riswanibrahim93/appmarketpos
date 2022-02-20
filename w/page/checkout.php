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
                                    <li class="breadcrumb-item"><a href="#" class="text-dark">Checkout</a>
                                    </li>                                   
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>                
            </div>
            <div class="content-body">
            <!-- Form wizard with icon tabs section start -->
             <section id="icon-tabs">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">                               
                                <div class="card-content">
                                    <div class="card-body">                                       
                                        <form action="#" class="icons-tab-steps wizard-circle">

                                            <!-- Step 1 -->
                                            <h6><i class="step-icon fas fa-luggage-cart"></i> Keranjang</h6>
                                            <fieldset class="checkout-step-1 px-0">
                                                <section id="place-order" class="list-view product-checkout">
                                                    <div class="checkout-items">
                                                        
                                                        <div class="card ecommerce-card">
                                                            <div class="card-content">
                                                                <div class="item-img text-center">
                                                                    <a href="index.php?menu=detail">
                                                                        <img src="../app-assets/images/pages/eCommerce/9.png">
                                                                    </a>
                                                                </div>
                                                                <div class="card-body">
                                                                    <div class="item-name">
                                                                        <a href="index.php?menu=detail">Amazon - Fire TV Stick with Alexa Voice Remote - Black</a>   
                                                                        <p class="stock-status-in">In Stock</p>
                                                                    </div>
                                                                    <div class="item-quantity">
                                                                        <p class="quantity-title">Quantity</p>
                                                                        <div class="input-group quantity-counter-wrapper">
                                                                            <input type="text" class="quantity-counter" value="1">
                                                                        </div>
                                                                    </div>
                                                                    <p class="delivery-date">Delivery by, Wed Apr 25</p>
                                                                    <p class="offers">17% off 4 offers Available</p>
                                                                </div>
                                                                <div class="item-options text-center">
                                                                    <div class="item-wrapper">
                                                                        <div class="item-rating">
                                                                            <div class="badge badge-primary badge-md">
                                                                                4 <i class="feather icon-star ml-25"></i>
                                                                            </div>
                                                                        </div>
                                                                        <div class="item-cost">
                                                                            <h6 class="item-price">
                                                                                $39.99
                                                                            </h6>
                                                                            <p class="shipping">
                                                                                <i class="feather icon-shopping-cart"></i> Free Shipping
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="wishlist remove-wishlist">
                                                                        <i class="feather icon-x align-middle"></i> Remove
                                                                    </div>
                                                                    <div class="cart remove-wishlist rounded-0">
                                                                        <i class="fa fa-heart-o mr-25"></i> Wishlist
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>    
                                                        
                                                        
                                                    <div class="checkout-options">
                                                        <div class="card">
                                                            <div class="card-content">
                                                                <div class="card-body">
                                                                    <p class="options-title">Options</p>
                                                                    <div class="coupons">
                                                                        <div class="coupons-title">
                                                                            <p>Coupons</p>
                                                                        </div>
                                                                        <div class="apply-coupon">
                                                                            <p>Apply</p>
                                                                        </div>
                                                                    </div>
                                                                    <hr>
                                                                    <div class="price-details">
                                                                        <p>Price Details</p>
                                                                    </div>
                                                                    <div class="detail">
                                                                        <div class="detail-title">
                                                                            Total MRP
                                                                        </div>
                                                                        <div class="detail-amt">
                                                                            $598
                                                                        </div>
                                                                    </div>
                                                                    <div class="detail">
                                                                        <div class="detail-title">
                                                                            Bag Discount
                                                                        </div>
                                                                        <div class="detail-amt discount-amt">
                                                                            -25$
                                                                        </div>
                                                                    </div>
                                                                    <div class="detail">
                                                                        <div class="detail-title">
                                                                            Estimated Tax
                                                                        </div>
                                                                        <div class="detail-amt">
                                                                            $1.3
                                                                        </div>
                                                                    </div>
                                                                    <div class="detail">
                                                                        <div class="detail-title">
                                                                            EMI Eligibility
                                                                        </div>
                                                                        <div class="detail-amt emi-details">
                                                                            Details
                                                                        </div>
                                                                    </div>
                                                                    <div class="detail">
                                                                        <div class="detail-title">
                                                                            Delivery Charges
                                                                        </div>
                                                                        <div class="detail-amt discount-amt">
                                                                            Free
                                                                        </div>
                                                                    </div>
                                                                    <hr>
                                                                    <div class="detail">
                                                                        <div class="detail-title detail-total">Total</div>
                                                                        <div class="detail-amt total-amt">$574</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </section>
                                            </fieldset>

                                            <!-- Step 2 -->
                                            <h6><i class="step-icon fas fa-map-marker-alt"></i> Pengiriman</h6>
                                            <fieldset>
                                                <section id="checkout-address" class="list-view product-checkout">
                                                    <div class="card">
                                                        <div class="card-header flex-column align-items-start">
                                                            <h4 class="card-title">Tambah Alamat Pengiriman</h4>
                                                            <p class="text-muted mt-25">Pastikan untuk mencentang "Kirim ke alamat ini" setelah Anda selesai</p>
                                                        </div>
                                                        <div class="card-content">
                                                            <div class="card-body">
                                                                <div class="row">
                                                                    <div class="col-md-6 col-sm-12">
                                                                        <div class="form-group">
                                                                            <label for="checkout-name">Nama penerima</label>
                                                                            <input type="text" class="form-control" name="">
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 col-sm-12">
                                                                        <div class="form-group">
                                                                            <label for="checkout-number">No.Handphone:</label>
                                                                            <input type="number" class="form-control" name="">
                                                                        </div>
                                                                    </div>
                                                                    
                                                                    <div class="col-md-6 col-sm-12">
                                                                        <div class="form-group">
                                                                            <label for="checkout-landmark">Alamat Lengkap</label>
                                                                            <input type="text" class="form-control" name="">
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 col-sm-12">
                                                                        <div class="form-group">
                                                                            <label for="checkout-city">Kota</label>
                                                                            <input type="text" class="form-control" name="">
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-6 offset-md-6">
                                                                        <div class="btn btn-primary rounded-0 float-right">
                                                                            SIMPAN
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="customer-card">
                                                        <div class="card">
                                                            <div class="card-header">
                                                                <h4 class="card-title">John Doe</h4>
                                                            </div>
                                                            <div class="card-content">
                                                                <div class="card-body actions">
                                                                    <p class="mb-0">9447 Glen Eagles Drive</p>
                                                                    <p>Lewis Center, OH 43035</p>
                                                                    <p>UTC-5: Eastern Standard Time (EST) </p>
                                                                    <p>202-555-0140</p>
                                                                    <hr>
                                                                    <div class="btn btn-primary btn-block rounded-0">KIRIM DI ALAMAT YANG SAMA</div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </section>
                                            </fieldset>

                                            <!-- Step 3 -->
                                            <h6><i class="step-icon fas fa-credit-card"></i> Pembayaran</h6>
                                            <fieldset>
                                                <section id="checkout-payment" class="list-view product-checkout">
                                                    <div class="payment-type">
                                                        <div class="card">
                                                            <div class="card-header flex-column align-items-start">
                                                                <h4 class="card-title">Payment options</h4>
                                                                <p class="text-muted mt-25">Be sure to click on correct payment option</p>
                                                            </div>
                                                            <div class="card-content">
                                                                <div class="card-body">
                                                                    <div class="d-flex justify-content-between flex-wrap">
                                                                        <div class="vs-radio-con vs-radio-primary">
                                                                            <input type="radio" name="vueradio" checked="" value="false">
                                                                            <span class="vs-radio">
                                                                                <span class="vs-radio--border"></span>
                                                                                <span class="vs-radio--circle"></span>
                                                                            </span>
                                                                            <img src="../img/payment/bank.png" alt="img-placeholder" height="80">
                                                                        </div>
                                                                        <div class="card-holder-name mt-75">
                                                                            John Doe
                                                                        </div>
                                                                        <div class="card-expiration-date mt-75">
                                                                            11/2020
                                                                        </div>
                                                                    </div>
                                                                    <div class="customer-cvv mt-1">
                                                                        <div class="form-inline">
                                                                            <label class="mb-50" for="card-holder-cvv">Enter CVV:</label>
                                                                            <input type="number" class="form-control ml-75 mb-50 input-cvv" id="card-holder-cvv">
                                                                            <div class="btn btn-primary btn-cvv ml-50 mb-50">Continue</div>
                                                                        </div>
                                                                    </div>
                                                                    <hr class="my-2">
                                                                    <ul class="other-payment-options list-unstyled">
                                                                        <li>
                                                                            <div class="vs-radio-con vs-radio-primary py-25">
                                                                                <input type="radio" name="vueradio" value="false">
                                                                                <span class="vs-radio">
                                                                                    <span class="vs-radio--border"></span>
                                                                                    <span class="vs-radio--circle"></span>
                                                                                </span>
                                                                                <span>
                                                                                    Credit / Debit / ATM Card
                                                                                </span>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="vs-radio-con vs-radio-primary py-25">
                                                                                <input type="radio" name="vueradio" value="false">
                                                                                <span class="vs-radio">
                                                                                    <span class="vs-radio--border"></span>
                                                                                    <span class="vs-radio--circle"></span>
                                                                                </span>
                                                                                <span>
                                                                                    Net Banking
                                                                                </span>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="vs-radio-con vs-radio-primary py-25">
                                                                                <input type="radio" name="vueradio" value="false">
                                                                                <span class="vs-radio">
                                                                                    <span class="vs-radio--border"></span>
                                                                                    <span class="vs-radio--circle"></span>
                                                                                </span>
                                                                                <span>
                                                                                    EMI (Easy Installment)
                                                                                </span>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="vs-radio-con vs-radio-primary py-25">
                                                                                <input type="radio" name="vueradio" value="false">
                                                                                <span class="vs-radio">
                                                                                    <span class="vs-radio--border"></span>
                                                                                    <span class="vs-radio--circle"></span>
                                                                                </span>
                                                                                <span>
                                                                                    Cash On Delivery
                                                                                </span>
                                                                            </div>
                                                                        </li>
                                                                    </ul>
                                                                    <hr>
                                                                    <div class="gift-card">
                                                                        <p><i class="feather icon-plus-square mr-25 font-medium-5"></i>
                                                                            Add Gift Card
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="amount-payable checkout-options">
                                                        <div class="card">
                                                            <div class="card-header">
                                                                <h4 class="card-title">Price Details</h4>
                                                            </div>
                                                            <div class="card-content">
                                                                <div class="card-body">
                                                                    <div class="detail">
                                                                        <div class="details-title">
                                                                            Price of 3 items
                                                                        </div>
                                                                        <div class="detail-amt">
                                                                            <strong>$699.30</strong>
                                                                        </div>
                                                                    </div>
                                                                    <div class="detail">
                                                                        <div class="details-title">
                                                                            Delivery Charges
                                                                        </div>
                                                                        <div class="detail-amt discount-amt">
                                                                            Free
                                                                        </div>
                                                                    </div>
                                                                    <hr>
                                                                    <div class="detail">
                                                                        <div class="details-title">
                                                                            Amount Payable
                                                                        </div>
                                                                        <div class="detail-amt total-amt">$699.30</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </section>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- Form wizard with icon tabs section end -->
            </div>
        </div>
    </div>
    <!-- END: Content-->