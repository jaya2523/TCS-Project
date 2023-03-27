<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SoftUsg_LabD.aspx.cs" Inherits="Lab.SoftUsg_LabD" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <!-- Required meta tags -->

    <meta charset="utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Laboratory Hardware Software Usage Analysis</title>

    <!-- plugins:css -->

    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css" />

    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css" />

    <link rel="stylesheet" href="assets/css/style.css" />

    <link rel="shortcut icon" href="assets/images/favicon.ico" />



    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-circle-progress/1.2.2/circle-progress.min.js"></script>

    <style>
        .card2 .circle:hover .box {
            transform: translate(-50%, -50%) scale(0.91);
        }

        .card2 .circle .box span,
        .wrapper2 .card2 .text {
            background: -webkit-linear-gradient(left, #a445b2, #fa4299);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .card2 .circle:hover .box span {
            transform: translate(-45%, -45%) scale(1.09);
        }

        .card2 .text {
            font-size: 20px;
            font-weight: 900;
        }

        @media(max-width: 753px) {
            .wrapper2 {
                max-width: 700px;
            }

                .wrapper2 .card2 {
                    width: calc(50% - 20px);
                    margin-bottom: 20px;
                }
        }

        @media(max-width: 505px) {
            .wrapper2 {
                max-width: 500px;
            }

                .wrapper2 .card2 {
                    width: 100%;
                }
        }

        .circle .box span {
            font-size: 38px;
            font-family: sans-serif;
            font-weight: 600;
            transform: translate(-45%, -45%);
            transition: all 0.1s;
        }

        .card2 .circle .box {
            height: 100%;
            width: 100%;
            background: #fff;
            border-radius: 50%;
            transform: translate(-50%, -50%) scale(0.8);
            transition: all 0.2s;
        }

        .card2 .circle .box,
        .card .circle .box span {
            position: absolute;
            top: 50%;
            left: 50%;
        }

        .wrapper2 .card2 .circle {
            position: relative;
            height: 150px;
            width: 150px;
            border-radius: 50%;
            cursor: default;
        }

        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

        .wrapper2 {
            width: 1000px;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            margin-top: -14px;
            margin-left: -5px;
        }
    </style>
</head>

<body onload="startLoop();">

    <div class="container-scroller">

        <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row" style="background-image: linear-gradient(135deg, #b60f0f 10%, #d42057 100%);">

            <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center" style="background-color: #323030">

                <a class="navbar-brand brand-logo" href="index.html">
                    <img src="logo.jpg" alt="logo" style="height:48px;width:230px"/></a>

                <a class="navbar-brand brand-logo-mini" href="index.html">
                    <img src="suaslg.png" alt="logo" /></a>

            </div>

            <div class="navbar-menu-wrapper d-flex align-items-stretch">

                <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">

                    <span class="mdi mdi-menu"></span>

                </button>

                <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">

                    <span class="mdi mdi-menu"></span>

                </button>

                <h2 style="color: white; margin-top: 16px; margin-left: 8px; text-transform: uppercase">Laboratory Hardware and Software Resource Usage Analysis</h2>

            </div>

        </nav>

        <!-- partial -->

        <div class="container-fluid page-body-wrapper">

            <!-- partial:partials/_sidebar.html -->

            <nav class="sidebar sidebar-offcanvas" id="sidebar">

                <ul class="nav">
                    <li class="nav-item">

                        <a class="nav-link" href="LAB_D.aspx">

                            <span class="menu-title">Dashboard</span>

                            <i class="mdi mdi-desktop-mac-dashboard menu-icon"></i>

                        </a>

                    </li>

                    <li class="nav-item">

                        <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">

                            <span class="menu-title">Labs</span>

                            <i class="menu-arrow"></i>

                            <i class="mdi mdi-crosshairs-gps menu-icon"></i>

                        </a>

                        <div class="collapse" id="ui-basic">

                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"><a class="nav-link" href="LAB_A.aspx">LAB  A</a></li>

                                <li class="nav-item"><a class="nav-link" href="LAB_B.aspx">LAB  B</a></li>

                                <li class="nav-item"><a class="nav-link" href="LAB_C.aspx">LAB  C</a></li>

                            </ul>

                        </div>

                    </li>

                    <li class="nav-item">

                        <a class="nav-link" href="SoftUsg_LabD.aspx">

                            <span class="menu-title">Software Usage</span>

                            <i class="mdi mdi-laptop-mac menu-icon"></i>

                        </a>

                    </li>


                    <li class="nav-item">

                        <a class="nav-link" href="Syst_Config_LB_D.aspx">

                            <span class="menu-title">System Configuration</span>

                            <i class="mdi mdi-format-list-bulleted menu-icon"></i>

                        </a>

                    </li>

                    <li class="nav-item">

                        <a class="nav-link" href="SoftList_LB_D.aspx">

                            <span class="menu-title">List of Softwares</span>

                            <i class="mdi mdi-clipboard-text menu-icon"></i>

                        </a>

                    </li>

                    <li class="nav-item">

                        <a class="nav-link" href="Report.aspx">

                            <span class="menu-title">Report</span>

                            <i class="mdi mdi-chart-pie menu-icon"></i>

                        </a>

                    </li>


                </ul>

            </nav>

            <!-- partial -->

            <div class="main-panel">

                <div class="content-wrapper" style="background-color: #ffe9e9">

                    <div class="page-header">

                        <h3 class="page-title">

                            <span class="page-title-icon text-white me-2" style="background-image: linear-gradient(135deg, #aa076b  10%,  #61045f 100%);">

                                <i class="mdi mdi-home"></i>

                            </span><b style="text-transform: uppercase; font-size: 21px; color: darkblue">Software Usage Analysis of LAB D</b>

                        </h3>

                    </div>

                
                    <div class="row">

                        <div class="page-header">

                            <h3 class="page-title">

                                <span class="page-title-icon text-white me-2" style="background-image: linear-gradient(135deg, #aa076b  10%,  #61045f 100%);">

                                    <i class="mdi mdi-chart-bar-stacked"></i>

                                </span><b style="text-transform: uppercase; font-size: 20px; color: darkblue">Actual Usage of Softwares in LAB D</b>

                            </h3>


                        </div>

                        <div class="row">
                            <div class="col-xl-8 col-lg-7">
                                <div class="card shadow mb-4">
                                    <div class="card-body">
                                        <div class="wrapper">
                                            <canvas id="myChart4" height="345"></canvas>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 d-flex flex-column">

                                <div class="row flex-grow">

                                    <div class="col-md-6 col-lg-12 grid-margin stretch-card" style="height: 198px; margin-bottom: 25px">

                                        <div class="card card-rounded shadow">

                                            <div class="card-body pb-0">

                                                <div class="col-sm-6">

                                                    <div class="d-flex justify-content-between align-items-center mb-2 mb-sm-0">

                                                        <div class="circle-progress-width">


                                                            <div class="wrapper2">
                                                                <div class="card2">
                                                                    <div class="circle">
                                                                        <div class="bar1"></div>
                                                                        <div class="box"><span></span></div>
                                                                    </div>
                                                                    <div class="text" style="margin-left: 180px; margin-top: -120px; text-align: center; line-height: 1.5;">
                                                                        Actual &nbsp; Lab
                                                                        <br />
                                                                        Utilization
                                                                        <br />
                                                                        per &nbsp;Day
                                                                    </div>
                                                                </div>

                                                            </div>

                                                        </div>
                                                    </div>

                                                </div>

                                            </div>

                                        </div>

                                    </div>


                                    <div class="col-md-6 col-lg-12 grid-margin stretch-card" style="height: 203px;">

                                        <div class="card card-rounded shadow">

                                            <div class="card-body">

                                                <div class="row">

                                                    <div class="col-sm-6">

                                                        <div class="d-flex justify-content-between align-items-center">

                                                            <div class="circle-progress-width">

                                                                <div class="wrapper2">
                                                                    <div class="card2">
                                                                        <div class="circle">
                                                                            <div class="bar2"></div>
                                                                            <div class="box"><span></span></div>
                                                                        </div>
                                                                        <div class="text" style="margin-left: 180px; margin-top: -120px; text-align: center; line-height: 1.5;">
                                                                            Actual &nbsp; Lab
                                                                            <br />
                                                                            Utilization
                                                                            <br />
                                                                            per &nbsp;Week
                                                                        </div>
                                                                    </div>

                                                                </div>

                                                            </div>


                                                        </div>

                                                    </div>

                                                </div>

                                            </div>

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>
                    </div>


                    <div class="row">

                        <div class="page-header">

                            <h3 class="page-title">

                                <span class="page-title-icon text-white me-2" style="background-image: linear-gradient(135deg, #6dd5ed  10%,  #2193b0 100%);">

                                    <i class="mdi mdi-chart-bar-stacked"></i>

                                </span><b style="text-transform: uppercase; font-size: 20px; color: darkblue">Expected Usage of Softwares in LAB C According to Time Table</b>

                            </h3>


                        </div>

                        <div class="row">
                            <div class="col-xl-8 col-lg-7">
                                <div class="card shadow mb-4">
                                    <div class="card-body">
                                        <div class="wrapper">
                                            <canvas id="Stack" height="345"></canvas>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 d-flex flex-column">

                                <div class="row flex-grow">

                                    <div class="col-md-6 col-lg-12 grid-margin stretch-card" style="height: 198px; margin-bottom: 25px">

                                        <div class="card card-rounded shadow">

                                            <div class="card-body pb-0">

                                                <div class="col-sm-6">

                                                    <div class="d-flex justify-content-between align-items-center mb-2 mb-sm-0">

                                                        <div class="circle-progress-width">
                                                            <div class="wrapper2">
                                                                <div class="card2">
                                                                    <div class="circle">
                                                                        <div class="bar3"></div>
                                                                        <div class="box"><span></span></div>
                                                                    </div>
                                                                    <div class="text" style="margin-left: 170px; margin-top: -120px; text-align: center; line-height: 1.5;">
                                                                        Expected  Lab
                                                                        <br />
                                                                        Utilization
                                                                        <br />
                                                                        per &nbsp;Day
                                                                    </div>
                                                                </div>

                                                            </div>

                                                        </div>

                                                    </div>

                                                </div>

                                            </div>

                                        </div>

                                    </div>


                                    <div class="col-md-6 col-lg-12 grid-margin stretch-card" style="height: 203px;">

                                        <div class="card card-rounded shadow">

                                            <div class="card-body">

                                                <div class="row">

                                                    <div class="col-sm-6">

                                                        <div class="d-flex justify-content-between align-items-center">

                                                            <div class="circle-progress-width">
                                                                <div class="wrapper2">
                                                                    <div class="card2">
                                                                        <div class="circle">
                                                                            <div class="bar4"></div>
                                                                            <div class="box"><span></span></div>
                                                                        </div>
                                                                        <div class="text" style="margin-left: 170px; margin-top: -120px; text-align: center; line-height: 1.5;">
                                                                            Expected  Lab
                                                                            <br />
                                                                            Utilization
                                                                            <br />
                                                                            per &nbsp;Week
                                                                        </div>
                                                                    </div>

                                                                </div>

                                                            </div>

                                                        </div>

                                                    </div>

                                                </div>

                                            </div>

                                        </div>

                                    </div>

                                </div>
                                <asp:Literal runat="server" ID="ltChartData5"></asp:Literal>

                                <script>
                                    let options1 = {
                                        startAngle: -1.55,
                                        size: 150,
                                        value: 0.13,
                                        fill: { gradient: ['#e08e84', '#61045f'] }
                                    }

                                    let options3 = {
                                        startAngle: -1.55,
                                        size: 150,
                                        value: 0.14,
                                        fill: { gradient: ['#a8f905', '#0508f9'] }
                                    }

                                    $(".circle .bar1").circleProgress(options1).on('circle-animation-progress',
                                        function (event, progress, stepValue) {
                                            $(this).parent().find("span").text(String(stepValue.toFixed(2).substr(2)) + "%");
                                        });

                                    $(".circle .bar3").circleProgress(options3).on('circle-animation-progress',
                                        function (event, progress, stepValue) {
                                            $(this).parent().find("span").text(String(stepValue.toFixed(2).substr(2)) + "%");
                                        });

                                </script>


                                <asp:Literal runat="server" ID="ltChartData6"></asp:Literal>

                                <script>

                                    let options2 = {
                                        startAngle: -1.55,
                                        size: 150,
                                        value: 0.11,
                                        fill: { gradient: ['#e08e84', '#61045f'] }
                                    }

                                    let options4 = {
                                        startAngle: -1.55,
                                        size: 150,
                                        value: 0.11,
                                        fill: { gradient: ['#a8f905', '#0508f9'] }
                                    }

                                    $(".circle .bar2").circleProgress(options2).on('circle-animation-progress',
                                        function (event, progress, stepValue) {
                                            $(this).parent().find("span").text(String(stepValue.toFixed(2).substr(2)) + "%");
                                        });

                                    $(".circle .bar4").circleProgress(options4).on('circle-animation-progress',
                                        function (event, progress, stepValue) {
                                            $(this).parent().find("span").text(String(stepValue.toFixed(2).substr(2)) + "%");
                                        });
                                </script>

                            </div>


                        </div>


                    </div>

                </div>

                <!-- content-wrapper ends -->

                <!-- partial:partials/_footer.html -->

                <footer class="footer" style="background-color: #480607">

                    <div class="container-fluid d-flex justify-content-between">

                        <span class="text-muted d-block text-center text-sm-start d-sm-inline-block">Laboratory Hardware Software Usage Analysis</span>

                    </div>

                </footer>

                <!-- partial -->

            </div>

            <!-- main-panel ends -->

        </div>
        <!-- page-body-wrapper ends -->

    </div>
    <!-- container-scroller -->

    <!-- plugins:js -->

    <script src="assets/vendors/js/vendor.bundle.base.js"></script>

    <!-- endinject -->

    <!-- Plugin js for this page -->

    <script src="assets/vendors/chart.js/Chart.min.js"></script>

    <script src="assets/js/jquery.cookie.js" type="text/javascript"></script>

    <!-- End plugin js for this page -->

    <!-- inject:js -->

    <script src="assets/js/off-canvas.js"></script>

    <script src="assets/js/hoverable-collapse.js"></script>

    <script src="assets/js/misc.js"></script>

    <!-- endinject -->

    <!-- Custom js for this page -->

    <script src="assets/js/dashboard.js"></script>

    <script src="assets/js/todolist.js"></script>


    <!-- End custom js for this page -->

    <asp:Literal runat="server" ID="ltChartData1"></asp:Literal>

    <asp:Literal runat="server" ID="ltChartData2"></asp:Literal>

    <script> 

        var chartData1;

        var chartData2;

        var ChartLabels;

        var ctx = document.getElementById("myChart4").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: chartLabels,
                datasets: [{
                    label: 'Observed Days',
                    backgroundColor: "#e08e84",
                    data: chartData1,
                }, {
                    label: 'Observed Weeks',
                    backgroundColor: "#61045f",
                    data: chartData2,
                }],
            },
            options: {
                tooltips: {
                    displayColors: true,
                    callbacks: {
                        mode: 'x',
                    },
                },
                scales: {
                    xAxes: [{
                        stacked: true,
                        gridLines: {
                            display: false,
                        }
                    }],
                    yAxes: [{
                        stacked: true,
                        ticks: {
                            beginAtZero: true,
                        },
                        type: 'linear',
                    }]
                },
                responsive: true,
                maintainAspectRatio: false,
                legend: { position: 'bottom' },
            }
        });

    </script>



    <asp:Literal runat="server" ID="Literal1"></asp:Literal>

    <asp:Literal runat="server" ID="Literal2"></asp:Literal>

    <script> 

        var chartData1;
        var chartData2;
        var ChartLabels;
        var ctx = document.getElementById("Stack").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: chartLabels,
                datasets: [{
                    label: 'Observed Days',
                    backgroundColor: "#0508f9",
                    data: chartData1,
                }, {
                    label: 'Observed Weeks',
                    backgroundColor: "#a8f905",
                    data: chartData2,
                }],
            },
            options: {
                tooltips: {
                    displayColors: true,
                    callbacks: {
                        mode: 'x',
                    },
                },
                scales: {
                    xAxes: [{
                        stacked: true,
                        gridLines: {
                            display: false,
                        }
                    }],
                    yAxes: [{
                        stacked: true,
                        ticks: {
                            beginAtZero: true,
                        },
                        type: 'linear',
                    }]
                },
                responsive: true,
                maintainAspectRatio: false,
                legend: { position: 'bottom' },
            }
        });

    </script>


</body>

</html>


