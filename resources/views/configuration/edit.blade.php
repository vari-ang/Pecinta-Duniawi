@extends('layouts/admin_template')
@section('title', 'Edit Kategori')
@section('content')
    <div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-header">
              <h5 class="m-0">Configuration Kategori</h5>
            </div>
            <div class="card-body">
              <form role="form" method="post" action="{{url('configuration/update')}}">
                  {{csrf_field()}}
                  <div class="card-body">
                    <div class="form-group">
                        <label for="listkat">Select Kategori</label>
                        <select class="form-control" name="listkat" id="idkat">
                            <option>--Select--</option>
                            @foreach($datas as $ds)
                            <option value="{{$ds->id}}">{{$ds->nama}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Nama Kategori</label>
                      <input type="text" class="form-control" name="namekategori" id='namekat'>
                    </div>
                    <!-- <div class="form-group">
                      <label for="exampleInputEmail1">Jenis Kategori</label>
                      <select class="form-control" name="jeniskategori">
                        <option value="kos">--Select--</option>
                        <option value="pengeluaran">Pengeluaran</option>
                        <option value="pemasukan">Pemasukan</option>
                      </select>
                    </div> -->
                    <div class="form-group">
                      <label for="exampleInputPassword1">Keterangan</label>
                      <input type="text" name="keterangan" class="form-control" id='ktketerangan'>
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
@endsection
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
  $(document).ready(function(){
    $('#idkat').on('change',function(){
        var _token= $('input[name="_token"]').val();
        var idkategori= $('#idkat').val();
        $.ajax({
          url:"{{ route('configuration.searchdata') }}",
          method:"POST",
          data:{idkategori:idkategori,_token:_token},
          success:function(data){
            // alert(data[0].nama);
            $('#ktketerangan').val(data[0].keterangan);
            $('#namekat').val(data[0].nama);
          }
        })
    });
  });
</script>