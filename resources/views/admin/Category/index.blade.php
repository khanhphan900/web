@extends('admin.layoutAdmin')

@section('contentAdmin')
<div class="list-group py-3 ">
    <div class="list-group-item list-group-item-action h6" style="background: #F5F5F5">Quản lý loại tin</div>
        <div class="list-group-item">
            <div>
                <a href="{{route('category.create')}}"><button type="submit" class="btn btn-primary mb-2">Thêm loại tin</button></a>
            </div>
                <table  class="table table-bordered table-hover text-center">
                    <thead>
                        <tr>
                            <th>ID</th>    
                            <th>Name</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>                    
                    </thead>
                    <tbody>
                        @foreach ($Categories as $Cate)
                            <tr>
                                <td>{{$Cate->id}}</td>
                                <td>{{$Cate->name}}</td>
                                <td>
                                    <form action="{{route('category.edit',$Cate->id)}}" method="GET">
                                        <button class="btn btn-info">Sửa</button>
                                    </form>
                                </td>
                                <td>
                                    <form action="{{route('category.destroy', $Cate->id)}}" method="POST">
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