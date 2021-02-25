@extends('layouts/admin_template')
@section('title', 'Home')
@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <!-- Custom Tabs -->
                <div class="card">
                    <div class="card-header d-flex p-0">
                        <h3 class="card-title p-3">Get To Know This Application</h3>
                        <ul class="nav nav-pills ml-auto p-2">
                            <li class="nav-item"><a class="nav-link active" href="#tab_1" data-toggle="tab">Info</a></li>
                            <li class="nav-item"><a class="nav-link" href="#tab_2" data-toggle="tab">How To Use</a></li>
                        </ul>
                    </div><!-- /.card-header -->
                    <div class="card-body">
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab_1">
                                "Pecinta Duniawi" is a finance application which lets you manage your earning and spending. 
                                Thus, you have a better understanding on what you have available to spend after your regular bills have been accounted for. 
                                We also displays how much you spent your money monthly or yearly based on transaction time. Moreover,
                                you could start your savings goals, so you will never be missed to buy something you loved :)
                            </div>
                            <div class="tab-pane" id="tab_2">
                                Using this app is fairly easy. No prerequisite knowledge on finance or accounting is required. In fact, we designed this app 
                                to be intuitive, so that you could try things out without the feeling of being learning. Go ahead & don't feel hesitate to discover something great!
                            </div>
                        </div>
                        <!-- /.tab-content -->
                    </div><!-- /.card-body -->
                </div>
                <!-- ./card -->
            </div>
        </div>
        <div class="col-12">
            <div class="card card-default">
                <div class="card-header">
                    <h3 class="card-title">
                        <i class="fas fa-bullhorn"></i>
                        Announcements!
                    </h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <div class="callout callout-info">
                        <h5>This App Is 100% Free</h5>

                        <p>You won't be charged anything & We don't show any Ads. So, feel free to use this finance app as much as you like :)</p>
                    </div>
                </div>
                <!-- /.card-body -->
            </div>
        <!-- /.card -->
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-6 col-12">
                <!-- small card -->
                <div class="small-box bg-gray">
                <div class="inner">
                    <h3>Configuration</h3>

                    <p>Input Your Earning & Spending Seamlessly</p>
                </div>
                <div class="icon">
                    <i class="fas fa-cog"></i>
                </div>
                <a href="{{ url('configuration') }}" class="small-box-footer">
                    Input <i class="fas fa-arrow-circle-right"></i>
                </a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-md-6 col-12">
                <!-- small card -->
                <div class="small-box bg-info">
                <div class="inner">
                    <h3>Transactions</h3>
    
                    <p>Input Your Detailed Transactions Here</p>
                </div>
                <div class="icon">
                    <i class="fas fa-money-check-alt"></i>
                </div>
                <a href="{{ url('transaction') }}" class="small-box-footer">
                    Input <i class="fas fa-arrow-circle-right"></i>
                </a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-md-6 col-12">
                <!-- small card -->
                <div class="small-box bg-success">
                <div class="inner">
                    <h3>Overview</h3>
    
                    <p>View All Transactions</p>
                </div>
                <div class="icon">
                    <i class="fas fa-list-alt"></i>
                </div>
                <a href="{{ url('overviews') }}" class="small-box-footer">
                    View <i class="fas fa-arrow-circle-right"></i>
                </a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-md-6 col-12">
                <!-- small card -->
                <div class="small-box bg-warning">
                <div class="inner">
                    <h3>Graphs</h3>
    
                    <p>View Comparison Chart of Your Earning & Spending</p>
                </div>
                <div class="icon">
                    <i class="fas fa-chart-pie"></i>
                </div>
                <a href="{{ url('graphs') }}" class="small-box-footer">
                    View <i class="fas fa-arrow-circle-right"></i>
                </a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-md-6 col-12">
                <!-- small card -->
                <div class="small-box bg-danger">
                <div class="inner">
                    <div class="ribbon-wrapper">
                        <div class="ribbon bg-warning">
                            NEW
                        </div>
                    </div>

                    <h3>Saving Plans</h3>
                    <p>Now You Can Set Saving Targets. We'll Remind You To Save Periodically!</p>
                </div>
                <div class="icon">
                    <i class="fas fa-piggy-bank"></i>
                </div>
                <a href="{{ url('savings') }}" class="small-box-footer">
                    More info <i class="fas fa-arrow-circle-right"></i>
                </a>
                </div>
            </div>
            <!-- ./col -->
        </div>
    </div><!-- /.container-fluid -->
@endsection