@extends('layout.main')

@section('content')
<main class="container-fluid border py-3">
  <div class="bg-light rounded h4 pl-3 py-3 border">{{$post->title}}</div>
  <div class="row">
      <div class="col-md-4 text-center"><img src="upload/{{$post->img}}" alt="" width="250" height="300"></div>
      <div class="col-md-8">
        {!!$post->content!!} <br><br>
        <div class="text-right h5">
          <span class="text-secondary">SĐT liên lạc : </span>
          {{$post->phone}}</div> <br>
        <div class="text-right text-danger h4">{{number_format($post->price)}} VNĐ</div>
      </div>
  </div>
        <hr>
        Ngày đăng : {{$post->created_at}} <br>
</main>    
@endsection