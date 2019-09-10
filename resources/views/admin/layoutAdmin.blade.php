<!doctype html>
<html lang="en">
  <head>
    <title>Admin:{{$NameUser}}</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <base href="{{asset('')}}">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
    <header>
        <div class="container-fluid bg-success">
          <div class="row">
            <div class="col-2 mb-2 mt-0 text-center">
              <a href="home" class="h1 text-warning">Logo</a
              ><span class="text-small text-light">Web rao vặt</span>
            </div>
            <div class="col-8">
                
            </div>
            <div class="col-2 text-center m-auto pl-0">
              @if(Auth::check())
                <a href="logout" class="bg-danger rounded text-white px-2">Đăng xuất</a>
                <a
                href="Article/create"
                class="text-warning px-2"
                style="border:1px dashed white "
                >Đăng tin</a>
              @else
                <a href="login" class="text-warning px-2" 
                style="border:1px dashed white ">Đăng Nhập/ Đăng Tin</a>
              @endif
            </div>
          </div>
        </div>
        <hr class="mt-0" />
    </header>
    <main class="container">
        <div class="row justify-content-around">
            <div class="col-3">
                <div class="list-group py-3 ">
                    <div class="list-group-item list-group-item-action h6" style="background: #F5F5F5">Admin : {{$NameUser}}</div>
                    <a href="home" class="list-group-item list-group-item-action">Ra trang chủ</a>
                    <a href="admin" class="list-group-item list-group-item-action ">Người dùng</a>
                    <a href="{{route('post.index')}}" class="list-group-item list-group-item-action ">Bài viết</a>
                    <a href="{{route('area.index')}}" class="list-group-item list-group-item-action ">Khu vực</a>
                    <a href="{{route('category.index')}}" class="list-group-item list-group-item-action ">Loại tin</a>
                    <a href="{{route('Article.index')}}" class="list-group-item list-group-item-action">Viết bài</a>
                </div>
            </div>
            <div class="col-8">
              @section('contentAdmin')
          
              @show
            </div>
        </div>
    </main>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>