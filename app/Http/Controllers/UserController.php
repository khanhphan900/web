<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Contracts\Auth\Authenticatable;
use Auth;
use Validator;
// use Illuminate\Support\Facades\Auth; == use Auth;

class UserController extends Controller
{
    public function getLogin() {
        return view('user.login');
    }

    public function postLogin(Request $request){
        // dd($request);
        $request->validate([
            'email'=>'required|email',
            'password'=>'required|min:6|max:32'
        ],[
            'email.required'=>'Bạn chưa nhập Email',
            'email.email'=>'Email chưa đúng định dạng',
            'password.required'=>'Bạn chưa nhập Password',
            'password.min'=>'Password phải ít nhất 6 ký tự',
            'password.max'=>'Password không quá 32 ký tự'
        ]);
        // ghi nhớ tên đăng nhập
        $remember = $request->has('remember') ? true : false;
        if(Auth::attempt(['email'=>$request->email, 'password'=>$request->password], $remember)){
            // dd('thành công');
            return redirect('home');
        }else{
            return redirect('login')->with('thongbao', 'Đăng nhập thất bại') ;
        }
        // cách khác
        // $rules = array(
        //     'email'=>'required|email',
        //     'password'=>'required|min:6',   
        // );
        // $validator = Validator::make($request->all(), $rules);
        // // dd($validator);
        // if ($validator->fails()) {
        //     // dd('that bai 1');  
        //     // return redirect('login')->with('thongbao', 'Đăng nhập không thành công') ;
        //     return redirect()->back()->withErrors($validator)->withInput();
        // } else {
        //     // dd('thanh cong');
        //     $email = $request->email;
        //     $password = $request->password;
        //     if ( Auth::attempt(['email' => $email, 'password' => $password])) {
        //         dd('đăng nhập thành công');
        //     } else {
        //         return redirect('login')->with('thongbao', 'Tài khoản không tồn tại') ;
        //     }
        // }
    }

    public function getRegister() {
    	return view('user.register');
    }
    public function postRegister(Request $request)
    {
        $email = $request->email;
        $password = $request->password;
        if ( Auth::attempt(['email' => $email, 'password' => $password])) {
            return redirect()->back()->with('thongbao', 'Email đã tồn tại');
        } else {    
            $user = new User();
            $user->name = $request->name;
            $user->email = $request->email;
            $user->password =  bcrypt($request->password);
            $user->save();
            // echo 'Đăng ký thành công';
            return redirect('home');
        }

    } 
    public function logout(){
            Auth::logout();
            return redirect('home');
        
    }   

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */


    /**
     * Display the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        //
    }
}
