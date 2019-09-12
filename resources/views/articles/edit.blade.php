@extends('layout.main')

@section('content')
<form action="{{route('Article.update',$Article->id)}}" method="post" >
    @csrf
    <input type="hidden" name="_method" value="put"> {{csrf_field()}}
    <div class="container my-3">
      <div class="row">
        <div class="col-12">
          <div class="form-group">
              <label for="" class="h6 control-label">1. Danh mục</label>
                  <select class="form-control" name="category">
                      <option value="{{$Categories[$Article->category_id-1]->id}}">{{$Categories[$Article->category_id-1]->name}}</option>
                  @foreach ($Categories as $category)
                      <option value="{{$category->id}}">{{$category->name}}</option>
                  @endforeach
                  </select>
          </div>
          <div class="form-group">
              <label for="" class="h6 control-label">2. Khu vực</label>
                  <select class="form-control" name="area">
                    <option value="{{$Areas[$Article->area_id-1]->id}}">{{$Areas[$Article->area_id-1]->name}}</option>
                    @foreach ($Areas as $Area)
                      <option value="{{$Area->id}}">{{$Area->name}}</option>
                    @endforeach
                  </select>
          </div>
          <div class="form-group">
              <label for="" class="h6">3. Tiêu đề</label>
              <input type="text" class="form-control" name="title" id="" value="{{$Article->title}}">
          </div>
          @if ($errors->has('title'))
          <p class="text-danger">{{$errors->first('title')}}</p>
          @endif

          <div class="form-group">
              <label for="" class="h6">4. Hình ảnh (chọn lại)</label><br>
              <input type="file" name="img" value=""><br>
          </div>
          <img src="upload/{{$Article->img}}" alt="">      
          
          <div class="form-group">
              <label for="" class="h6">5. Mô tả</label>
                <script src="{{asset('ckeditor/ckeditor.js')}}"></script>
                <script src="{{asset('ckfinder/ckfinder.js')}}"></script>

                <textarea name="content" id="editor" >{{$Article->content}}</textarea>

                <script>
                    CKEDITOR.replace('editor', {
                    filebrowserBrowseUrl: "{{asset('/ckfinder/ckfinder.html')}}",
                    filebrowserUploadUrl: "{{asset('/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files')}}"});
                </script>
          </div>
          @if ($errors->has('content'))
          <p class="text-danger">{{$errors->first('content')}}</p>
          @endif

          <div class="form-group">
                  <label for="" class="h6">6. Số điện thoại </label>
                  <input type="text" class="form-control" name="phone" id="" value="{{$Article->phone}}">
          </div>
          @if ($errors->has('phone'))
          <p class="text-danger">{{$errors->first('phone')}}</p>
          @endif
          <div class="form-group">
              <label for="" class="h6">7. Giá / Mức lương</label>
              <input type="text" class="form-control" name="price" id="" value="{{$Article->price}}">
          </div>
          @if ($errors->has('price'))
          <p class="text-danger">{{$errors->first('price')}}</p>
          @endif

          <button type="submit" class="w-25 m-auto btn btn-primary btn-block">Chỉnh sửa</button>
        </div>
      </div>
    </div>
</form>
@endsection