@extends('layout.mainLogin')

@section('title')
    Đăng nhập
@endsection

@section('content')
    {{-- @if ($errors->any())
        <div class="alert alert-danger">
            @foreach ($errors->all() as $err)
                <li> {{$err}} </li>
            @endforeach
        </div>
    @endif --}}
    @if (session('thongbao'))
    <div class="alert alert-danger">
        {{session('thongbao')}}
    </div>
    @endif
    <form action="login"  method="post">
        @csrf
        <h3>Đăng nhập</h3>
        <hr>
        <div class="form-group">
            <label class="text-dark h6" for="">Email : </label>
            <input type="text" name="email" id="email" class="form-control" placeholder="Nhập Email ...">
        </div>
        @if ($errors->has('email'))
            <p class="text-danger">{{$errors->first('email')}}</p>
        @endif

        <div class="form-group">
            <label class="text-dark h6" for="">Password :</label>
            <input type="Password" name="password" id="password" class="form-control" placeholder="Mật khẩu ...">
        </div>
        @if ($errors->has('password'))
            <p class="text-danger">{{$errors->first('password')}}</p>
        @endif

        <div class="form-check">
          <label class="text-secondary small">
            <input type="checkbox" value="remember">
            Ghi nhớ đăng nhập
          </label>
          <a href="register">Bạn chưa có tài khoản</a>
        </div>
        <button type="submit" class="btn btn-primary">Đăng nhập</button>
    </form>    
@endsection