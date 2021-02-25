@extends('layouts/admin_template')
@section('title', 'Edit Spending')
@section('content')
<div class="content">
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
        <div class="card">
            <div class="card-header">
              <h5 class="m-0">Edit Spending</h5>
            </div>
            <div class="card-body">
              <form role="form" method="post" action="{{url('overviews/update/pengeluaran')}}">
                {{csrf_field()}}
                <div class="card-body">
                  <input type="hidden" name="id" value="{{ $detailPengeluaran->pivot->id }}">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Spending Category</label>
                    <select class="form-control" name="kategorip" id="kategori" >
                      <option value="">--Select--</option>
                      @foreach($kategoris as $kategori)
                      <option value="{{$kategori->id}}" id="namekateg" 
                        selected="{{ ($kategori->id == $detailPengeluaran->id_kategori) ? 'selected' : '' }}">
                          {{$kategori->nama}}
                      </option>
                      @endforeach
                    </select>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Spending Detail</label>
                    <select class="form-control" name="dkategorip" id="dkategorip" >
                      <option value="">--Select--</option>
                      <option value="{{ $detailPengeluaran->pivot->id_pengeluaran }}" selected>
                        {{ $detailPengeluaran->nama }}
                      </option>
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
                      <input type="date" class="form-control" name="tglp" value="{{ date('Y-m-d', strtotime($detailPengeluaran->pivot->waktu)) }}">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Amount</label>
                      <input type="text" name="nominalp" class="form-control" value="{{ $detailPengeluaran->pivot->nominal }}">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Description</label>
                      <input type="text" name="keteranganp" class="form-control" value="{{ $detailPengeluaran->pivot->keterangan }}">
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="form-group">
                  <button type="submit" class="btn btn-primary">Edit</button>
                </div>
              </form>
            </div>
          </div>
        </div>
</div>
@endsection
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
  $(document).ready(function(){
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