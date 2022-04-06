@extends('layouts.frontendapp')

@section('title', 'All Products')

@section('content')
    <!-- main body - start
                                                                                                        ================================================== -->
    <main>

        <!-- sidebar cart - start  1:04 min
                                                                                                            ================================================== -->
        <div class="sidebar-menu-wrapper">
            <div class="cart_sidebar">
                <button type="button" class="close_btn"><i class="fal fa-times"></i></button>
                <ul class="cart_items_list ul_li_block mb_30 clearfix">
                    <li>
                        <div class="item_image">
                            <img src="assets/images/cart/cart_img_1.jpg" alt="image_not_found">
                        </div>
                        <div class="item_content">
                            <h4 class="item_title">Yellow Blouse</h4>
                            <span class="item_price">$30.00</span>
                        </div>
                        <button type="button" class="remove_btn"><i class="fal fa-trash-alt"></i></button>
                    </li>
                    <li>
                        <div class="item_image">
                            <img src="assets/images/cart/cart_img_2.jpg" alt="image_not_found">
                        </div>
                        <div class="item_content">
                            <h4 class="item_title">Yellow Blouse</h4>
                            <span class="item_price">$30.00</span>
                        </div>
                        <button type="button" class="remove_btn"><i class="fal fa-trash-alt"></i></button>
                    </li>
                    <li>
                        <div class="item_image">
                            <img src="assets/images/cart/cart_img_3.jpg" alt="image_not_found">
                        </div>
                        <div class="item_content">
                            <h4 class="item_title">Yellow Blouse</h4>
                            <span class="item_price">$30.00</span>
                        </div>
                        <button type="button" class="remove_btn"><i class="fal fa-trash-alt"></i></button>
                    </li>
                </ul>

                <ul class="total_price ul_li_block mb_30 clearfix">
                    <li>
                        <span>Subtotal:</span>
                        <span>$90</span>
                    </li>
                    <li>
                        <span>Vat 5%:</span>
                        <span>$4.5</span>
                    </li>
                    <li>
                        <span>Discount 20%:</span>
                        <span>- $18.9</span>
                    </li>
                    <li>
                        <span>Total:</span>
                        <span>$75.6</span>
                    </li>
                </ul>
                <ul class="btns_group ul_li_block clearfix">
                    <li><a class="btn btn_primary" href="cart.html">View Cart</a></li>
                    <li><a class="btn btn_secondary" href="checkout.html">Checkout</a></li>
                </ul>
            </div>
            <div class="cart_overlay"></div>
        </div>
        <!-- sidebar cart - end
                                                                                                            ================================================== -->

        <!-- product quick view modal - start
                                                                                                            ================================================== -->
        <div class="modal fade" id="quickview_popup" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2"
            tabindex="-1">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalToggleLabel2">Product Quick View</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="product_details">
                            <div class="container">
                                <div class="row">
                                    <div class="col col-lg-6">
                                        <div class="product_details_image p-0">
                                            <img src="assets/images/shop/product_img_12.png" alt>
                                        </div>
                                    </div>

                                    <div class="col-lg-6">
                                        <div class="product_details_content">
                                            <h2 class="item_title">Macbook Pro</h2>
                                            <p>
                                                It is a long established fact that a reader will be distracted eget velit.
                                                Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget
                                                sagittis vulputate
                                            </p>
                                            <div class="item_review">
                                                <ul class="rating_star ul_li">
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                </ul>
                                                <span class="review_value">3 Rating(s)</span>
                                            </div>
                                            <div class="item_price">
                                                <span>$620.00</span>
                                                <del>$720.00</del>
                                            </div>
                                            <hr>
                                            <div class="item_attribute">
                                                <h3 class="title_text">Options <span class="underline"></span></h3>
                                                <form action="#">
                                                    <div class="row">
                                                        <div class="col col-md-6">
                                                            <div class="select_option clearfix">
                                                                <h4 class="input_title">Size *</h4>
                                                                <select>
                                                                    <option data-display="- Please select -">Choose A Option
                                                                    </option>
                                                                    <option value="1">Some option</option>
                                                                    <option value="2">Another option</option>
                                                                    <option value="3" disabled>A disabled option</option>
                                                                    <option value="4">Potato</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col col-md-6">
                                                            <div class="select_option clearfix">
                                                                <h4 class="input_title">Color *</h4>
                                                                <select>
                                                                    <option data-display="- Please select -">Choose A Option
                                                                    </option>
                                                                    <option value="1">Some option</option>
                                                                    <option value="2">Another option</option>
                                                                    <option value="3" disabled>A disabled option</option>
                                                                    <option value="4">Potato</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <span class="repuired_text">Repuired Fiields *</span>
                                                </form>
                                            </div>

                                            <div class="quantity_wrap">
                                                <form action="#">
                                                    <div class="quantity_input">
                                                        <button type="button" class="input_number_decrement">
                                                            <i class="fal fa-minus"></i>
                                                        </button>
                                                        <input class="input_number" type="text" value="1">
                                                        <button type="button" class="input_number_increment">
                                                            <i class="fal fa-plus"></i>
                                                        </button>
                                                    </div>
                                                </form>
                                                <div class="total_price">
                                                    Total: $620,99
                                                </div>
                                            </div>

                                            <ul class="default_btns_group ul_li">
                                                <li><a class="addtocart_btn" href="#!">Add To Cart</a></li>
                                                <li><a href="#!"><i class="far fa-compress-alt"></i></a></li>
                                                <li><a href="#!"><i class="fas fa-heart"></i></a></li>
                                            </ul>

                                            <ul class="default_share_links ul_li">
                                                <li>
                                                    <a class="facebook" href="#!">
                                                        <span><i class="fab fa-facebook-square"></i> Like</span>
                                                        <small>10K</small>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="twitter" href="#!">
                                                        <span><i class="fab fa-twitter-square"></i> Tweet</span>
                                                        <small>15K</small>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="google" href="#!">
                                                        <span><i class="fab fa-google-plus-square"></i> Google+</span>
                                                        <small>20K</small>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="share" href="#!">
                                                        <span><i class="fas fa-plus-square"></i> Share</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- product quick view modal - end
                                                                                                            ================================================== -->

        <!-- breadcrumb_section - start
                                                                                                            ================================================== -->
        <div class="breadcrumb_section">
            <div class="container">
                <ul class="breadcrumb_nav ul_li">
                    <li><a href="index.html">Home</a></li>
                    <li>Product Grid</li>
                </ul>
            </div>
        </div>
        <!-- breadcrumb_section - end
                                                                                                            ================================================== -->

        <!-- product_section - start
                                                                                                            ================================================== -->
        <section class="product_section section_space">
            <h2 class="hidden">Product sidebar</h2>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <aside class="sidebar_section p-0 mt-0">
                            <div class="sb_widget sb_category">
                                <h3 class="sb_widget_title">Categories</h3>
                                <ul class="sb_category_list ul_li_block">
                                    <li>
                                        <a href="#!">Official electronic <span></span></a>
                                    </li>
                                    <li>
                                        <a href="#!">Dell <span>(1375)</span></a>
                                    </li>
                                    <li>
                                        <a href="#!">Asus <span>(1687)</span></a>
                                    </li>
                                </ul>
                            </div>

                            <div class="sb_widget">
                                <h3 class="sb_widget_title">Your Filter</h3>
                                <div class="filter_sidebar">
                                    <div class="fs_widget">
                                        <h3 class="fs_widget_title">Category</h3>
                                        <form action="#">
                                            <div class="select_option clearfix">
                                                <select>
                                                    <option data-display="Select Category">Select Your Option</option>
                                                    <option value="1" selected>HP</option>
                                                    <option value="2">HP</option>
                                                    <option value="3">HP</option>
                                                </select>
                                            </div>
                                        </form>
                                    </div>

                                    <div class="fs_widget">
                                        <h3 class="fs_widget_title">Manufacturer</h3>
                                        <form action="#">
                                            <ul class="fs_brand_list ul_li_block">
                                                <li>
                                                    <div class="checkbox_item">
                                                        <input id="apple_brand" type="checkbox" name="brand_checkbox" />
                                                        <label for="apple_brand">Apple <span>(19)</span></label>
                                                    </div>
                                                </li>
                                                {{-- <li>
                                                    <div class="checkbox_item">
                                                        <input id="asus_brand" type="checkbox" name="brand_checkbox" />
                                                        <label for="asus_brand">Asus <span>(1)</span></label>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="checkbox_item">
                                                        <input id="bank_oluvsen_brand" type="checkbox"
                                                            name="brand_checkbox" />
                                                        <label for="bank_oluvsen_brand">Bank & Oluvsen
                                                            <span>(1)</span></label>
                                                    </div>
                                                </li> --}}
                                            </ul>
                                        </form>
                                    </div>

                                    <div class="fs_widget">
                                        <h3 class="fs_widget_title">Filter by Color</h3>
                                        <ul class="filter_memory_list ul_li_block">
                                            <li>
                                                <a href="#!">Red <span>(12)</span></a>
                                            </li>
                                            {{-- <li>
                                                <a href="#!">Green<span>(12)</span></a>
                                            </li>
                                            <li>
                                                <a href="#!">Blue<span>(6)</span></a>
                                            </li>
                                            <li>
                                                <a href="#!">Yellow<span>(7)</span></a>
                                            </li>
                                            <li>
                                                <a href="#!">Black<span>(9)</span></a>
                                            </li> --}}
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>

                    <div class="col-lg-9">
                        <div class="filter_topbar">
                            <div class="row align-items-center">
                                <div class="col col-md-4">
                                    <ul class="layout_btns nav" role="tablist">
                                        <li>
                                            <button class="active" data-bs-toggle="tab" data-bs-target="#home"
                                                type="button" role="tab" aria-controls="home" aria-selected="true"><i
                                                    class="fal fa-bars"></i></button>
                                        </li>
                                        <li>
                                            <button data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab"
                                                aria-controls="profile" aria-selected="false">
                                                <i class="fal fa-th-large"></i>
                                            </button>
                                        </li>
                                    </ul>
                                </div>

                                <div class="col col-md-4">
                                    <form action="#">
                                        <div class="select_option clearfix">
                                            <select>
                                                <option data-display="Defaul Sorting">Select Your Option</option>
                                                <option value="1">Sorting By Name</option>
                                                {{-- <option value="2">Sorting By Price</option>
                                                <option value="3">Sorting By Size</option> --}}
                                            </select>
                                        </div>
                                    </form>
                                </div>

                                <div class="col col-md-4">
                                    <div class="result_text">Showing 1-12 of 30 relults</div>
                                </div>
                            </div>
                        </div>

                        <hr />

                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="home" role="tabpanel">
                                <div class="shop-product-area shop-product-area-col">
                                    <div class="product-area shop-grid-product-area clearfix">
                                        @forelse ($products as $product)
                                            <div class="grid">
                                                <div class="product-pic">
                                                    <img src="{{ asset('storage/products/' . $product->photo) }}"
                                                        alt="{{ $product->title }}" />
                                                    <div class="actions">
                                                        <ul>
                                                            <li>
                                                                <a href="#">

                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">

                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a class="quickview_btn" data-bs-toggle="modal"
                                                                    href="#quickview_popup" role="button" tabindex="0">
                                                                    <i class="fas fa-eye"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="details">
                                                    <h4><a href="#">{{ $product->title }}</a></h4>
                                                    <p><a href="#">{{ $product->short_description }}</a></p>
                                                    <div class="rating">
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star-half-alt"></i>
                                                    </div>
                                                    <span class="price">
                                                        <ins>
                                                            <span class="woocommerce-Price-amount amount">
                                                                <bdi> <span
                                                                        class="woocommerce-Price-currencySymbol">$</span>{{ $product->sale_price }}</bdi>
                                                            </span>
                                                        </ins>
                                                        <del aria-hidden="true">
                                                            <span class="woocommerce-Price-amount amount">
                                                                <bdi> <span
                                                                        class="woocommerce-Price-currencySymbol">$</span>{{ $product->price }}</bdi>
                                                            </span>
                                                        </del>
                                                    </span>

                                                    <div class="add-cart-area">
                                                        <a href="{{ route('frontend.shop.single', $product->slug) }}"
                                                            class="add-to-cart">Add to cart</a>
                                                    </div>
                                                </div>
                                            </div>
                                        @empty
                                        @endforelse

                                    </div>
                                </div>

                                <div class="pagination_wrap">
                                    {{ $products->links() }}
                                    {{-- <ul class="pagination_nav">
                                        <li class="active"><a href="#!">01</a></li>
                                        <li><a href="#!">02</a></li>
                                        <li><a href="#!">03</a></li>
                                        <li class="prev_btn">
                                            <a href="#!"><i class="fal fa-angle-left"></i></a>
                                        </li>
                                        <li class="next_btn">
                                            <a href="#!"><i class="fal fa-angle-right"></i></a>
                                        </li>
                                    </ul> --}}
                                </div>
                            </div>

                            <div class="tab-pane fade" id="profile" role="tabpanel">
                                <div class="product_layout2_wrap">
                                    <div class="product-area-row">
                                        <div class="grid clearfix">
                                            <div class="product-pic">
                                                <img src="assets/images/shop/product-img-24.png" alt />
                                                <span class="theme-badge-2">25% off</span>
                                                <div class="actions">
                                                    <ul>
                                                        <li>
                                                            <a href="#">

                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">

                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a class="quickview_btn" data-bs-toggle="modal"
                                                                href="#quickview_popup" role="button" tabindex="0">
                                                                <i class="fas fa-eye"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="details">
                                                <h4><a href="#">Imac 29"</a></h4>
                                                <p><a href="#">Apple iMac 29″ Laptop with Touch ID for you </a></p>
                                                <div class="rating">
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star-half-alt"></i>
                                                </div>
                                                <span class="price">
                                                    <ins>
                                                        <span class="woocommerce-Price-amount amount">
                                                            <bdi> <span
                                                                    class="woocommerce-Price-currencySymbol">$</span>471.48
                                                            </bdi>
                                                        </span>
                                                    </ins>
                                                    <del aria-hidden="true">
                                                        <span class="woocommerce-Price-amount amount">
                                                            <bdi> <span
                                                                    class="woocommerce-Price-currencySymbol">$</span>904.21
                                                            </bdi>
                                                        </span>
                                                    </del>
                                                </span>
                                                <div class="add-cart-area">
                                                    <button class="add-to-cart">Add to cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="pagination_wrap">
                                    <ul class="pagination_nav">
                                        {{-- <li class="active"><a href="#!">01</a></li>
                                        <li><a href="#!">02</a></li>
                                        <li><a href="#!">03</a></li>
                                        <li class="prev_btn">
                                            <a href="#!"><i class="fal fa-angle-left"></i></a>
                                        </li>
                                        <li class="next_btn">
                                            <a href="#!"><i class="fal fa-angle-right"></i></a>
                                        </li> --}}
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- product_section - end
                                                                                                            ================================================== -->
    @endsection
