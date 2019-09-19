<?php

namespace App\Http\Controllers;

use App\Category;
use App\Article;
use App\User;

use Auth;
use Validator;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $NameUser = Auth::User()->name;
        $Categories = Category::get();
        return view('admin.Category.index',['NameUser'=>$NameUser,'Categories'=>$Categories]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $NameUser = Auth::User()->name;
        $Categorys = Category::get();
        return view('admin.Category.create',['NameUser'=>$NameUser,'Categorys'=>$Categorys]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $Category = new Category();
        $Category->name = $request->name;
        $Category->save();
        return redirect()->route('category.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $NameUser = Auth::User()->name;
        $Category = Category::where('id', $id)->first();
        // dd($Category->name);
        return view('admin.Category.edit', ['NameUser'=>$NameUser,'Category'=>$Category]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        Category::where('id', $id)->update([
            'name' => $request->name,
        ]);
        return redirect()->route('category.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $Category = Category::find($id);
        $Category-> delete();
        return redirect()->route('category.index');
    }
}
