<?php

namespace App\Http\Controllers;

use App\Article;
use App\User;

use Auth;
use Validator;
use Illuminate\Http\Request;

class PostController extends Controller
{
   
    public function index()
    {
        $NameUser = Auth::User()->name;
        $Posts = Article::orderBy('id', 'desc')->paginate(10);
        return View('admin.Post.index',['NameUser'=>$NameUser,'Posts'=>$Posts]);
    }

    public function show($id)
    {
        $NameUser = Auth::User()->name;
        $Post = Article::where('id',$id)->get();
        // dd($Post[0]->title);
        return view('admin.Post.show', ['NameUser'=>$NameUser, 'Post'=>$Post[0]]);
    }

    public function destroy($id)
    {
        $Post = Article::find($id);
        $Post-> delete();
        return redirect()->route('post.index');
    }
}
