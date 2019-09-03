@extends('layout.main')

@section('content')
<main class="container-fluid">
        <div class="row">
            <div class="col">
                <table class="table table-bordered table-hover text-center">
                    <thead class="bg-light">
                        <tr>
                            <th>Tiêu đề</th>
                            <th>Ảnh</th>
                            <th>Giá</th>
                            <th>Ngày đăng</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($posts as $post)
                            <tr>
                                <td>{{$post->title}}</td>    
                                <td><img src="upload/{{$post->img}}" alt="ảnh lỗi" width="50" height="50"></td>
                                <td>{{number_format($post->price)}} VNĐ</td>
                                <td>{{$post->created_at}}</td>
                                <td class="d-flex align-items-center justify-content-center">
                                        {{-- Show -- GET --}}
                                        <form action="{{route('Article.show',$post->title)}}" method="GET">
                                            <button class="btn btn-info">Show</button>
                                        </form>
                                        {{-- Edit -- GET --}}
                                        {{-- <form action="{{route('users.edit',$user->id)}}" method="GET"><button class="btn btn-warning mx-4">Edit</button></form> --}}
                                        {{-- Delete -- POST --hidden --}}
                                        <form action="{{route('Article.destroy', $post->title)}}" method="POST">
                                            <input type="hidden" name="_method" value="delete"> @csrf
                                            <button class="btn btn-danger">Delete</button>
                                        </form>      
                                    </td>
                            </tr>                            
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </main>    
@endsection