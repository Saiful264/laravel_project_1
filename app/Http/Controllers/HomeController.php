<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function testroute(){
       // Role::create(['name'=> 'Author']);
        //Permission::create(['name' => 'delete products']);

        // $permission = Permission::find(1);
        $role = Role::find(1);
        $user = User::find(8);
        // $permission->assignRole($role);
        $user->assignRole($role);
    }
}

