<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\Category;

class ShopController extends Controller
{


    public function shop(){
        $products = Product::with('sizes','colors','categories')->
        select('id','title','slug','price','sale_price','quantity','photo','status')->
        orderBy('created_at', "desc")->paginate(5);
        return view('frontend.shop', compact('products'));
    }


    public function show($slug){
        $product = Product::with('colors','sizes','categories')->where('slug', $slug)->first();

        $category_product = Category::with('products')->get();
         $cartData = Cart::where('user_id', auth()->user()->id)->where( 'product_id',  $product->id)->first();
        return view('frontend.shopsingle', compact('product','cartData'));
    }

    function cartView(){
        $cartData = Cart::where('user_id', auth()->user()->id)->with('product')->get();
        //  $cartsum = Cart::where('user_id', auth()->user()->id)->sum('total'); to sum the all product value

        return view('frontend.cart', compact('cartData'));
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
}


