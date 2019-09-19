@extends('admin.layoutAdmin')

@section('contentAdmin')
    <div class="list-group py-3 ">
        <div class="list-group-item list-group-item-action h6" style="background: #F5F5F5">Người dùng</div>
        <div class="list-group-item pl-1 ">
            <table  class="table table-bordered table-hover text-center">
                <thead>
                    <tr>
                        <th>ID</th>    
                        <th>Name</th>
                        <th class="d-none d-md-block">Email</th>
                        <th>Role</th>
                        <th>Edit</th>
                    </tr>                    
                </thead>
                <tbody>
                    @foreach ($Users as $User)
                        <tr>
                            <td>{{$User->id}}</td>
                            <td>{{$User->name}}</td>
                            <td class="d-none d-md-block">{{$User->email}}</td>
                            <td>
                                @if ($User->role=='1')
                                    Admin
                                @else
                                    User
                                @endif
                            </td>
                            <td class="d-flex">
                                <form action="{{route('admin.edit',$User->id)}}" method="GET">
                                    <button class="btn btn-info">Sửa</button>
                                </form>
                                <form action="{{route('admin.destroy', $User->id)}}" method="POST">
                                    <input type="hidden" name="_method" value="delete"> @csrf
                                    <button class="btn btn-danger">Xóa</button>
                                </form>   
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection