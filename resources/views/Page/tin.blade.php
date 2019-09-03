@extends('layout.main')

@section('content')
    {{-- <div class="row bg-white rounded border mb-2">
      <div class="col">
        <div class="h5 mb-0 mt-3 text-white badge badge-danger">
          Tin hot
        </div>
        <hr class="my-2" />
        <div class="row">
          <div
            class="col text-center border-right mb-2"
            style="border-right:black"
          >
            <img
              class="rounded mr-2"
              src="./img/hot1.jpg"
              alt=""
              width="90"
              height="90"
            />
            <br />
            <div class="small text-secondary">
              Cho thuê kho lạnh tiêu chuẩn GSP 35 Cự Lộc, Hà Nội Gần
              Royal City
            </div>
            <div class="h6 text-danger">350.000 đ</div>
          </div>
          <div
            class="col text-center border-right mb-2"
            style="border-right:black"
          >
            <img
              class="rounded mr-2"
              src="./img/hot2.jpg"
              alt=""
              width="90"
              height="90"
            />
            <br />
            <div class="small text-secondary">
              Tìm 03 bạn sinh viên phụ bán hàng giúp chị không cần kinh
              nghiệm
            </div>
            <div class="h6 text-danger">6.000.000</div>
          </div>
          <div
            class="col text-center border-right mb-2"
            style="border-right:black"
          >
            <img
              class="rounded mr-2"
              src="./img/hot3.jpg"
              alt=""
              width="90"
              height="90"
            />
            <br />
            <div class="small text-secondary">
              Lô Đất 2 Mặt Tiền Ngay Chợ Phú Phong Chỉ 1 tỷ 530 Triệu Sổ
              Hồng
            </div>
            <div class="h6 text-danger">1.530.000.000 đ</div>
          </div>
          <div
            class="col text-center border-right mb-2"
            style="border-right:black"
          >
            <img
              class="rounded mr-2"
              src="./img/hot4.jpg"
              alt=""
              width="90"
              height="90"
            />
            <br />
            <div class="small text-secondary">
              Bán nhà trung tâm quận Ba Đình, ngõ 173 Hoàng Hoa Thám, Hà
              Nội
            </div>
            <div class="h6 text-danger">6.500.000.000 đ</div>
          </div>
          <div class="col text-center mb-2" style="border-right:black">
            <img
              class="rounded mr-2"
              src="./img/hot5.jpg"
              alt=""
              width="90"
              height="90"
            />
            <br />
            <div class="small text-secondary">
              Tìm 03 bạn sinh viên phụ bán hàng giúp chị không cần kinh
              nghiệm
            </div>
            <div class="h6 text-danger">6.000.000</div>
          </div>
        </div>
      </div>
    </div> --}}
    <div class="row bg-white rounded border">
      <div class="col">
        <div class="h5 mb-0 mt-3 text-white badge badge-success">
          Tin mới
        </div>
        <hr class="my-2" />
        <div class="row pl-2">
          @foreach ($articles as $article)
          <div
            {{-- class="col text-center border-right mb-2" --}}
            style="border-right:black"
          >
            <div class="card m-1" style="width: 10rem; height: 15rem">
              <img src="upload/{!!$article->img!!}" class="card-img-top mt-2 px-2 rounded" alt="ảnh lỗi" width="90" height="90">
              <div class="card-body">  
               {{-- <p class="card-title small text-secondary" style="overflow: hidden;
                display: -webkit-box;
                -webkit-line-clamp: 3;
                -webkit-box-orient: vertical;">{{$article->title}}</p> --}}
                <a href="/Article/{{$article->title}}" class="card-title small text-secondary" style="overflow: hidden;
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
        <div class="d-flex justify-content-center">{{$articles->links()}}
      </div>
    </div>
   
  </div>

@endsection
