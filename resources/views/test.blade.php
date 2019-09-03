
<!doctype html>
<html lang="en">
  <head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
        <main class="container-fluid">
            <div class="row">
                <div class="col">
                    <table class="table table-bordered table-dark table-hover table-striped text-center">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($users as $user)
                                <tr>
                                    <td>{{$user->id}}</td>    
                                    <td>{{$user->title}}</td>
                                    <td><img src="upload/{!!$user->img!!}" alt=""></td>
                                    <td>{!!$user->content!!}</td>
                                    <td class="d-flex align-items-center justify-content-center">
                                            {{-- Show -- GET --}}
                                            {{-- <form action="{{route('users.show',$user->id)}}" method="GET">
                                                <button class="btn btn-info">Show</button>
                                            </form> --}}
                                            {{-- Edit -- GET --}}
                                            {{-- <form action="{{route('users.edit',$user->id)}}" method="GET"><button class="btn btn-warning mx-4">Edit</button></form> --}}
                                            {{-- Delete -- POST --hidden --}}
                                            {{-- <form action="{{route('users.destroy', $user->id)}}" method="POST">
                                                <input type="hidden" name="_method" value="delete"> {{csrf_field()}}
                                                <button class="btn btn-danger">Delete</button>
                                            </form>       --}}
                                        </td>
                                </tr>                            
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="d-flex justify-content-center">
                {{$users->links()}}
            </div>
        </main>   
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>