<header class="container-fluid bg-success">
    <div>
      <div class="row">
        <div class="col-5 col-md-3 mb-2 mt-0 text-center">
          <a href="home" class="h1 text-warning">Logo</a
          ><br class="d-block d-md-none"><span class="text-small text-light">Web rao vặt</span>
        </div>
        <div class="col-2 col-md-6">
          {{-- <div class="row" style="margin-top: 9px">
            <div class="col-8 px-0">
              <input
                type="text"
                class="form-control"
                placeholder="Tìm kiếm .."
              />
            </div>
            <div class="col-2 px-0">
              <div class="dropdown">
                <button
                  class="form-control dropdown-toggle"
                  href="#"
                  role="button"
                  id="dropdownMenuLink"
                  data-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  Danh mục &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </button>

                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                  @foreach ($Categories as $Category)
                    <a class="dropdown-item" href="#">{{$Category}}</a>
                  @endforeach
                </div>
              </div>
            </div>
            <div class="col-2 px-0">
              <div class="dropdown">
                <button
                  class="form-control dropdown-toggle"
                  href="#"
                  role="button"
                  id="dropdownMenuLink"
                  data-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  Đà Nẵng &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </button>

                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                  @foreach ($Areas as $Area)
                  <a class="dropdown-item" href="#">{{$Areas}}</a>
                  @endforeach
                </div>
              </div>
            </div>
          </div> --}}
        </div>
        <div class="col-5 col-md-3 text-center m-auto pl-0">
          @if(Auth::check())
            <a href="logout" class="bg-danger rounded text-white px-2">Đăng xuất</a>
            <a
            href="Article/create"
            class="text-warning px-2"
            style="border:1px dashed white "
            >Đăng tin</a>
          @else
            <a href="login" class="text-warning px-2" >Đăng Nhập</a>
          @endif
          
          
          
        </div>
      </div>
    </div>
    <hr class="mt-0" />

</header>
  