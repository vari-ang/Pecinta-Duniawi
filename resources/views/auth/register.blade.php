<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Sign Up - Pecinta Duniawie</title>

  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="{{ asset("/AdminLTE-3.0.0-rc.5/plugins/fontawesome-free/css/all.min.css") }}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="{{ asset("/AdminLTE-3.0.0-rc.5/plugins/icheck-bootstrap/icheck-bootstrap.min.css") }}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{ asset("/AdminLTE-3.0.0-rc.5/dist/css/adminlte.min.css") }}">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition register-page">
    <div class="register-box">
        <div class="register-logo">
            <div>
                <img src="{{ asset("/images/logo.png") }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
                    style="opacity: .8" width="50px" height="50px">
                <p>Pecinta Duniawi</p>
            </div>
        </div>
        <div class="card">
            <div class="card-body register-card-body">
                <p class="login-box-msg">Sign Up to register your account</p>
        
                <form method="POST" class="form-horizontal" action="{{ route('register') }}">
                    {{ csrf_field() }}
                    
                    <div class="input-group mb-3 form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                        <input id="name" type="text" class="form-control" name="name" value="{{ old('name') }}" required autofocus>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-user"></span>
                            </div>
                        </div>
                        @if ($errors->has('name'))
                            <p class="help-block text-danger">
                                <strong>{{ $errors->first('name') }}</strong>
                            </p>
                        @endif
                    </div>
                    <div class="input-group mb-3 form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                        <input id="email" type="email" class="form-control" name="email" placeholder="user@example.com" value="{{ old('email') }}" required>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-envelope"></span>
                            </div>
                        </div>
                        @if ($errors->has('email'))
                            <p class="help-block text-danger">
                                <strong>{{ $errors->first('email') }}</strong>
                            </p>
                        @endif
                    </div>
                    <div class="input-group mb-3 form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                        <input id="password" type="password" class="form-control" name="password" placeholder="Password" required>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                        @if ($errors->has('password'))
                            <p class="help-block text-danger">
                                <strong>{{ $errors->first('password') }}</strong>
                            </p>
                        @endif
                    </div>
                    <div class="input-group mb-3 form-group">
                        <input id="password-confirm" type="password" class="form-control" placeholder="Ketik Ulang Password" name="password_confirmation" required>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-8">
                            <div class="icheck-primary">
                                <input type="checkbox" id="agreeTerms" name="terms" value="agree">
                                <label for="agreeTerms">
                                    I agree to the <a href="#">terms</a>
                                </label>
                            </div>
                        </div>
                        <!-- /.col -->
                        <div class="col-4">
                            <button type="submit" class="btn btn-primary btn-block btn-flat">Register</button>
                        </div>
                        <!-- /.col -->
                    </div>
                </form>
        
                <p class="mb-1" style="margin-top: 1.5em;">
                    Already a member?
                    <a href="{{ url('login') }}" class="text-center">Log In</a>
                </p>
            </div>
            <!-- /.form-box -->
        </div><!-- /.card -->
    </div>

<!-- jQuery -->
<script src="{{ asset("/AdminLTE-3.0.0-rc.5/plugins/jquery/jquery.min.js") }}"></script>
<!-- Bootstrap 4 -->
<script src="{{ asset("/AdminLTE-3.0.0-rc.5/plugins/bootstrap/js/bootstrap.bundle.min.js") }}"></script>
<!-- AdminLTE App -->
<script src="{{ asset("/AdminLTE-3.0.0-rc.5/dist/js/adminlte.min.js") }}"></script>
</body>
</html>