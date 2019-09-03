<?php

namespace App\Http\Controllers;

use App\Area;
use App\Category;
use App\Article;
use App\User;

use Auth;
use Validator;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    { 
        $id= Auth::User()->id;
        // dd($id);
        // $id->Article()->where('user_id',$id)->get();
        $posts = Article::where('user_id',$id)->get();
        // dd($posts);
        $User = Auth::User()->name;
        $Category = Category::pluck('name');
        $Area = Area::pluck('name');
        return view('articles.index', ['Category'=>$Category,'Area'=>$Area,'User'=>$User,'posts'=>$posts]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $User = Auth::User()->name;
        $Category = Category::pluck('name');
        $Categories = Category::all();
        $Article = Article::get() ;
        $Area = Area::pluck('name');
        $Areas = Area::get();

        return view('articles.dangTin', ['Category'=>$Category, 'Area'=>$Area,'Areas'=>$Areas, 'Article'=>$Article, 'Categories'=>$Categories,'User'=>$User]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {   
        // dd('o k xxxxxxx');
        // dd($request->img);
        $request->validate([
            'title'=>'required',
            'img'=>'max:5120',
            'content'=>'required',
            'price'=>'required|regex:/^[0-9]+(\.[0-9][0-9]?)?$/',
        ],[
            'title'=>'Vui lòng nhập tiêu đề !!!',
            'img.image'=>'File ảnh 1 không đúng định dạng!!!',
            'img.max'=>'File ảnh 1 không quá 5 MB!!!',
            'content'=>'Vui lòng nhập Mô tả !!!',
            'price.required'=>'Vui lòng nhập giá!!!',
            'price.regex'=>'Giá phải là số!!!',
        ]);
            //  dd('ok 1');
            $post = new Article;
            $user = Auth::user()->id;
            $post->user_id = $user;
            $post->category_id = $request->category;
            $post->area_id = $request->area;
            $post->title = $request->title;
            $post->img = $request->img->getClientOriginalName();
            $post->content = $request->content;
            $post->price = $request->price;
            // dd($post->img);
            $request->img->move('upload',$request->img->getClientOriginalName());
            // dd('ok');
            $post->save();
            return redirect()->route('Article.index');
        

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\article  $article
     * @return \Illuminate\Http\Response
     */
    public function show($title)
    {
        $id= Auth::User()->id;
        $posts = Article::where('user_id',$id)->get();
        $post = Article::where('title',$title)->get();
        // dd($post[0]);
        $User = Auth::user()->name;
        $Category = Category::pluck('name');
        $Area = Area::pluck('name');
        return view('articles.show', ['Category'=>$Category,'Area'=>$Area,'User'=>$User,'posts'=>$posts,'post'=>$post[0]]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\article  $article
     * @return \Illuminate\Http\Response
     */
    public function edit(article $article)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\article  $article
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, article $article)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\article  $article
     * @return \Illuminate\Http\Response
     */
    public function destroy($title)
    {
        $Article = Article::where('title',$title);
        $Article-> delete();
        return redirect()->route('Article.index');
    }
}
