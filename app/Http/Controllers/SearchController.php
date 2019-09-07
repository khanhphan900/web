<?php

namespace App\Http\Controllers;

use App\Area;
use App\Category;
use App\Article;
use App\User;
use Auth;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function Search(Request $req){
       $search =  $req->get('search');
       $Category = Category::where('name','like','%' . $search . '%')->paginate(5);
       return view('search.index', ['Category', $Category]);
    }
    public function Category(){
        
    }
}
