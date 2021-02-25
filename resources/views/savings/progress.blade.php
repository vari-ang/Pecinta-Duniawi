@extends('layouts/admin_template')
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
  @if ($saving->getPercentage() != 100)
  <div class="card">
    <div class="card-header"> 
        <h5 class="m-0">Makes Saving Progress on "{{ $saving->nama }}"</h5>
    </div>
    <div class="card-body">
      <form role="form" method="post" action="{{ url('savings/progress') }}" enctype="multipart/form-data">
        {{csrf_field()}}
        <div class="card-body">
          <div class="form-group">
            <input type="hidden" name="id" value="{{ $saving->id }}">
              @if(!empty($saving->foto))
                <img style="display: block; margin:0 auto;" class="img-circle img-bordered-sm" src="{{ asset("/images/savings/$saving->foto") }}" alt="user image" width="150" height="150">
              @endif
              <label for="exampleInputEmail1">Target: Rp. {{ number_format($saving->harga) }}</label>
              <br>
              <label for="exampleInputEmail1">Collected: {{ number_format($saving->getTotal()) }} ( {{ $saving->getPercentage() }}% )</label>
              <div class="progress mb-3">
                  <div class="progress-bar bg-info" role="progressbar" aria-valuenow="20" aria-valuemin="0"
                          aria-valuemax="100" style="width: {{ $saving->getPercentage() }}%">
                      <span class="sr-only">{{ $saving->getPercentage() }}% Complete</span>
                  </div>
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Set Aside Nominal (Rp)</label>
                <input type="number" name="nominal" class="form-control" max="{{ $saving->getLeftOver() }}" >
              </div>
              <div class="form-group">
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
          </div>
        </div>
        <!-- /.card-body -->
      </form>
    </div>
  </div>
</div>
@else 
<div class="card">
    <div class="card-header"> 
        <h5 class="m-0">Congratulations, your "{{ $saving->nama }}" is now complete!</h5>
    </div>
    <div class="card-body">
      
        {{csrf_field()}}
        <div class="card-body">
          <div class="form-group">
            <input type="hidden" name="id" value="{{ $saving->id }}">
              @if(!empty($saving->foto))
                <img style="display: block; margin:0 auto;" class="img-circle img-bordered-sm" src="{{ asset("/images/savings/$saving->foto") }}" alt="user image" width="150" height="150">
              @endif
              <label for="exampleInputEmail1">Target: Rp. {{ number_format($saving->harga) }}</label>
              <br>
              <label for="exampleInputEmail1">Collected: {{ number_format($saving->getTotal()) }} ( {{ $saving->getPercentage() }}% )</label>
              <div class="progress mb-3">
                  <div class="progress-bar bg-info" role="progressbar" aria-valuenow="20" aria-valuemin="0"
                          aria-valuemax="100" style="width: {{ $saving->getPercentage() }}%">
                      <span class="sr-only">{{ $saving->getPercentage() }}% Complete</span>
                  </div>
              </div>
              <div class="form-group">
                <a href="{{ url('savings') }}">
                <button type="submit" class="btn btn-primary">Back</button></a>
            </div>
          </div>
        </div>
        <!-- /.card-body -->
      
    </div>
  </div>
</div>
@endif
@endsection