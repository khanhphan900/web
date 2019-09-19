<!doctype html>
<html lang="en">
  <head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
    <div id="danhSach">
      <div class="row my-3" style="margin-top: 9px">
        <div class="col-12 col-md-8 px-0">
          {{-- <form action="search" method="get"> --}}
            <div class="input-group">
              <input
                type="search"
                class="form-control"
                placeholder="Tìm kiếm .."
                {{-- name="search" --}}
                id="myInput"
              />
              {{-- <span class="input-group-prepend">
                <button type="submit" class="btn btn-primary">Search</button>
              </span> --}}
            </div>
          {{-- </form> --}}
        </div>
        <div class="col-6 col-md-2 px-0">
          <div class="dropdown">
            <button
              class="form-control dropdown-toggle"
              id="Categories"
              data-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false"
            >
              Danh mục &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </button>
            <div class="dropdown-menu" aria-labelledby="Categories">
              @foreach ($nameCategories as $nameCategory)
              <a class="dropdown-item" href="search/{{$nameCategory}}">{{$nameCategory}}</a>
              @endforeach
            </div>
          </div>
        </div>
        <div class="col-6 col-md-2 px-0">
          <div class="dropdown">
            <button
              class="form-control dropdown-toggle"
              href="#"
              role="button"
              id="Areas"
              data-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false"
            >
              Đà Nẵng &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </button>

            <div class="dropdown-menu" aria-labelledby="Areas">
              @foreach ($nameAreas as $nameArea)
              <a class="dropdown-item" href="area/{{$nameArea}}">{{$nameArea}}</a>
              @endforeach
            </div>
          </div>
        </div>
      </div>
      <div class="row bg-white rounded border">
        <div class="col-12">
          <div class="h5 mb-0 mt-3 text-white badge badge-success">
            Tin mới
          </div>
          <hr class="my-2" />
          <div class="row pl-2">
            @foreach ($articles as $article)
            <div style="border-right:black">
              <div class="card m-1" style="width: 10rem; height: 15rem" >
                <img src="upload/{!!$article->img!!}" class="card-img-top mt-2 px-2 rounded" alt="ảnh lỗi" width="90" height="90">
                <div class="card-body">  
                  <a href="/Article/{{$article->title}}" class="card-title small text-secondary text-decoration-none " style="overflow: hidden;
                  display: -webkit-box;
                  -webkit-line-clamp: 3;
                  -webkit-box-orient: vertical;">
                      {{$article->title}}
                    </a>
                  <div class="h6 text-danger" style="position:absolute;  top:200px;">{{number_format($article->price)}} VNĐ</div>
                </div>
              </div>
            </div> 
            @endforeach
          </div>
          <div class="d-flex justify-content-center">{{$articles->links()}}</div>
        </div>
      </div>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script
    src="https://code.jquery.com/jquery-3.4.1.js"
    integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
    crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script>
      $(document).ready(function(){
        $("#myInput").on("keyup", function() {
            var value = $(this).val().toLowerCase() ; 
            $.ajax({
              type: 'get',                       //method
              url: "{{route('search.index')}}",   // action
              data: {                             // biến gửi đi request
                'data': value
              },
              // dataType:Object,
              success:function(data){             // Sau khi gửi và kết quả trả về thành công thì gán nội dung trả về
                $('#danhSach').fadeIn();
                $('#danhSach').html(data);      //đưa vào thẻ div có id =danhSach
              }
            });
        });
        $(document).on('click', 'li', function(){  
          $('#myInput').val($(this).text());  
          $('#danhSach').fadeOut();  
        }); 
        
      });
    </script>
  </body>
</html>