<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>
    @yield('title')
  </title>

  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="{{ asset("/AdminLTE-3.0.0-rc.5/plugins/fontawesome-free/css/all.min.css") }}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="{{ asset("/AdminLTE-3.0.0-rc.5/plugins/daterangepicker/daterangepicker.css") }}">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="{{ asset("/AdminLTE-3.0.0-rc.5/plugins/icheck-bootstrap/icheck-bootstrap.min.css") }}">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="{{ asset("/AdminLTE-3.0.0-rc.5/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css") }}">
  <!-- Select2 -->
  <link rel="stylesheet" href="{{ asset("/AdminLTE-3.0.0-rc.5/plugins/select2/css/select2.min.css") }}">
  <link rel="stylesheet" href="{{ asset("/AdminLTE-3.0.0-rc.5/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css") }}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{ asset("/AdminLTE-3.0.0-rc.5/dist/css/adminlte.min.css") }}">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed">
    <div class="wrapper">
    
      <!-- Navbar -->
      <nav class="main-header navbar navbar-expand navbar-gray navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav text-white">
          <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
          </li>
          <li>
            <a href="{{ url('home') }}" class="nav-link text-white">
              <p><strong>Pecinta Duniawi</strong></p>
            </a>
          </li>
        </ul>
    
        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">
          <li class="navgit-item dropdown">
            <a class="nav-link text-white" data-toggle="dropdown" href="#">
              <i class="far fa-bell"></i>
              <span id="badge-reminder" class="badge badge-warning navbar-badge">0</span>
            </a>
            <div id="reminders-box" class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
              <span class="dropdown-header">XXX Reminders</span>

              {{-- <div class="dropdown-divider"></div> --}}
              {{-- <a href="#" class="dropdown-item">
                <span><i class="fas fa-envelope mr-2"></i> 4 new messages</span>
                <span class="float-right text-muted text-sm">3 mins</span>
              </a> --}}
            </div>
          </li>
          <!-- Notifications Dropdown Menu -->
          <li>
            <a href="{{ route('logout') }}" class="nav-link text-white" 
               onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
              <p>Log Out</p>
            </a>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                {{ csrf_field() }}
             </form>
          </li>
        </ul>
      </nav>
      <!-- /.navbar -->
    
      <!-- Main Sidebar Container -->
      <aside class="main-sidebar sidebar-light-dark elevation-4">
        <!-- Brand Logo -->
        <a href="#" class="brand-link">
          <img src="{{ asset("/images/logo.png") }}" alt="Pecinta Duniawi Logo" class="brand-image img-circle elevation-3"
               style="opacity: .8">
          <span class="brand-text font-weight-light">Pecinta Duniawi</span>
        </a>
    
        <!-- Sidebar -->
        <div class="sidebar">
          <!-- Sidebar user panel (optional) -->
          <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <a href="{{ url('profile') }}">
                <img src="{{ asset("/images/account.png") }}" class="img-circle elevation-2" alt="User Image">
                </a>
            </div>
            <div class="info">
              <a href="{{ url('profile') }}" class="d-block">{{ Auth::user()->name }}</a>
              <p>Balance : Rp. {{Auth::user()->balance}}</p>
            </div>
          </div>
    
          <!-- Sidebar Menu -->
          <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
              <!-- Add icons to the links using the .nav-icon class
                   with font-awesome or any other icon font library -->
              <li class="nav-item">
                <a href="{{ url('home') }}" class="nav-link">
                  <i class="nav-icon fas fa-home"></i>
                  <p>Home</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ url('configuration') }}" class="nav-link">
                  <i class="nav-icon fas fa-cog"></i>
                  <p>Configuration</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ url('transaction') }}" class="nav-link">
                  <i class="nav-icon fas fa-money-check-alt"></i>
                  <p>Transactions</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ url('overviews') }}" class="nav-link">
                  <i class="nav-icon fas fa-list-alt"></i>
                  <p>Overview</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ url('graphs')}}" class="nav-link">
                  <i class="nav-icon fas fa-chart-pie"></i>
                  <p>Graphs</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ url('savings') }}" class="nav-link">
                  <i class="nav-icon fas fa-piggy-bank"></i>
                  <p>
                    Saving Plans
                    <span class="right badge badge-danger">New</span>
                  </p>
                </a>
              </li>
            </ul>
          </nav>
          <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
      </aside>
    
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
          <div class="container-fluid">
            <div class="row mb-2">
              <div class="col-sm-6">
                <h1 class="m-0 text-dark">
                  @yield('title')
                </h1>
              </div><!-- /.col -->
            </div><!-- /.row -->
          </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
    
        <!-- Main content -->
        <section class="content">
            <!-- Your Page Content Here -->
            @yield('content')
        </section>
        <!-- /.content -->
      </div>
      <!-- /.content-wrapper -->
    
      <!-- Control Sidebar -->
      <aside class="control-sidebar control-sidebar-light">
        <!-- Control sidebar content goes here -->
        <div class="p-3">
          <h5>Title</h5>
          <p>Sidebar content</p>
        </div>
      </aside>
      <!-- /.control-sidebar -->
    
      <!-- Main Footer -->
      <footer class="main-footer">
        <div class="col-xs-12 text-center">
          <strong>Copyright &copy; 2019 <span class="text-dark">Pecinta Duniawi</span></<strong> <br>
          <em>Your Most Trusted Personal Finance Assitant</em>
        </div>
        {{-- <strong>Copyright &copy; 2014-2019 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved. --}}
      </footer>
    </div>
    <!-- ./wrapper -->
    
    <!-- REQUIRED SCRIPTS -->
    
    <!-- jQuery -->
    <script src="{{ asset("/AdminLTE-3.0.0-rc.5/plugins/jquery/jquery.min.js") }}"></script>
    <!-- Bootstrap 4 -->
    <script src="{{ asset("/AdminLTE-3.0.0-rc.5/plugins/bootstrap/js/bootstrap.bundle.min.js") }}"></script>
    <!-- AdminLTE App -->
    <script src="{{ asset("/AdminLTE-3.0.0-rc.5/dist/js/adminlte.min.js") }}"></script>
    <script>
      $(function () {
        var path = window.location.pathname;
        var url = path.substring(0, path.search('public')) + 'public';

        $.ajax({
            type: 'GET',
            url: `${url}/saving-reminder`,
            data: {},
            success: function(response) {
                // Reminders header
                $('#badge-reminder').text(response.length); 
                $('.dropdown-header').text(response.length + ' Reminders'); 
                
                // Content
                response.forEach(function(obj) {
                  $a = $('<a>').attr({
                    href: `${url}/savings/${obj.id}/makeprogress`,
                    class: 'dropdown-item'
                  });

                  $span = $('<span>');
                  $('<i>').attr({
                    class: 'fa fa-exclamation-circle'
                  }).appendTo($span);
                  $(`<span>${obj.nama}</span>`).appendTo($span);

                  $(`<span class="float-right text-muted text-sm">Rp. ${obj.harga}</span>`).appendTo($span);
                  
                  $a.append('<div class="dropdown-divider"></div>');
                  $('#reminders-box').append($a);
                  $a.append($span);
                });
            },
            error: function(jqXHR, textStatus, errorThrown) {
            //   console.error(JSON.stringify(jqXHR));
                console.error("AJAX error: " + textStatus + ' : ' + errorThrown);
            }
        });
      });
    </script>
  </body>  
</html>
