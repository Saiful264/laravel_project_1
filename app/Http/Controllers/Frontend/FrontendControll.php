<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;

class FrontendControll extends Controller
{
    public function index(){
        return view('frontend.index');
    }

    public function shop(){
        $products = Product::with('sizes','colors','categories')->
        select('id','title','price','sale_price','quantity','photo','status')->
        orderBy('created_at', "desc")->paginate(5);
        return view('frontend.shop', compact('products'));
    }
}
