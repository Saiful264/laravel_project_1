<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Coupon;
use Illuminate\Http\Request;

class CouponController extends Controller
{
    public function index(){
        $coupons = Coupon::all();
        return view('backend.coupon.index', compact('coupons'));
    }

    public function store(Request $request){
        $this->validate($request, [
            "name" => 'required',
            "price" => 'required|integer',
            "ex_date" => 'required'
        ]);


        $data = new Coupon();
        $data->name = $request->name;
        $data->price = $request->price;
        $data->expairy_date = $request->ex_date;
        $data->save();

        return back()->with('susscess', "Coupon Added Susscessfull!");

    }
}
