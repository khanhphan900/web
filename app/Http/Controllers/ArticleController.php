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
        $posts = Article::where('user_id',$id)->orderBy('id', 'desc')->get();
        // dd($posts);
        $User = Auth::User()->name;
        $nameCategories = Category::pluck('name');
        $nameAreas = Area::pluck('name');
        return view('articles.index', ['nameCategories'=>$nameCategories,'nameAreas'=>$nameAreas,'User'=>$User,'posts'=>$posts]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $User = Auth::User()->name;
        $nameCategories = Category::pluck('name');
        $Categories = Category::all();
        $Article = Article::get() ;
        $nameAreas = Area::pluck('name');
        $Areas = Area::get();

        return view('articles.dangTin', ['nameCategories'=>$nameCategories, 'Areas'=>$Areas,'nameAreas'=>$nameAreas, 'Article'=>$Article, 'Categories'=>$Categories,'User'=>$User]);
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
            'img'=>'required|image',
            'content'=>'required',
            'phone'=>'required',
            'price'=>'required|regex:/^[0-9]+(\.[0-9][0-9]?)?$/',
        ],[
            'title.required'=>'Vui lòng nhập tiêu đề !!!',
            'img.required'=>'File ảnh 1 không đúng định dạng!!!',
            'img.image'=>'File ảnh 1 không quá 5 MB!!!',
            'content.required'=>'Vui lòng nhập Mô tả !!!',
            'phone.required'=>'Vui lòng nhập giá!!!',
            'price.required'=>'Vui lòng nhập giá!!!',
            'price.regex'=>'Giá phải là số!!!',
        ]);
            //  dd('ok');
            $post = new Article;
            $user = Auth::user()->id;
            $post->user_id = $user;
            $post->category_id = $request->category;
            $post->area_id = $request->area;
            $post->title = $request->title;
            $post->img = $request->img->getClientOriginalName();
            // $post->img2 = $request->img2->getClientOriginalName();
            // $post->img3 = $request->img3->getClientOriginalName();
            $post->content = $request->content;
            $post->phone = $request->phone;
            $post->price = $request->price;
            // dd($post->img0);
            // lưu ảnh vào thư mục public/upload của laravel
            $request->img->move('upload',$request->img->getClientOriginalName());
            // $request->img2->move('upload',$request->img2->getClientOriginalName());
            // $request->img3->move('upload',$request->img3->getClientOriginalName());
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
        $post = Article::where('title',$title)->get();
        // dd($post[0]);
        $nameCategories = Category::pluck('name');
        $nameAreas = Area::pluck('name');
        if (Auth::check()) {
            $id= Auth::User()->id;
            $posts = Article::where('user_id',$id)->get();
            $User = Auth::user()->name;  
            return view('articles.show', ['nameCategories'=>$nameCategories,'nameAreas'=>$nameAreas,'posts'=>$posts,'User'=>$User,'post'=>$post[0]]);
        } else {
            return view('articles.show', ['nameCategories'=>$nameCategories,'nameAreas'=>$nameAreas,'post'=>$post[0]]);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\article  $article
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $User = Auth::User()->name;
        $nameCategories = Category::pluck('name');
        $Categories = Category::all();
        $nameAreas = Area::pluck('name');
        $Areas = Area::get();
        $Article = Article::find($id);
        return view('articles.edit', ['nameCategories'=>$nameCategories, 'Areas'=>$Areas,'nameAreas'=>$nameAreas, 'Article'=>$Article, 'Categories'=>$Categories,'User'=>$User]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\article  $article
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // dd($request->category);
        Article::where('id', $id)->update([
            'category_id' => $request->category,
            'area_id' => $request->area,
            'title' => $request->title,
            'img' => $request->img,
            'content' => $request->content,
            'phone' => $request->phone,
            'price' => $request->price,
        ]);
        return redirect()->route('Article.index');
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
