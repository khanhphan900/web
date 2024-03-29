@extends('layout.main')

@section('content')
@if (session('thongbao'))
<div class="alert alert-danger">
    {{session('thongbao')}}
</div>
@endif
    <h3>Đăng tin</h3>
    <hr>
    <form action="{{route('Article.store')}}" method="post" enctype="multipart/form-data">
      @csrf
      <div class="container my-3">
        <div class="row">
          <div class="col-12">
            <div class="form-group">
                <label for="" class="h6 control-label">1. Danh mục</label>
                    <select class="form-control" name="category">
                    @foreach ($Categories as $category)
                        <option value="{{$category->id}}">{{$category->name}}</option>
                    @endforeach
                    </select>
            </div>
            <div class="form-group">
                <label for="" class="h6 control-label">2. Khu vực</label>
                    <select class="form-control" name="area">
                    @foreach ($Areas as $Area)
                        <option value="{{$Area->id}}">{{$Area->name}}</option>
                    @endforeach
                    </select>
            </div>
            <div class="form-group">
                <label for="" class="h6">3. Tiêu đề</label>
                <input type="text" class="form-control" name="title" id="" placeholder="Tiêu đề">
            </div>
            @if ($errors->has('title'))
            <p class="text-danger">{{$errors->first('title')}}</p>
            @endif

            <div class="form-group">
                <label for="" class="h6">4. Hình ảnh</label><br>
                <input type="file" name="img"><br>
              
                {{-- <input type="file" name="img2"><br>
                @if ($errors->has('img2'))
                    <p class="text-danger">{{$errors->first('img2')}}</p>
                @endif
                <input type="file" name="img3"><br>
                @if ($errors->has('img3'))
                    <p class="text-danger">{{$errors->first('img3')}}</p>
                @endif --}}
            </div>
              @if ($errors->has('img'))
                    <p class="text-danger">{{$errors->first('img')}}</p>
                @endif

            <div class="form-group">
                <label for="" class="h6">5. Mô tả</label>
                @component('layout.ckeditor') Ckeditor @endcomponent 
            </div>
            @if ($errors->has('content'))
            <p class="text-danger">{{$errors->first('content')}}</p>
            @endif

            <div class="form-group">
                    <label for="" class="h6">6. Số điện thoại </label>
                    <input type="text" class="form-control" name="phone" id="" placeholder="0905123123">
            </div>
            @if ($errors->has('phone'))
            <p class="text-danger">{{$errors->first('phone')}}</p>
            @endif
            <div class="form-group">
                <label for="" class="h6">7. Giá / Mức lương</label>
                <input type="text" class="form-control" name="price" id="" placeholder="5400000">
            </div>
            @if ($errors->has('price'))
            <p class="text-danger">{{$errors->first('price')}}</p>
            @endif

            <button type="submit" class="w-25 m-auto btn btn-primary btn-block">Đăng tin</button>
          </div>
        </div>
      </div>
    </form>
@endsection

