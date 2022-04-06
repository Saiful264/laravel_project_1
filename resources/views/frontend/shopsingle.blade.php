@extends('layouts.frontendapp')

@section('title', $product->title)

@section('content')
    <!-- breadcrumb_section - start
                                                                                                                                                                                                                                                                                                                                                    ================================================== -->
    <div class="breadcrumb_section">
        <div class="container">
            <ul class="breadcrumb_nav ul_li">
                <li><a href="{{ route('frontend.home') }}">Home</a></li>
                <li><a href="{{ route('frontend.shop') }}">Shop</a></li>
                <li>{{ $product->title }}</li>
            </ul>
        </div>
    </div>
    <!-- breadcrumb_section - end
                                                                                                                                                                                                                                                                                                                                                    ================================================== -->

    <!-- product_details - start
                                                                                                                                                                                                                                                                                                                                                    ================================================== -->
    <section class="product_details section_space pb-0">
        <div class="container">
            <div class="row">
                <div class="col col-lg-6">
                    <div class="product_details_image">
                        <div class="details_image_carousel">
                            @foreach ($product->galleries as $gallery)
                                <div class="slider_item">
                                    <img src="{{ asset('storage/gallery/' . $gallery->photo) }}"
                                        alt="{{ $product->title }}">
                                </div>
                            @endforeach
                        </div>

                        <div class="details_image_carousel_nav">
                            @foreach ($product->galleries as $gallery)
                                <div class="slider_item">
                                    <img src="{{ asset('storage/gallery/' . $gallery->photo) }}"
                                        alt="{{ $product->title }}">
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="product_details_content">
                        <h2 class="item_title">{{ $product->title }}</h2>
                        <p>{{ $product->short_description }}</p>
                        {{-- <div class="item_review">
                            <ul class="rating_star ul_li">
                                <li><i class="fas fa-star"></i>></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star-half-alt"></i></li>
                            </ul>
                            <span class="review_value">3 Rating(s)</span>
                        </div> --}}

                        <div class="item_price">
                            <span>${{ $product->sale_price }}</span>
                            <del>${{ $product->price }}</del>
                        </div>
                        <hr>

                        <div class="item_attribute">
                            <form action="#">
                                <div class="row">
                                    <div class="col col-md-6">
                                        <div class="select_option clearfix">
                                            <h4 class="input_title">Size *</h4>
                                            <select>
                                                <option selected disabled>Choose A Option</option>
                                                @foreach ($product->sizes as $size)
                                                    <option value="{{ $size->id }}">{{ $size->name }}</option>
                                                @endforeach

                                            </select>
                                        </div>
                                    </div>
                                    <div class="col col-md-6">
                                        <div class="select_option clearfix">
                                            <h4 class="input_title">Color *</h4>
                                            <select>
                                                <option selected disabled>Choose A Option</option>
                                                @foreach ($product->colors as $color)
                                                    <option value="{{ $color->id }}">{{ $color->name }}</option>
                                                @endforeach


                                            </select>
                                        </div>
                                    </div>
                                </div>
                        </div>

                        <div class="quantity_wrap">
                            <div class="quantity_input">
                                <button type="button" class="input_number_decrement">
                                    <i class="fal fa-minus"></i>
                                </button>
                                <input class="input_number" type="text" value="1">
                                <button type="button" class="input_number_increment">
                                    <i class="fal fa-plus"></i>
                                </button>
                            </div>
                            <div class="total_price">Total: $620,99</div>
                        </div>

                        <ul class="default_btns_group ul_li">
                            <li><a class="btn btn_primary addtocart_btn" href="#!">Add To Cart</a></li>
                        </ul>
                    </div>
                    </form>
                </div>
            </div>

            <div class="details_information_tab">
                <ul class="tabs_nav nav ul_li" role=tablist>
                    <li>
                        <button class="active" data-bs-toggle="tab" data-bs-target="#description_tab" type="button"
                            role="tab" aria-controls="description_tab" aria-selected="true">
                            Description
                        </button>
                    </li>
                    <li>
                        <button data-bs-toggle="tab" data-bs-target="#additional_information_tab" type="button" role="tab"
                            aria-controls="additional_information_tab" aria-selected="false">
                            Additional information
                        </button>
                    </li>
                    {{-- <li>
                        <button data-bs-toggle="tab" data-bs-target="#reviews_tab" type="button" role="tab"
                            aria-controls="reviews_tab" aria-selected="false">
                            Reviews(2)
                        </button>
                    </li> --}}
                </ul>

                <div class="tab-content">
                    <div class="tab-pane fade show active" id="description_tab" role="tabpanel">
                        {!! $product->description !!}
                        </p>
                    </div>

                    <div class="tab-pane fade" id="additional_information_tab" role="tabpanel">
                        {!! $product->additional_info !!}
                    </div>

                    {{-- <div class="tab-pane fade" id="reviews_tab" role="tabpanel">
                        <div class="average_area">
                            <div class="row align-items-center">
                                <div class="col-md-12 order-last">
                                    <div class="average_rating_text">
                                        <ul class="rating_star ul_li_center">
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                        </ul>
                                        <p class="mb-0">
                                            Average Star Rating: <span>4 out of 5</span> (2 vote)
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="customer_reviews">
                            <h4 class="reviews_tab_title">2 reviews for this product</h4>
                            <div class="customer_review_item clearfix">
                                <div class="customer_image">
                                    <img src="assets/images/team/team_1.jpg" alt="image_not_found">
                                </div>
                                <div class="customer_content">
                                    <div class="customer_info">
                                        <ul class="rating_star ul_li">
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star-half-alt"></i></li>
                                        </ul>
                                        <h4 class="customer_name">Aonathor troet</h4>
                                        <span class="comment_date">JUNE 2, 2021</span>
                                    </div>
                                    <p class="mb-0">Nice Product, I got one in black. Goes with anything!</p>
                                </div>
                            </div>

                            <div class="customer_review_item clearfix">
                                <div class="customer_image">
                                    <img src="assets/images/team/team_2.jpg" alt="image_not_found">
                                </div>
                                <div class="customer_content">
                                    <div class="customer_info">
                                        <ul class="rating_star ul_li">
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star-half-alt"></i></li>
                                        </ul>
                                        <h4 class="customer_name">Danial obrain</h4>
                                        <span class="comment_date">JUNE 2, 2021</span>
                                    </div>
                                    <p class="mb-0">
                                        Great product quality, Great Design and Great Service.
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="customer_review_form">
                            <h4 class="reviews_tab_title">Add a review</h4>
                            <form action="#">
                                <div class="form_item">
                                    <input type="text" name="name" placeholder="Your name*">
                                </div>
                                <div class="form_item">
                                    <input type="email" name="email" placeholder="Your Email*">
                                </div>
                                <div class="your_ratings">
                                    <h5>Your Ratings:</h5>
                                    <button type="button"><i class="fal fa-star"></i></button>
                                    <button type="button"><i class="fal fa-star"></i></button>
                                    <button type="button"><i class="fal fa-star"></i></button>
                                    <button type="button"><i class="fal fa-star"></i></button>
                                    <button type="button"><i class="fal fa-star"></i></button>
                                </div>
                                <div class="form_item">
                                    <textarea name="comment" placeholder="Your Review*"></textarea>
                                </div>
                                <button type="submit" class="btn btn_primary">Submit Now</button>
                            </form>
                        </div>
                    </div> --}}
                </div>
            </div>
        </div>
    </section>
    <!-- product_details - end
                                                                                                                                                                                                                                                                                                                                                    ================================================== -->

    <!-- related_products_section - start
                                                                                                                                                                                                                                                                                                                                                 ================================================== -->
    <section class="related_products_section section_space">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="best-selling-products related-product-area">
                        <div class="sec-title-link">
                            <h3>Related products</h3>
                            <div class="view-all"><a href="#">View all<i class="fal fa-long-arrow-right"></i></a>
                            </div>
                        </div>
                        <div class="product-area clearfix">
                            @foreach ($product->categories as $category)
                                @foreach ($category->products as $cat_product)
                                    @if ($product->slug != $cat_product->slug)
                                        <div class="grid">
                                            <div class="product-pic">
                                                <img src="{{ asset('storage/products/' . $cat_product->photo) }}"
                                                    alt="{{ $cat_product->title }}">
                                                <div class="actions">
                                                    <ul>
                                                        <li>
                                                            <a href="#"></a>
                                                        </li>
                                                        <li>
                                                            <a href="#"></a>
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
                                                <h4><a
                                                        href="{{ route('frontend.shop.single', $cat_product->slug) }}">{{ $cat_product->title }}</a>
                                                </h4>
                                                <p>{{ $cat_product->short_discription }}</p>
                                                {{-- <div class="rating">
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star-half-alt"></i>
                                                </div> --}}
                                                <span class="price">
                                                    <ins>
                                                        <span class="woocommerce-Price-amount amount">
                                                            <bdi>
                                                                <span
                                                                    class="woocommerce-Price-currencySymbol">$</span>{{ $cat_product->sale_price }}
                                                            </bdi>
                                                            <del>
                                                                {{ $cat_product->price }}
                                                            </del>
                                                        </span>
                                                    </ins>
                                                </span>
                                                <div class="add-cart-area">
                                                    <a href="{{ route('frontend.shop.single', $cat_product->slug) }}"
                                                        class="add-to-cart">Add to cart</a>
                                                </div>
                                            </div>
                                        </div>
                                    @endif
                                @endforeach
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- related_products_section - end ================================================== -->
@endsection
