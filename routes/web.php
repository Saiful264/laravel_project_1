<?php

use App\Http\Controllers\Backend\BackendContriller;
use App\Http\Controllers\Backend\BannerController;
use App\Http\Controllers\Backend\CategoryController;
use App\Http\Controllers\Backend\ColorController;
use App\Http\Controllers\Backend\SizeController;
use App\Http\Controllers\Frontend\FrontendControll;
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

Route::get('/', [FrontendControll::class, 'index'])->name('frontend.home');



Auth::routes();

Route::name('backend.')->group(function(){

    Route::get('/dashboard', [BackendContriller::class, 'index'])->name('home');
    // baner routes
    Route::resource('/banner', BannerController::class)->except(['show']);
    Route::get('/banner/status/{banner}', [BannerController::class, 'status'])->name('banner.status');
    Route::get('/banner/restore/{id}', [BannerController::class, 'restore'])->name('banner.restore');
    Route::get('/banner/hard/delete/{id}', [BannerController::class, 'harddelete'])->name('banner.harddelete');

    //product category routes
    Route::resource('/category', CategoryController::class);
    Route::resource('/size', SizeController::class)->except(['show', 'create']);
    Route::resource('/color', ColorController::class)->except(['show', 'create']);


});

