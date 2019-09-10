@extends('admin.layoutAdmin')

@section('contentAdmin')

    <div class="list-group py-3 ">
        <div class="list-group-item list-group-item-action h6" style="background: #F5F5F5">Thêm loại tin
        </div>
        <div class="list-group-item">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="bg-light rounded h4 pl-3 py-3"><span>Têu đề :</span> {{$Post->title}}</div>
                </div>
                <div class="col-4">
                    <img src="upload/{{$Post->img}}" alt="" width="220" height="280">
                </div>
                <div class="col-8">
                    {!!$Post->content!!} <br><br>
                    <div class="text-right h5">
                        <span class="text-secondary">SĐT liên lạc : </span>
                         {{$Post->phone}}
                    </div> <br>
                    <div class="text-right text-danger h4">{{number_format($Post->price)}} VNĐ
                    </div>
                </div>
                    <hr>
                    Ngày đăng : {{$Post->created_at}}
            </div>
        </div>
    </div>
@endsection