<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Lab.Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <!-- Required meta tags -->

    <meta charset="utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Laboratory Hardware Software Resource Usage Analysis</title>

    <!-- plugins:css -->

    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css" />

    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css" />

    <link rel="stylesheet" href="assets/css/style.css" />

    <link rel="shortcut icon" href="assets/images/favicon.ico" />


    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-circle-progress/1.2.2/circle-progress.min.js"></script>
</head>
<body>

<div class="container-scroller"  >

       <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row" style="background-image: linear-gradient(135deg, #b60f0f 10%, #d42057 100%);">

           

            <div class="navbar-menu-wrapper d-flex align-items-stretch" style="width:100%">

                <img src="logo.png" alt="" width="200" height="50" style="margin-top:10px;margin-left:-23px"/>

                <h2 style="color: white; margin-top: 16px; margin-left: 20px; text-transform: uppercase">Laboratory Hardware and Software Resource Usage Analysis</h2>

            </div>

        </nav>

        <!-- partial -->

        <div class="container-fluid page-body-wrapper">

            <!-- partial:partials/_sidebar.html -->

            <!-- partial -->

            <div class="main-panel"  style="width:100%">

                <div class="content-wrapper" style="background-color: #ffe9e9">

                    <div class="page-header">

                        <h3 class="page-title" style="color:white">

                            <span class="page-title-icon bg-gradient-primary text-white me-2">

                                <i class="mdi mdi-home"></i>

                            </span><b> <span class="menu-title" style="text-transform:uppercase;font-size:19.5px;color:darkblue">Report</span></b>

                        </h3>

                    </div>
                    <div class="row"  >
                        <div class="page-header">
                            <div class="row">
                            <div class="col-xl-8 col-lg-7">
                                <h3 class="page-title" style="color:white">

                                <span class="page-title-icon bg-gradient-primary text-white me-2">

                                    <i class="mdi mdi-chart-bar-stacked"></i>

                                </span><b> <span class="menu-title" style="text-transform:uppercase;font-size:19.5px;color:darkblue">Lab A  Usage by Students per Day</span></b>

                            </h3>
                            </div>
                            <div class="col-lg-4 d-flex flex-column">
                                 <h3 class="page-title" style="width:500px;margin-left:62px;color:white">

                                <span class="page-title-icon bg-gradient-primary text-white me-2" >

                                    <i class="mdi mdi-chart-bar-stacked"></i>

                                </span><b> <span class="menu-title" style="text-transform:uppercase;font-size:19.5px;color:darkblue">Lab B  Usage by Students per Day</span></b>

                            </h3>
                            </div>
                            </div>
                           


                        </div>
                        <div class="row">
                            <div class="col-xl-8 col-lg-7"  >
                                <div class="card shadow mb-4" style="width:705px">
                                    <div class="card-body">
                                        <div class="wrapper">
                                            <canvas id="Chart1" height="300"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                           <div class="col-lg-4 d-flex flex-column">
        <div class="card shadow mb-4" style="width:705px;margin-left:-220px">
                                    <div class="card-body">
                                        <div class="wrapper">
                                            <canvas id="Chart2" height="300"></canvas>
                                        </div>

                                    </div>
                                </div>

                            </div>


                        </div>
                    </div>
                      <div class="row">
                        <div class="page-header">
                            <div class="row">
                            <div class="col-xl-8 col-lg-7">
                                <h3 class="page-title" style="color:white">

                                <span class="page-title-icon bg-gradient-primary text-white me-2">

                                    <i class="mdi mdi-chart-bar-stacked"></i>

                                </span><b> <span class="menu-title" style="text-transform:uppercase;font-size:19.5px;color:darkblue">Lab C  Usage by Students per Day</span></b>

                            </h3>
                            </div>
                            <div class="col-lg-4 d-flex flex-column">
                                 <h3 class="page-title" style="width:500px;margin-left:62px;color:white">

                                <span class="page-title-icon bg-gradient-primary text-white me-2" >

                                    <i class="mdi mdi-chart-bar-stacked"></i>

                                </span><b> <span class="menu-title" style="text-transform:uppercase;font-size:19.5px;color:darkblue">Lab D  Usage by Students per Day</span></b>

                            </h3>
                            </div>
                            </div>
                           


                        </div>
                        <div class="row">
                            <div class="col-xl-8 col-lg-7">
                                <div class="card shadow mb-4" style="width:705px">
                                    <div class="card-body">
                                        <div class="wrapper">
                                            <canvas id="Chart3" height="300"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                           <div class="col-lg-4 d-flex flex-column">
        <div class="card shadow mb-4" style="width:705px;margin-left:-220px">
                                    <div class="card-body">
                                        <div class="wrapper">
                                            <canvas id="Chart4" height="300"></canvas>
                                        </div>

                                    </div>
                                </div>

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

        </div></div>
        <!-- page-body-wrapper ends -->
   
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

              <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.min.js"></script>      
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
          <asp:Literal runat="server" ID="ltChartData1"></asp:Literal>
             <script>
                 var chartData1;
                 const data1 = {
                     labels: [
                         '1st year',
                         '2nd year',
                         '3rd year',
                         '4th year'
                     ],
                     datasets: [{
                         label: 'My First Dataset',
                         data: chartData1,
                         backgroundColor: [
                             'rgb(154, 18, 172)',
                             'rgb(255, 205, 86)',
                             'rgb(230, 126, 34,1)',
                             'rgb(255,152,203)',
                         ],
                     }],

                 };
                 const config2 = {
                     type: 'polarArea',
                     data: data1,
                     options: {}
                 };
                 const myChart2 = new Chart(
                     document.getElementById('Chart1'),
                     config2
                 );
             </script>
        <asp:Literal runat="server" ID="ltChartData2"></asp:Literal>
          <script>
              var chartData2;
              const data2 = {
                  labels: [
                      '1st year',
                      '2nd year',
                      '3rd year',
                      '4th year'
                  ],
                  datasets: [{
                      label: 'My First Dataset',
                      data: chartData2,
                      backgroundColor: [
                          'rgb(154, 18, 172)',
                          'rgb(255, 205, 86)',
                          'rgb(230, 126, 34,1)',
                          'rgb(255,152,203)',
                      ],
                  }],

              };
              const config3 = {
                  type: 'polarArea',
                  data: data2,
                  options: {}
              };
              const myChart3 = new Chart(
                  document.getElementById('Chart2'),
                  config3
              );
          </script>
          <asp:Literal runat="server" ID="ltChartData3"></asp:Literal>
           <script>
               var chartData3;
               const data3 = {
                   labels: [
                       '1st year',
                       '2nd year',
                       '3rd year',
                       '4th year'
                   ],
                   datasets: [{
                       label: 'My First Dataset',
                       data: chartData3,
                       backgroundColor: [
                           'rgb(154, 18, 172)',
                           'rgb(255, 205, 86)',
                           'rgb(230, 126, 34,1)',
                           'rgb(255,152,203)',
                       ],
                   }],

               };
               const config4 = {
                   type: 'polarArea',
                   data: data3,
                   options: {}
               };
               const myChart4 = new Chart(
                   document.getElementById('Chart3'),
                   config4
               );
           </script>
        <asp:Literal runat="server" ID="ltChartData4"></asp:Literal>
           <script>
               var chartData4;
               const data4 = {
                   labels: [
                       '1st year',
                       '2nd year',
                       '3rd year',
                       '4th year'
                   ],
                   datasets: [{
                       label: 'My First Dataset',
                       data: chartData4,
                       backgroundColor: [
                           'rgb(154, 18, 172)',
                           'rgb(255, 205, 86)',
                           'rgb(230, 126, 34,1)',
                           'rgb(255,152,203)',
                       ],
                   }],

               };
               const config5 = {
                   type: 'polarArea',
                   data: data4,
                   options: {}
               };
               const myChart5 = new Chart(
                   document.getElementById('Chart4'),
                   config5
               );
           </script>
       
</body>
</html>
