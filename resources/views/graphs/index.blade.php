@extends('layouts/admin_template')
@section('title', 'Graphs')
@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}">
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6">
            <!-- BAR CHART -->
            <div class="card card-olive">
                <div class="card-header">
                    <h3 class="card-title">Earning & Spending Comparison</h3>

                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
                    </div>
                </div>
                <div class="form-group">
                    <label>Period</label>
                    <select class="custom-select select-comparison" style="width: 100%;">
                        <option selected="selected" value="00">Today</option>
                        <option value="01">Yesterday</option>
                        <option value="02">Last 7 days</option>
                        <option value="03">Last 30 days</option>
                        <option value="04">This Month</option>
                        <option value="05">Last 3 Months</option>
                        <option value="06">This Year</option>
                    </select>
                </div>
                <div class="card-body">
                    <div id="bar-chart-container" class="chart">
                        <canvas id="barChart" style="height:230px; min-height:230px"></canvas>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <!-- SPENDING PIE CHART -->
            <div class="card card-indigo">
                <div class="card-header">
                  <h3 class="card-title">Spending Comparison</h3>
  
                  <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                    </button>
                    <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
                  </div>
                </div>
                <div class="form-group">
                    <label>Period</label>
                    <select class="custom-select select-spending" style="width: 100%;">
                        <option selected="selected" value="00">2019</option>
                        <option value="01">January 2019</option>
                        <option value="02">February 2019</option>
                        <option value="03">March 2019</option>
                        <option value="04">April 2019</option>
                        <option value="05">Mei 2019</option>
                        <option value="06">June 2019</option>
                        <option value="07">July 2019</option>
                        <option value="08">August 2019</option>
                        <option value="09">September 2019</option>
                        <option value="10">October 2019</option>
                        <option value="11">November 2019</option>
                        <option value="12">December 2019</option>
                    </select>
                </div>
                <div id="chart-container" class="card-body">
                  <canvas id="pieChart" style="height:230px; min-height:230px"></canvas>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <!-- EARNING PIE CHART -->
            <div class="card card-navy">
                <div class="card-header">
                    <h3 class="card-title">Earning Comparison</h3>
    
                    <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                    </button>
                    <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
                    </div>
                </div>
                <div class="form-group">
                    <label>Period</label>
                    <select class="custom-select select-earning" style="width: 100%;">
                        <option selected="selected" value="00">2019</option>
                        <option value="01">January 2019</option>
                        <option value="02">February 2019</option>
                        <option value="03">March 2019</option>
                        <option value="04">April 2019</option>
                        <option value="05">Mei 2019</option>
                        <option value="06">June 2019</option>
                        <option value="07">July 2019</option>
                        <option value="08">August 2019</option>
                        <option value="09">September 2019</option>
                        <option value="10">October 2019</option>
                        <option value="11">November 2019</option>
                        <option value="12">December 2019</option>
                    </select>
                </div>
                <div id="chart-container2" class="card-body">
                    <canvas id="pieChart2" style="height:230px; min-height:230px"></canvas>
                </div>
            </div>
        </div>
    </div>
</div><!-- /.container-fluid -->
@endsection

<!-- jQuery -->
<script src="{{ asset('/js/jquery-3.4.1.min.js') }}"></script>
<!-- ChartJS -->
<script src="{{ asset('/AdminLTE-3.0.0-rc.5/plugins/chart.js/Chart.min.js')}}"></script>
<script src="{{ asset('/AdminLTE-3.0.0-rc.5/dist/js/demo.js') }}"></script>
<script>
    $(function () {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        //-------------
        //- BAR CHART -
        //-------------
        function showComparison(res) {
            // Clear canvas
            $('#barChart').remove();
            $('#bar-chart-container').append('<canvas id="barChart" style="height:230px; min-height:230px"></canvas>');

            var areaChartData = {
                labels  : [$('.select-comparison').find(':selected').text()],
                datasets: [
                    {
                        label               : 'Earning',
                        backgroundColor     : 'rgba(60,141,188,0.9)',
                        borderColor         : 'rgba(60,141,188,0.8)',
                        pointRadius          : false,
                        pointColor          : '#3b8bba',
                        pointStrokeColor    : 'rgba(60,141,188,1)',
                        pointHighlightFill  : '#fff',
                        pointHighlightStroke: 'rgba(60,141,188,1)',
                        data                : [parseInt(res[0].total_pemasukan)]
                    },
                    {
                        label               : 'Spending',
                        backgroundColor     : 'rgba(210, 214, 222, 1)',
                        borderColor         : 'rgba(210, 214, 222, 1)',
                        pointRadius         : false,
                        pointColor          : 'rgba(210, 214, 222, 1)',
                        pointStrokeColor    : '#c1c7d1',
                        pointHighlightFill  : '#fff',
                        pointHighlightStroke: 'rgba(220,220,220,1)',
                        data                : [parseInt(res[0].total_pengeluaran)]
                    },
                ]
            };

            var barChartCanvas = $('#barChart').get(0).getContext('2d');
            var barChartData = $.extend(true, {}, areaChartData);
            var temp0 = areaChartData.datasets[0];
            var temp1 = areaChartData.datasets[1];
            barChartData.datasets[0] = temp1;
            barChartData.datasets[1] = temp0;

            var barChartOptions = {
                responsive              : true,
                maintainAspectRatio     : false,
                datasetFill             : false
            }

            var barChart = new Chart(barChartCanvas, {
                type: 'bar', 
                data: barChartData,
                options: barChartOptions
            });
        }
        
        $.ajax({
            type: 'GET',
            url: `${window.location.href}/show-comparison/00`,
            data: {},
            success: function(response) { 
                showComparison(response);
            },
            error: function(jqXHR, textStatus, errorThrown) {
            //   console.error(JSON.stringify(jqXHR));
                console.error("AJAX error: " + textStatus + ' : ' + errorThrown);
            }
        });

        $('.select-comparison').on('change', function() {
            var selectedIx = $(this).find(':selected').val();
            $.ajax({
                type: 'GET',
                url: `${window.location.href}/show-comparison/${selectedIx}`,
                data: {},
                success: function(response) {
                    showComparison(response);
                },
                error: function(jqXHR, textStatus, errorThrown) {
                //   console.error(JSON.stringify(jqXHR));
                    console.error("AJAX error: " + textStatus + ' : ' + errorThrown);
                }
            });
        });

        //----------------------
        //- SPENDING PIE CHART -
        //----------------------
        function showSpendingPie(res) {
            // Clear canvas
            $('#pieChart').remove();
            $('#chart-container').append('<canvas id="pieChart" style="height:230px; min-height:230px"></canvas>');

            var donutData = {
                labels: [],
                datasets: [{
                    data: [],
                    backgroundColor: []
                }]
            };

            $.each(res, function(key) {
                var obj = res[key];
                
                donutData.labels.push(obj.nama);
                donutData.datasets[0].data.push(obj.pengeluaran);
                donutData.datasets[0].backgroundColor.push('#'+(Math.random()*0xFFFFFF<<0).toString(16)); // Random Hex Color
            });

            // Get context with jQuery - using jQuery's .get() method.
            var pieChartCanvas = $('#pieChart').get(0).getContext('2d')
            var pieData        = donutData;
            var pieOptions     = {
                maintainAspectRatio : false,
                responsive : true,
            }
            //Create pie or douhnut chart
            // You can switch between pie and douhnut using the method below.
            var pieChart = new Chart(pieChartCanvas, {
                type: 'pie',
                data: pieData,
                options: pieOptions      
            })
        }
        
        $.ajax({
            type: 'GET',
            url: `${window.location.href}/show-spending-pie/00`,
            data: {},
            success: function(response) {
                showSpendingPie(response);
            },
            error: function(jqXHR, textStatus, errorThrown) {
            //   console.error(JSON.stringify(jqXHR));
                console.error("AJAX error: " + textStatus + ' : ' + errorThrown);
            }
        });

        $('.select-spending').on('change', function() {
            var selectedIx = $(this).find(':selected').val();
            $.ajax({
                type: 'GET',
                url: `${window.location.href}/show-spending-pie/${selectedIx}`,
                data: {},
                success: function(response) {
                    showSpendingPie(response);
                },
                error: function(jqXHR, textStatus, errorThrown) {
                //   console.error(JSON.stringify(jqXHR));
                    console.error("AJAX error: " + textStatus + ' : ' + errorThrown);
                }
            });
        });

        //----------------------
        //- EARNING PIE CHART -
        //----------------------
        function showEarningPie(res) {
            // Clear canvas
            $('#pieChart2').remove();
            $('#chart-container2').append('<canvas id="pieChart2" style="height:230px; min-height:230px"></canvas>');

            var donutData = {
                labels: [],
                datasets: [{
                    data: [],
                    backgroundColor: []
                }]
            };

            $.each(res, function(key) {
                var obj = res[key];
                
                donutData.labels.push(obj.nama);
                donutData.datasets[0].data.push(obj.pemasukan);
                donutData.datasets[0].backgroundColor.push('#'+(Math.random()*0xFFFFFF<<0).toString(16)); // Random Hex Color
            });

            // Get context with jQuery - using jQuery's .get() method.
            var pieChartCanvas = $('#pieChart2').get(0).getContext('2d')
            var pieData        = donutData;
            var pieOptions     = {
                maintainAspectRatio : false,
                responsive : true,
            }
            //Create pie or douhnut chart
            // You can switch between pie and douhnut using the method below.
            var pieChart = new Chart(pieChartCanvas, {
                type: 'pie',
                data: pieData,
                options: pieOptions      
            })
        }
        
        
        $.ajax({
            type: 'GET',
            url: `${window.location.href}/show-earning-pie/00`,
            data: {},
            success: function(response) {
                showEarningPie(response);
            },
            error: function(jqXHR, textStatus, errorThrown) {
            //   console.error(JSON.stringify(jqXHR));
                console.error("AJAX error: " + textStatus + ' : ' + errorThrown);
            }
        });

        $('.select-earning').on('change', function() {
            var selectedIx = $(this).find(':selected').val();
            $.ajax({
                type: 'GET',
                url: `${window.location.href}/show-earning-pie/${selectedIx}`,
                data: {},
                success: function(response) {
                    showEarningPie(response);
                },
                error: function(jqXHR, textStatus, errorThrown) {
                //   console.error(JSON.stringify(jqXHR));
                    console.error("AJAX error: " + textStatus + ' : ' + errorThrown);
                }
            });
        });
    })
</script>