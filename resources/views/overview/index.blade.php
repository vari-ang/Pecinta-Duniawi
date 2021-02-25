@extends('layouts/admin_template')
@section('title', 'Overviews')
@section('content')
<!-- container-fluid -->
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
      <div class="row">
        <div class="col-lg-6">
            <div class="info-box bg-primary">
                <span class="info-box-icon"><i class="fab fa-bitcoin"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Earning List</span>
                  <span class="info-box-number">Total: Rp. + {{ number_format($user->totalEarning()) }}</span>
                </div>
                <a href="{{ url('overviews/excelPemasukan') }}"><button type="submit" class="btn btn-primary">Export</button></a>
            </div> 
            @foreach($user->pemasukans as $detailPemasukan)
              <div class="card">
                <div class="card-header">
                  <h5 class="m-0">{{date('Y/m/d', strtotime($detailPemasukan->pivot->waktu))}}</h5>
                </div>
                <div class="card-body">
                  <h6 class="card-title">{{ $detailPemasukan->nama }}</h6>
                  @if(isset($detailPemasukan->kategori->nama))
                    <p class="card-text">( {{$detailPemasukan->kategori->nama}} )</p>
                  @else <br>
                  @endif
                  @if(!empty($detailPemasukan->pivot->foto))
                      <img class="img-circle img-bordered-sm" 
                          src="{{ asset('/images/imgpemasukan/'. $detailPemasukan->pivot->foto) }}" 
                          style="width:75px;height:75px;">
                  @endif
                  <p class="card-text">Rp. + {{ number_format($detailPemasukan->pivot->nominal) }}</p>
                  <p class="card-text">{{$detailPemasukan->pivot->keterangan}}</p>
                  <a href="overviews/pemasukan/{{ $detailPemasukan->pivot->id }}/edit" class="btn btn-info">Edit</a>
                  <a href="overviews/pemasukan/{{ $detailPemasukan->pivot->id }}/delete" class="btn btn-danger">Delete</a>
                </div>
              </div>
            @endforeach
        </div>
        <div class="col-lg-6">
          <div class="info-box bg-danger">
              <span class="info-box-icon"><i class="fas fa-money-bill"></i></span>
              <div class="info-box-content">
                  <span class="info-box-text">Spending List</span>
                  <span class="info-box-number">Total: Rp. - {{ number_format($user->totalSpending()) }}</span>
              </div>
              <a href="{{ url('overviews/excelPengeluaran') }}"><button type="submit" class="btn btn-danger">Export</button></a>
          </div> 
          @foreach($user->pengeluarans as $detailPengeluaran)
            <div class="card">
              <div class="card-header">
                <h5 class="m-0">{{date('Y/m/d', strtotime($detailPengeluaran->pivot->waktu))}}</h5>
              </div>
              <div class="card-body">
                <h6 class="card-title">{{ $detailPengeluaran->nama }}</h6>
                  @if(isset($detailPengeluaran->kategori->nama))
                    <p class="card-text">( {{$detailPengeluaran->kategori->nama}} )</p>
                  @else <br>
                  @endif
                @if(!empty($detailPengeluaran->pivot->foto))
                    <img class="img-circle img-bordered-sm" 
                        src="{{ asset('/images/imgpengeluaran/' . $detailPengeluaran->pivot->foto) }}" 
                        style="width:75px;height:75px;">
                @endif
                <p class="card-text">Rp. - {{ number_format($detailPengeluaran->pivot->nominal) }}</p>
                <p class="card-text">{{ $detailPengeluaran->pivot->keterangan }}</p>

                <a href="overviews/pengeluaran/{{ $detailPengeluaran->pivot->id }}/edit" class="btn btn-info">Edit</a>
                <a href="overviews/pengeluaran/{{ $detailPengeluaran->pivot->id }}/delete" class="btn btn-danger">Delete</a>
              </div>
            </div>
          @endforeach
        </div>
      </div>
    </div>
@endsection