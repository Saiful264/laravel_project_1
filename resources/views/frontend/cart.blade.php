@extends('layouts.frontendapp')
@section('title', 'Shop Cart')

@section('content')
    <!-- breadcrumb_section - start
                                                                                                                                                                                                                                                                                                                                                                                                                        ================================================== -->
    <div class="breadcrumb_section">
        <div class="container">
            <ul class="breadcrumb_nav ul_li">
                <li><a href="index.html">Home</a></li>
                <li>Cart</li>
            </ul>
        </div>
    </div>
    <!-- breadcrumb_section - end
                                                                                                                                                                                                                                                                                                                                                                                                                        ================================================== -->

    <!-- cart_section - start
                                                                                                                                                                                                                                                                                                                                                                                                                        ================================================== -->
    <section class="cart_section section_space">
        <div class="container">

            <div class="cart_table">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Quantity</th>
                            <th class="text-center">Total</th>
                            <th class="text-center">Remove</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($cartDatas as $cartData)
                            <tr>
                                <td>
                                    <div class="cart_product">
                                        <img src="{{ asset('storage/products/' . $cartData->product->photo) }}"
                                            alt="{{ $cartData->product->title }}">
                                        <h3><a
                                                href="{{ route('frontend.shop.single', $cartData->product->slug) }}">{{ $cartData->product->title }}</a>
                                        </h3>
                                    </div>
                                </td>
                                <td class="text-center"><span
                                        class="price_text">${{ $cartData->sale_price }}</span>
                                </td>
                                <td class="text-center">
                                    {{-- <form action="#"> --}}
                                    <div class="quantity_input">
                                        <button type="button" class="input_number_decrement">
                                            <i class="fal fa-minus"></i>
                                        </button>
                                        <input class="input_number" type="text" value="{{ $cartData->quantity }}" />
                                        <button type="button" class="input_number_increment">
                                            <i class="fal fa-plus"></i>
                                        </button>
                                    </div>
                                    {{-- </form> --}}
                                </td>
                                <td class="text-center"><span class="price_text">${{ $cartData->total }}</span>
                                </td>

                                <td class="text-center">
                                    <form action="{{ route('frontend.cart.delete', $cartData->id) }}" method="POST">
                                        @csrf
                                        @method("POST")
                                        <button type="submit" class="remove_btn">
                                            <i class="fal fa-trash-alt"></i>
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        @empty
                            <p>Empty Need to Work!</p>
                        @endforelse
                    </tbody>
                </table>
            </div>

            <div class="cart_btns_wrap">
                <div class="row">
                    <div class="col col-lg-6">
                        <form action="{{ route('frontend.coupon.apply') }}" method="POST">
                            @csrf
                            <div class="coupon_form form_item mb-0">
                                <input type="text" name="coupon" value="{{ $apply_coupon->coupon->name ?? '' }}"
                                    placeholder="Coupon Code...">
                                <button type="submit" class="btn btn_dark">Apply Coupon</button>
                                <div class="info_icon">
                                    <i class="fas fa-info-circle" data-bs-toggle="tooltip" data-bs-placement="top"
                                        title="Your Info Here"></i>
                                </div>
                            </div>
                            @if (session('massage'))
                                <p class="text-danger">{{ session('massage') }}</p>
                            @endif

                        </form>
                    </div>

                    <div class="col col-lg-6">
                        <ul class="btns_group ul_li_right">
                            <li><a class="btn border_black" href="#!">Update Cart</a></li>
                            <li><a class="btn btn_dark" href="#!">Prceed To Checkout</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col col-lg-6">
                    <div class="calculate_shipping">
                        <h3 class="wrap_title">Calculate Shipping <span class="icon"><i
                                    class="far fa-arrow-up"></i></span></h3>
                        <form action="#">
                            <div class="select_option clearfix">
                                <select>
                                    <option value="">Select Your Option</option>
                                    <option value="1">Inside City</option>
                                    <option value="2">Outside City</option>
                                </select>
                            </div>
                            <br>
                            <button type="submit" class="btn btn_primary rounded-pill">Update Total</button>
                        </form>
                    </div>
                </div>

                <div class="col col-lg-6">
                    <div class="cart_total_table">
                        <h3 class="wrap_title">Cart Totals</h3>
                        <ul class="ul_li_block">
                            <li>
                                <span>Cart Subtotal</span>
                                <span>${{ $cartData->sum('total') }}</span>
                            </li>
                            <li>
                                <span>Delivery Charge</span>
                                <span>$5</span>
                            </li>
                            @if (isset($apply_coupon->coupon))
                                <li>
                                    <span>Discound : ({{ $apply_coupon->coupon->name }})</span>
                                    <span> - ${{ $apply_coupon->coupon->price ?? '' }}</span>
                                </li>
                            @endif

                            <li>
                                <span>Order Total</span>
                                <span class="total_price">$ @if (isset($apply_coupon->coupon->price))
                                        {{ $cartData->sum('total') - $apply_coupon->coupon->price }}
                                    @else
                                        {{ $cartData->sum('total') }}
                                    @endif
                                </span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- cart_section - end
                                                                                                                                                                                                                                                                                                                                                                                                                        ================================================== -->
@endsection
