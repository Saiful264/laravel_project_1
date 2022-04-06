<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
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
        return view('frontend.shopsingle', compact('product'));
    }

}
