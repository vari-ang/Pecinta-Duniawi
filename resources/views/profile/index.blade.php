@extends('layouts/admin_template')
@section('title', 'User Profile')
@section('content')
<div class="container-fluid">
    <div class="row d-flex justify-content-center">
        <div class="col-sm-6">
            <!-- Profile Image -->
            <div class="card card-primary card-outline">
                <div class="card-body box-profile">
                <div class="text-center">
                    <img class="profile-user-img img-fluid img-circle"
                        src="{{ asset("/images/account.png") }}"
                        alt="User profile picture">
                </div>

                <h3 class="profile-username text-center">{{ Auth::user()->name }}</h3>

                <p class="text-muted text-center">{{ Auth::user()->email }}</p>
                <p class="text-muted text-center">Balance : Rp. {{ number_format(Auth::user()->balance) }}</p>
                <ul class="list-group list-group-unbordered mb-3">
                <div class="card-body">
                    <form role="form" method="post" action="{{url('profile/update')}}">
                        {{csrf_field()}}
                        <div class="card-body">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Set Balance</label>
                            <input type="text" class="form-control" name="balance">
                        </div>
                        </div>
                        <!-- /.card-body -->
                        <div class="form-group">
                        <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </form>
                    </div>
                </ul>
                <a href="{{ url('home') }}" class="btn btn-primary btn-block"><b>Back To Home</b></a>
                </div>
                <!-- /.card-body -->
            </div>
        </div>
    </div>
</div><!-- /.container-fluid -->
@endsection