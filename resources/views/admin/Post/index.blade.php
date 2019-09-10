@extends('admin.layoutAdmin')

@section('contentAdmin')
    <div class="list-group py-3 ">
        <div class="list-group-item list-group-item-action h6" style="background: #F5F5F5">Quản lý bài viết</div>
        <div class="list-group-item">
            <table class="table table-bordered table-hover text-center">
                <thead class="bg-light">
                    <tr>
                        <th>ID</th>
                        <th>Tiêu đề</th>
                        <th>Giá</th>
                        <th>Ngày đăng</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($Posts as $post)
                        <tr>
                            <td>{{$post->id}}</td>
                            <td>{{$post->title}}</td>
                            <td>{{number_format($post->price)}} VNĐ</td>
                            <td>{{$post->created_at}}</td>
                            <td class="">
                                <form action="{{route('post.show',$post->id)}}" method="GET">
                                    <button class="btn btn-info">Show</button>
                                </form>
                                <form action="{{route('post.destroy', $post->id)}}" method="POST">
                                    <input type="hidden" name="_method" value="delete"> @csrf
                                    <button class="btn btn-danger">Delete</button>
                                </form>      
                            </td>
                        </tr>                            
                    @endforeach
                    
                </tbody>
            </table>
            <div class="d-flex justify-content-center">
                {{$Posts->links()}}
            </div>
        </div>
    </div>
@endsection