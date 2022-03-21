<?php

namespace App\Http\Controllers\Backend;

use App\Models\category;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Intervention\Image\Facades\Image;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories = Category::with('childs')->where('parent_id', '=', null)->OrderBy('created_at', "DESC")->get();
        return view('backend.product.cetagory.index', compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'name' => 'required|unique:categories,name',
            'description' => 'string|max:300',
            'image' => 'image|mimes:png,jpg,webp,jpeg|max:1024'
        ]);

        $photo = $request->file('image');

        if(!empty($photo)){
            $img_name = Str::slug($request->name).time().'.'. $photo->getClientOriginalExtension();
            Image::make($photo)->crop(200, 256)->save(public_path('storage/category/'.$img_name));
        }

       $insert = new Category();
        $insert->name = $request->name;
        $insert->parent_id = $request->parent;
        $insert->slug = Str::slug($request->name);
        $insert->description = $request->description;
        $insert->icon = $request->icon;
        $insert->image = $img_name;
        $insert->save();
        return back()->with('success', "Product Category Insert Successfull!");
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(category $category)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, category $category)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(category $category)
    {
        //
    }
}
