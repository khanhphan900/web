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
    public function index(Request $req)
    {
        $nameCategories = Category::pluck('name');
        $nameAreas = Area::pluck('name');
        $search =  $req->get('search');
        $articles = Article::where('title','like','%'.$search.'%')
                            ->orWhere('price','like','%'.$search.'%')
                            ->orderBy('id', 'desc')
                            ->paginate(10);
        // dd($articles);
        if (Auth::check()) {
            $User = Auth::User()->name;
            return view('Page.tin', [
                'nameCategories'=>$nameCategories, 
                'nameAreas'=>$nameAreas, 
                'articles'=>$articles,
                'User'=>$User
                ]);
        } else {
            return view('Page.tin', [
                'articles'=>$articles,
                'nameCategories'=>$nameCategories, 
                'nameAreas'=>$nameAreas, 
                ]);
        }
    }

    public function show($name){
        // dd($nameCategory);
        $nameAreas = Area::pluck('name');
        $Category = Category::where('name',$name)->first();
        // $Area = Area::where('name',$name)->first();
        // dd($Category->id);
        $articles = Article::where('category_id',$Category->id)
                                // ->orWhere('area_id',$Area->id)
                                ->orderBy('id', 'desc')
                                ->paginate(15);
        $nameCategories = Category::pluck('name');
        if (Auth::check()) {
            $User = Auth::User()->name;
            return view('Page.tin', [
                'nameCategories'=>$nameCategories, 
                'nameAreas'=>$nameAreas, 
                'articles'=>$articles,
                'User'=>$User
                ]);
        } else {
            return view('Page.tin', [
                'articles'=>$articles,
                'nameCategories'=>$nameCategories, 
                'nameAreas'=>$nameAreas, 
                ]);
        }
    }
}
