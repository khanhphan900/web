<?php

namespace App\Http\Controllers;

use App\Area;
use App\Category;
use App\Article;
use App\User;
use Auth;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {   
        $nameCategories = Category::pluck('name');
        $nameAreas = Area::pluck('name');
        $articles = Article::orderBy('id', 'desc')->paginate(15);
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
                'nameCategories'=>$nameCategories, 
                'nameAreas'=>$nameAreas, 
                'articles'=>$articles,
                ]);
        }
    }

    // đăng tin
    public function create()
    {
        // $Category = Category::pluck('name');
        // $Categories = Category::all();
        // $Article = Article::get() ;
        // $Area = Area::pluck('name');
        // $Areas = Area::get();
        // return view('articles.dangTin', ['Category'=>$Category, 'Area'=>$Area,'Areas'=>$Areas, 'Article'=>$Article, 'Categories'=>$Categories]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
