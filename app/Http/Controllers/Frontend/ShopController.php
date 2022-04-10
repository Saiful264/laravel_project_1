<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\ApplyCoupon;
use App\Models\Cart;
use App\Models\Category;
use App\Models\Coupon;
use Carbon\Carbon;
use Psy\TabCompletion\Matcher\FunctionsMatcher;

class ShopController extends Controller
{


    public function shop(){
        $products = Product::with('sizes','colors','categories')->
        select('id','title','slug','price','sale_price','quantity','photo','status')->
        orderBy('created_at', "desc")->paginate(5);
        return view('frontend.shop', compact('products'));
    }


    public function show($slug){
        $cartData = null;
        $product = Product::with('colors','sizes','categories')->where('slug', $slug)->first();

       // $category_product = Category::with('products')->get();
       if(isset( auth()->user()->id)){
        $cartData = Cart::where('user_id', auth()->user()->id)->where( 'product_id',  $product->id)->first();
       }

        return view('frontend.shopsingle', compact('product','cartData'));
    }

    function cartView(){
        $cartData = Cart::where('user_id', auth()->user()->id)->with('product')->get();
        //  $cartsum = Cart::where('user_id', auth()->user()->id)->sum('total'); to sum the all product value
        $apply_coupon = ApplyCoupon::with('coupon')->where('user_id', auth()->user()->id)->first();

        return view('frontend.cart', compact('cartData', 'apply_coupon'));
    }

     /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    public function cart(Request $request){
        if(!auth()->user()->id){
            return redirect(route('login'));
        }

        $this->validate($request, [
            'size'=> "required",
            'color'=> "required",
            'quantity'=> "required|integer",
        ]);

       $cart = new Cart();
       $cart->user_id = auth()->user()->id;
       $cart->product_id = $request->product_id;
       $cart->sale_price = $request->sale_price;
       $cart->price = $request->price;
       $cart->size_id = $request->size;
       $cart->color_id = $request->color;
       $cart->quantity = $request->quantity;
       $cart->total = $request->total;
       $cart->save();
       return redirect(route('frontend.shop.Viewcart'))->with('success', "Product Add to Cart Successfull");
    }

    function applyCoupon(Request $request){

        $this->validate($request, [
            'coupon' => "required"
        ]);

        $coupon_id = Coupon::where('name', $request->coupon)->where('expairy_date', '>', Carbon::today()->toDateString())->first();



        if($coupon_id){

            $data = new ApplyCoupon();
            $data->user_id = auth()->user()->id;
            $data->coupon_id = $coupon_id->id;
            $data->use_date = Carbon::now();
            $data->save();
            return back()->with('massage', "Coupon Apply Susscessful!");
        }else{
            return back()->with('massage', "Coupon Expairy!");
        }

    }
}


