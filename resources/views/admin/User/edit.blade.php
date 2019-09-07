@extends('admin.layoutAdmin')

@section('contentAdmin')
    <div class="list-group py-3 ">
        <div class="list-group-item list-group-item-action h6" style="background: #F5F5F5">Chỉnh sửa người dùng</div>
        <div class="list-group-item">
            <div class="row justify-content-center">
                <div class="col-10">
                    <form action="{{route('admin.update', $User->id)}}" method="post">
                        <input type="hidden" name="_method" value="put"> {{csrf_field()}}
                        <div class="form-group">
                        <label class="h6" for="">Tên</label>
                        <input type="text" name="name" id="" class="form-control" value="{{$User->name}}">
                        </div>
                        <div class="form-group">
                            <label class="h6" for="">Email</label>
                            <input type="text" name="email" id="" class="form-control" value="{{$User->email}}">
                        </div>
                        <div class="form-group">
                            <label class="h6" for="">Vai trò </label>
                            <select class="form-control" name="role">
                                @if ($User->role=='1')
                                    <option value="1" selected>Admin</option>
                                    <option value="3">User</option> 
                                @else
                                    <option value="1">Admin</option>
                                    <option value="3" selected>User</option> 
                                @endif
                            </select>
                        </div>
                        <button type="submit" class="mt-5 btn btn-primary my-3">Chỉnh sửa</button>
                    </form>
                </div>
            </div>
            </div>
        </div>
    </div>
@endsection