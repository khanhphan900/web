<?php

namespace App\Http\Controllers;

use App\Area;
use App\Category;
use App\Article;
use App\User;

use Auth;
use Validator;
use Illuminate\Http\Request;

class AreaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $NameUser = Auth::User()->name;
        $Areas = Area::get();
        return View('admin.Area.index',['NameUser'=>$NameUser,'Areas'=>$Areas]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $NameUser = Auth::User()->name;
        $Areas = Area::get();
        return view('admin.Area.create',['NameUser'=>$NameUser,'Areas'=>$Areas]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $area = new Area();
        $area->name = $request->name;
        $area->save();
        return redirect()->route('area.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\area  $area
     * @return \Illuminate\Http\Response
     */
    public function show(area $area)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\area  $area
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $NameUser = Auth::User()->name;
        $Area = Area::where('id', $id)->first();
        // dd($User->name);
        return view('admin.Area.edit', ['NameUser'=>$NameUser,'Area'=>$Area]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\area  $area
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        Area::where('id', $id)->update([
            'name' => $request->name,
        ]);
        return redirect()->route('area.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\area  $area
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $Area = Area::find($id);
        $Area-> delete();
        return redirect()->route('area.index');
    }
}
