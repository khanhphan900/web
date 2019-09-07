<?php

namespace App\Http\Controllers;

use App\Area;
use App\Category;
use App\Article;
use App\User;

use Auth;
use Validator;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function index()
    {   
        $NameUser = Auth::User()->name;
        $Users = User::orderBy('role')->get();

        // dd($Users);
        return View('admin.User.index',['NameUser'=>$NameUser,'Users'=>$Users]);
    }

    public function edit($id)
    {
        $NameUser = Auth::User()->name;
        $User = User::where('id', $id)->first();
        // dd($User->name);
        return view('admin.User.edit', ['NameUser'=>$NameUser,'User'=>$User]);
    }

    public function update(Request $request, $id)
    {
        // dd($User->name);
        User::where('id', $id)->update([
            'name' => $request->name,
            'email' => $request->email,
            'role' => $request->role,
        ]);
        return redirect()->route('admin.index');
    }

    public function destroy($id)
    {
        $User = User::find($id);
        $User-> delete();
        return redirect()->route('admin.index');
    }
}
