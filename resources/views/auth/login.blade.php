<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>Log In - Pecinta Duniawi</title>

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
<body class="hold-transition login-page">
    <div class="login-box">
        <div class="login-logo">
            <div>
              <img src="{{ asset("/images/logo.png") }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
                    style="opacity: .8" width="50px" height="50px">
              <p>Pecinta Duniawi</p>
            </div>
        </div>
        <div class="card">
          <div class="card-body login-card-body">
            <p class="login-box-msg">Log In to enter the application</p>
      
            <form role="form" method="POST" action="{{ route('login') }}">
              {{csrf_field()}}
              <div class="input-group mb-3">
                <input id="email" type="email" class="form-control" name="email" placeholder="user@example.com"
                       value="{{ old('email') }}" required autofocus>
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
              <div class="input-group mb-3">
                <input id="password" type="password" class="form-control" name="password" placeholder="123456" required>
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
              <div class="row">
                <div class="col-8">
                  <div class="icheck-primary">
                    <input type="checkbox" id="remember">
                    <label for="remember">
                      Remember Me
                    </label>
                  </div>
                </div>
                <!-- /.col -->
                <div class="col-4">
                  <button type="submit" class="btn btn-primary btn-block btn-flat">Log In</button>
                </div>
                <!-- /.col -->
              </div>
            </form>
    
            <p class="mb-1" style="margin-top: 1.5em;">
              Doesn't have an account?
              <a href="{{ url('register') }}" class="text-center">Sign Up Now</a>
            </p>
          </div>
          <!-- /.login-card-body -->
        </div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="{{ asset("/AdminLTE-3.0.0-rc.5/plugins/jquery/jquery.min.js") }}"></script>
<!-- Bootstrap 4 -->
<script src="{{ asset("/AdminLTE-3.0.0-rc.5/plugins/bootstrap/js/bootstrap.bundle.min.js") }}"></script>
<!-- AdminLTE App -->
<script src="{{ asset("/AdminLTE-3.0.0-rc.5/dist/js/adminlte.min.js") }}"></script>
</body>
</html>
