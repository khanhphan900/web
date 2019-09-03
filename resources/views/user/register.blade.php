@extends('layout.mainLogin')

@section('title')
    Đăng ký
@endsection

@section('content')
  @if (session('thongbao'))
  <div class="alert alert-danger">
      {{session('thongbao')}}
  </div>
  @endif
      <h3>Đăng ký</h3>
      <hr>
  <form action="register" method="POST" id="form-register">
      @csrf
      <div class="form-group">
          <label for="" class="text-dark h6">Tên :</label>
          <input type="text" name="name" id="name" class="form-control" placeholder="Tên của bạn">
          {{-- <small id="helpId" class="text-muted">Help text</small> --}}
      </div>
      <div class="form-group">
        <label class="text-dark h6" for="">Email : </label>
        <input type="email" name="email" id="email" class="form-control" placeholder="Email">
        @if ($errors->has('email'))
          <p class="text-danger">{{$errors->first('email')}}</p>
        @endif
      </div>
      <div class="form-group">
        <label for="" class="text-dark h6">Mật khẩu 1 :</label>
        <input type="password" name="password" id="password" class="form-control" placeholder="Mật khẩu tối đa 6 ký tự">
      </div>
      @if ($errors->has('password'))
      <p class="text-danger">{{$errors->first('password')}}</p>
      @endif
      <div class="form-group">
        <label for="" class="text-dark h6">Mật khẩu 2 :</label>
        <input type="password" name="password_confirmation" id="password_confirmation" class="form-control" placeholder="Xác nhận lại mật khẩu 1">
      </div>
      @if ($errors->has('password_confirmation'))
      <p class="text-danger">{{$errors->first('password_confirmation')}}</p>
      @endif
      <button type="submit" class="btn btn-primary">Đăng ký</button>
  </form>
@endsection