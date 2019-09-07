@extends('admin.layoutAdmin')

@section('contentAdmin')
    <div class="list-group py-3 ">
        <div class="list-group-item list-group-item-action h6" style="background: #F5F5F5">Thêm khu vực</div>
        <div class="list-group-item">
            <div class="row justify-content-center">
                <div class="col-10">
                    <form action="{{route('area.store')}}" method="post">
                        @csrf
                        {{-- <input type="hidden" name="_method" value="put"> {{csrf_field()}} --}}
                        <div class="form-group">
                        <label class="h6" for="">Tên</label>
                        <input type="text" name="name" id="" class="form-control" >
                        </div>
                        <button type="submit" class="mt-5 btn btn-primary my-3">Thêm</button>
                    </form>
                </div>
            </div>
            </div>
        </div>
    </div>
@endsection