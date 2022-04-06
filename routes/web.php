<?php

use App\Http\Controllers\Backend\BackendContriller;
use App\Http\Controllers\Backend\BannerController;
use App\Http\Controllers\Backend\CategoryController;
use App\Http\Controllers\Backend\ColorController;
use App\Http\Controllers\Backend\ProductController;
use App\Http\Controllers\Backend\SizeController;
use App\Http\Controllers\Frontend\FrontendControll;
use App\Http\Controllers\Frontend\FrontendUserController;
use App\Http\Controllers\Frontend\FrontendUserRegisterController;
use App\Http\Controllers\Frontend\ShopController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::name('frontend.')->group(function(){
    Route::get('/', [FrontendControll::class, 'index'])->name('home');
    Route::get('/shop', [ShopController::class, 'shop'])->name('shop');
    Route::get('/shop/{slug}', [ShopController::class, 'show'])->name('shop.single');


    Route::get('/user/register', [FrontendUserRegisterController::class, 'register'])->name('user.register');
    Route::post('/user/register', [FrontendUserRegisterController::class, 'store'])->name('user.register');
    Route::get('/user/dashboard', [FrontendUserController::class, 'index'])->name('user.dashboard');
});

Auth::routes();

Route::name('backend.')->group(function(){


Route::group(['middleware' => ['role_or_permission:Super Admin']],function () {
    Route::get('/dashboard', [BackendContriller::class, 'index'])->name('home');
    // baner routes
    Route::resource('/banner', BannerController::class)->except(['show']);
    Route::get('/banner/status/{banner}', [BannerController::class, 'status'])->name('banner.status');
    Route::get('/banner/restore/{id}', [BannerController::class, 'restore'])->name('banner.restore');
    Route::get('/banner/hard/delete/{id}', [BannerController::class, 'harddelete'])->name('banner.harddelete');

    //product category routes
    Route::resource('/category', CategoryController::class);
    //product
    Route::resource('/size', SizeController::class)->except(['show', 'create']);
    Route::resource('/color', ColorController::class)->except(['show', 'create']);


    Route::resource('/product', ProductController::class);
   });

});

Route::get('/test', [HomeController::class, 'testroute']);




