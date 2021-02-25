@extends('layouts/admin_template')
@section('title', 'Saving Plans')
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
                    <h5 class="m-0">Set Your Saving Plans (Target)</h5>
                </div>
                <div class="card-body">
                    <form role="form" method="post" action="{{ url('savings' )}}" enctype="multipart/form-data">
                        {{csrf_field()}}
                        <div class="card-body">
                        <div class="form-group">
                            <label for="exampleInputFile">Photo (Optional)</label>
                            <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="exampleInputFile" name="file" accept="image/*">
                                    <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Item or Activity Name</label>
                            <input type="text" class="form-control" name="name">
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <input type="text" class="form-control" name="description">
                        </div>
                        <div class="form-group">
                            <label>Date (Deadline)</label>
                            <input type="date" class="form-control" name="date">
                            </div>
                        <div class="form-group">
                            <label>Amount</label>
                            <input type="number" class="form-control" name="amount">
                        </div>
                        <div class="form-group">
                            <div class="custom-control custom-switch">
                                <input type="checkbox" class="custom-control-input" id="customSwitch1" name="reminder" value="1">
                                <label class="custom-control-label" for="customSwitch1">Reminds me monthly</label>
                                <p><em>*You will be reminded when you don't make progress on this item more than a month ago since last progress is made</em></p>
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
    <div class="card">
        <div class="card-header">
            <div class="info-box bg-info">
                <span class="info-box-icon"><i class="fas fa-piggy-bank"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text">Saving Plans List</span>
                    <span class="info-box-number">Rp. {{ number_format($user->totalSaving()) }}</span>
                </div>
            </div> 
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-12">
                    <div class="row">
                        <div class="col-12">
                            @foreach($user->tabunganBerencanas as $id => $saving)
                                <div class="post">
                                    <div class="user-block">
                                        @if(!empty($saving->foto))
                                            <img class="img-circle img-bordered-sm" src="{{ asset("/images/savings/$saving->foto") }}" alt="user image">
                                        @endif
                                        <span class="username">
                                            <a href="#">{{ $saving->nama }}</a>
                                        </span>
                                        <span class="description">{{ $saving->waktu }}</span>
                                    </div>
                                    
                                    <p>{{$saving->keterangan}}</p>
                                    <div class="row">
                                        <div class="col-sm-9">
                                            <div class="progress mb-3">
                                                <div class="progress-bar bg-info" role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                        aria-valuemax="100" style="width: {{ $saving->getPercentage() }}%">
                                                    <span class="sr-only">{{ $saving->getPercentage() }}% Complete</span>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-sm-3">
                                            Rp. {{ number_format($saving->harga) }}
                                        </div>
                                    </div>
                                    @if($saving->getPercentage() != 100)
                                    <p>
                                        <a href="savings/{{ $saving->id }}/makeprogress" class="btn btn-sm btn-info">Set Income Aside</a>
                                    </p>
                                    @else
                                    <p>
                                        DONE ( ͡° ͜ʖ ͡°)
                                    </p>
                                    @endif
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

<!-- Bootstrap 4 -->
<script src="{{ asset('/AdminLTE-3.0.0-rc.5/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>