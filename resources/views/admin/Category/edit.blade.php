@extends('admin.layoutAdmin')

@section('contentAdmin')
    <div class="list-group py-3 ">
        <div class="list-group-item list-group-item-action h6" style="background: #F5F5F5">Chỉnh sửa người dùng</div>
        <div class="list-group-item">
            <div class="row justify-content-center">
                <div class="col-10">
                    <form action="{{route('category.update', $Catogory->id)}}" method="post">
                        <input type="hidden" name="_method" value="put"> {{csrf_field()}}
                        <div class="form-group">
                        <label class="h6" for="">Tên</label>
                        <input type="text" name="name" id="" class="form-control" value="{{$Category->name}}">
                        </div>
                        <button type="submit" class="mt-5 btn btn-primary my-3">Chỉnh sửa</button>
                    </form>
                </div>
            </div>
            </div>
        </div>
    </div>
@endsection