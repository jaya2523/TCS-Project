<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LAB_D.aspx.cs" Inherits="Lab.LAB_D" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <!-- Required meta tags -->

    <meta charset="utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Purple Admin</title>

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

                            </span><b style="text-transform: uppercase; font-size: 20px; color: darkblue">LAB D Hardware Usage Analysis </b>

                        </h3>

                    </div>

                    <div class="row">

                        <div class="col-md-4 stretch-card grid-margin">
                            <marquee behavior="scroll" direction="up" scrollamount="6" id="myMarquee1">

                                <div class="card card-img-holder text-white" style="background-image: linear-gradient(135deg,#871f78 10%, #511348 100%);">

                                    <div class="card-body">

                                        <img src="circle.png" class="card-img-absolute" alt="circle-image" />

                                         <h4 class="font-weight-normal mb-3"><b>Actual Resource Consumption
                                            <br />
                                            of LAB D Per Day</b> &nbsp;<i class="mdi mdi-chart-line mdi-24px float-right"></i>

                                        </h4>

                                        <h2 class="mb-5"><%=total/5 %> Hours</h2>

                                        <h6 class="card-text"></h6>

                                    </div>

                                </div>
                            </marquee>

                        </div>

                        <div class="col-md-4 stretch-card grid-margin">
                            <marquee behavior="scroll" direction="up" scrollamount="6" id="myMarquee2">


                                <div class="card card-img-holder text-white" style="background-image: linear-gradient(135deg,#ffa69e 10%, #861657 100%)">

                                    <div class="card-body">

                                        <img src="circle.png" class="card-img-absolute" alt="circle-image" />

                                        <h4 class="font-weight-normal mb-3"><b>Actual Resource Consumption
                                            <br />
                                            of LAB D Per Week</b> &nbsp;<i class="mdi mdi-chart-line mdi-24px float-right"></i>

                                        </h4>

                                        <h2 class="mb-5"><%=(total2)/5 %> Hours</h2>

                                        <h6 class="card-text"></h6>

                                    </div>

                                </div>
                            </marquee>

                        </div>

                        <div class="col-md-4 stretch-card grid-margin">
                            <marquee behavior="scroll" direction="up" scrollamount="6" id="myMarquee3">


                                <div class="card card-img-holder text-white" style="background-image: linear-gradient(135deg, #78FFD6 10%,  #007991 100%);">


                                    <div class="card-body">

                                        <img src="circle.png" class="card-img-absolute" alt="circle-image" />

                                        <h4 class="font-weight-normal mb-3"><b>LAB Resource <br />Consumption </b><i class="mdi mdi-chart-line mdi-24px float-right"></i>

                                        </h4>

                                        <h2 class="mb-5">Decreased by <br /><%=(total3-total)*0.83%> %</h2>

                                        <h6 class="card-text"></h6>

                                    </div>

                                </div>
                            </marquee>

                            <script>
                                function startLoop() {
                                    setInterval("doSomething1()", 3175);
                                    setInterval("doSomething2()", 3175);
                                    setInterval("doSomething3()", 3175);
                                }
                                function doSomething1() {
                                    document.getElementById('myMarquee1').stop();
                                }
                                function doSomething2() {
                                    document.getElementById('myMarquee2').stop();
                                }
                                function doSomething3() {
                                    document.getElementById('myMarquee3').stop();
                                }
                            </script>
                        </div>

                    </div>


                    <div class="row">

                        <div class="page-header">

                            <h3 class="page-title">

                                <span class="page-title-icon text-white me-2" style="background-image: linear-gradient(135deg, #aa076b  10%,  #61045f 100%);">

                                    <i class="mdi mdi-chart-areaspline"></i>

                                </span><b style="text-transform: uppercase; font-size: 20px; color: darkblue">Actual Usage of Systems in LAB D</b>

                            </h3>
                        </div>


                        <div class="row">
                            <div class="col-xl-8 col-lg-7">
                                <div class="card shadow mb-4">

                                    <div class="card-body">
                                        <div class="wrapper">
                                            <canvas id="lineChart1" height="155"></canvas>
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

                                <span class="page-title-icon text-white me-2" style="background-image: linear-gradient(135deg, #ff5f6d  10%,  #ffc371 100%);">

                                    <i class="mdi mdi-chart-areaspline"></i>

                                </span><b style="text-transform: uppercase; font-size: 20px; color: darkblue">Expected Usage of Systems in LAB D According to the Time Table</b>

                            </h3>


                        </div>


                        <div class="row">
                            <div class="col-xl-8 col-lg-7">
                                <div class="card shadow mb-4">

                                    <div class="card-body">
                                        <div class="wrapper">
                                            <canvas id="lineChart2" height="155"></canvas>
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
                                        value: 0.18,
                                        fill: { gradient: ['#e08e84', '#61045f'] }
                                    }

                                    let options3 = {
                                        startAngle: -1.55,
                                        size: 150,
                                        value: 0.25,
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
                                        value: 0.16,
                                        fill: { gradient: ['#e08e84', '#61045f']}
                                    }

                                    let options4 = {
                                        startAngle: -1.55,
                                        size: 150,
                                        value: 0.25,
                                        fill: { gradient: ['#a8f905', '#0508f9']}
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

        var ctx = document.getElementById("lineChart1").getContext("2d"), gradient = ctx.createLinearGradient(0, 0, 0, 450), gradient2 = ctx.createLinearGradient(0, 0, 0, 450);

        gradient.addColorStop(0, 'rgba(97,4,95, 100)');

        gradient.addColorStop(0.5, 'rgba(131,0,128, 0.12)');

        gradient.addColorStop(1, 'rgba(232,164,156, 0)');

        gradient2.addColorStop(0, 'rgba(232,164,156, 100)');

        gradient2.addColorStop(0.5, 'rgba(242,180,172, 30)');

        gradient2.addColorStop(1, 'rgba(242,180,172, 0)');

        var chartData1;

        var chartData2;

        var ChartLabels;

        const colors = {

            green: {

                fill: '#ffffff',

                stroke: '#41a7b7',

            },

            lightBlue: {

                fill: '#63d1d9',

                stroke: '#41a7b7',

            },

            darkBlue: {

                fill: '#92bed2',

                stroke: '#173099',

            }

        };

        var ctxL = document.getElementById("lineChart1").getContext('2d');
        var myLineChart = new Chart(ctxL, {
            type: 'line',
            data: {
                labels: chartLabels,
                datasets: [{
                    label: "Observed Days",
                    data: chartData1,
                    fill: true,
                    backgroundColor: gradient2,
                    pointBackgroundColor: colors.green.fill,
                    borderColor: '#e08e84',
                    pointHighlightStroke: colors.green.fill,
                    borderCapStyle: 'butt',
                },
                {
                    label: "Observed Weeks",
                    data: chartData2,
                    fill: true,
                    backgroundColor: gradient,
                    pointBackgroundColor: colors.green.fill,
                    borderColor: '#61045f',
                    pointHighlightStroke: colors.darkBlue.fill,
                    borderCapStyle: 'butt',
                }
                ]
            },
            options: {
                responsive: true
            },
            animation: {

                duration: 750,

            },
        });
    </script>

    <asp:Literal runat="server" ID="ltChartData3"></asp:Literal>

    <asp:Literal runat="server" ID="ltChartData4"></asp:Literal>

    <script>

        var ctx = document.getElementById("lineChart2").getContext("2d"), gradient = ctx.createLinearGradient(0, 0, 0, 450), gradient2 = ctx.createLinearGradient(0, 0, 0, 450);

        gradient.addColorStop(0, 'rgba(207,249,5, 100)');

        gradient.addColorStop(0.5, 'rgba(207,249,5, 0.0)');

        gradient.addColorStop(1, 'rgba(207,249,5, 0)');

        gradient2.addColorStop(0, 'rgba(5,8,249, 100)');

        gradient2.addColorStop(0.5, 'rgba(56,59,255, 0.25)');

        gradient2.addColorStop(1, 'rgba(5,8,249, 0.02)');

        var chartData1;

        var chartData2;

        var ChartLabels;


        var ctxL = document.getElementById("lineChart2").getContext('2d');
        var myLineChart = new Chart(ctxL, {
            type: 'line',
            data: {
                labels: chartLabels,
                datasets: [{
                    label: "Observed Days",
                    data: chartData1,
                    fill: true,
                    backgroundColor: gradient2,
                    pointBackgroundColor: '#ffffff',
                    borderColor: '#0508f9',
                    pointHighlightStroke: '#fffff',
                    borderCapStyle: 'butt',
                },
                {
                    label: "Observed Weeks",
                    data: chartData2,
                    fill: true,
                    backgroundColor: gradient,
                    pointBackgroundColor: '#ffffff',
                    borderColor: '#a8f905',
                    pointHighlightStroke: '#92bed2',
                    borderCapStyle: 'butt',
                }
                ]
            },
            options: {
                responsive: true
            },
            animation: {

                duration: 750,

            },
        });
    </script>

</body>

</html>



