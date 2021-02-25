@extends('layouts/admin_template')
@section('title', 'Configuration')
@section('content')
  <div class="content">
    <div class="container">
      @if (session('success')) 
        <div class="alert alert-success alert-dismissible">
          <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          <h5><i class="icon fas fa-check"></i> Success!</h5>
          {{ session('success') }}
        </div>
      @endif
      @if (session('error')) 
        <div class="alert alert-danger alert-dismissible">
          <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          <h5><i class="icon fas fa-ban"></i> Error!</h5>
          {{ session('error') }}
        </div>
      @endif

      {{-- Request Error Message --}}
      @if(!empty($errors->all()))
      <div class="alert alert-danger alert-dismissible">
          <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          <h5><i class="icon fas fa-ban"></i> Error!</h5>
          @foreach ($errors->all() as $error)
              <p>{{ $error }}</p>
          @endforeach
      </div>
      @endif
      <div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-header">
              <h5 class="m-0">Category</h5>
            </div>
            <div class="card-body">
              <form role="form" method="post" action="{{url('configuration/kategori/add')}}">
                  {{csrf_field()}}
                  <div class="card-body">
                    <div class="form-group">
                      <label for="exampleInputEmail1">Category Name</label>
                      <input type="text" class="form-control" name="namekategori">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Type</label>
                      <select class="form-control" name="jeniskategori">
                        <option value="">--Select--</option>
                        <option value="pengeluaran">Spending</option>
                        <option value="pemasukan">Earning</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Description</label>
                      <input type="text" name="keterangankategori" class="form-control">
                    </div>
                  </div>
                  <div class="form-group">
                    <button type="submit" class="btn btn-primary">Save</button>
                  </div>
                </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
    <div class="content">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="card">
              <div class="card-header">
                <h5 class="card-title m-0">Earning</sup></h5>
              </div>
              <div class="card-body">
                <form role="form" method="post" action="{{url('configuration/pemasukan/add')}}">
                  {{csrf_field()}}
                  <div class="card-body">
                    <div class="form-group">
                      <label for="exampleInputEmail1">Name</label>
                      <input type="text" class="form-control" name="namapemasukan">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Category</label>
                      <select class="form-control" name="kategoripemasukan">
                        <option value="" selected>--Select--</option>
                        @foreach($pemasukanKategoris as $pemasukanKategori)
                        <option value="{{$pemasukanKategori->id}}">{{$pemasukanKategori->nama}}</option>
                        @endforeach
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Description</label>
                      <input type="text" name="keteranganpemasukan" class="form-control">
                    </div>
                  </div>
                  <div>
                    <button type="submit" class="btn btn-primary">Save</button>
                  </div>
                </form>
              </div>
            </div>
            
          </div>
          <!-- /.col-md-6 -->
          <div class="col-lg-6">
            <div class="card">
              <div class="card-header">
                <h5 class="card-title m-0">Spending</sup></h5>
              </div>
              <div class="card-body">
                <form role="form" method="post" action="{{url('configuration/pengeluaran/add')}}">
                  {{csrf_field()}}
                  <div class="card-body">
                    <div class="form-group">
                      <label for="exampleInputEmail1">Name</label>
                      <input type="text" class="form-control" name="namapengeluaran">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Category</label>
                      <select class="form-control" name="kategoripengeluaran">
                        <option value="" selected>--Select--</option>
                        @foreach($pengeluaranKategoris as $pengeluaranKategori)
                        <option value="{{$pengeluaranKategori->id}}">{{$pengeluaranKategori->nama}}</option>
                        @endforeach
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Description</label>
                      <input type="text" name="keteranganpengeluaran" class="form-control">
                    </div>
                  </div>
                  <div>
                    <button type="submit" class="btn btn-primary">Save</button>
                  </div>
                </form>
              </div>
            </div>
            
          </div>
          <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
@endsection