@extends('layouts/admin_template')
@section('title', 'Transactions')
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
        <!-- /.col-md-6 -->
        <div class="col-lg-6">
          <div class="card">
            <div class="card-header">
              <h5 class="m-0">Earning</h5>
            </div>
            <div class="card-body">
              <form role="form" method="post" action="{{url('transaction/tpemasukan/add')}}" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Earning Category</label>
                    <select class="form-control" name="kategori" id="kategori">
                      <option value="">--Select--</option>
                      @foreach($pemasukanKategoris as $pemasukanKategori)
                       <option value="{{ $pemasukanKategori->id }}" id="namekateg">{{ $pemasukanKategori->nama }}</option>
                      @endforeach
                    </select>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Earning Detail</label>
                    <select class="form-control" name="dkategori" id="dkategori">
                    <option value="">--Select--</option>
                    </select>
                  </div>
                  <div class="form-group">
                      <label>Photo (Optional)</label>
                      <div class="input-group">
                          <div class="custom-file">
                              <input type="file" class="custom-file-input" id="exampleInputFile" name="file" accept="image/*">
                              <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                          </div>    
                      </div>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Date</label>
                    <input type="date" class="form-control" name="tgl">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Amount</label>
                    <input type="text" name="nominal" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Description</label>
                    <input type="text" name="keterangan" class="form-control">
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="form-group">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="card">
            <div class="card-header">
              <h5 class="m-0">Spending</h5>
            </div>
            <div class="card-body">
              <form role="form" method="post" action="{{url('transaction/tpengeluaran/add')}}" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Spending Category</label>
                    <select class="form-control" name="kategorip" id="kategorip">
                    <option value="">--Select--</option>
                      @foreach($pengeluaranKategoris as $pengeluaranKategori)
                      <option value="{{ $pengeluaranKategori->id }}" id="namekateg">{{ $pengeluaranKategori->nama }}</option>
                      @endforeach
                    </select>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Spending Detail</label>
                    <select class="form-control" name="dkategorip" id="dkategorip">
                    <option value="">--Select--</option>
                    </select>
                  </div>
                  <div class="form-group">
                      <label>Photo (Optional)</label>
                      <div class="input-group">
                          <div class="custom-file">
                              <input type="file" class="custom-file-input" id="exampleInputFile" name="file" accept="image/*">
                              <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                          </div>    
                      </div>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Date</label>
                    <input type="date" class="form-control" name="tglp">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Amount</label>
                    <input type="text" name="nominalp" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Description</label>
                    <input type="text" name="keteranganp" class="form-control">
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="form-group">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
<script src="{{ asset('/js/jquery-3.4.1.min.js') }}"></script>
<script>
  $(document).ready(function(){
    $('#kategori').on('change',function(){
        var _token= $('input[name="_token"]').val();
        var idkategori= $('#kategori').val();
        $.ajax({
          url:"{{ route('tpemasukan.searchPemasukan') }}",
          method:"POST",
          data:{idkategori:idkategori,_token:_token},
          success:function(data){
            $('#dkategori').html(data);
          }
        })
    });
    $('#kategorip').on('change',function(){
        var _token= $('input[name="_token"]').val();
        var idkategori= $('#kategorip').val();
        $.ajax({
          url:"{{ route('tpengeluaran.searchPengeluaran') }}",
          method:"POST",
          data:{idkategorip:idkategori,_token:_token},
          success:function(data){
            $('#dkategorip').html(data);
          }
        })
    });
  });
</script>