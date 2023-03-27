<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Syst_Config_LB_C.aspx.cs" Inherits="Lab.Syst_Config_LB_C" %>



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


   
 <style>

    .hm-gradient {
         background-image: radial-gradient(circle, #ffffff 0%,        rgb(128,128,128) 99%,     rgb(128,128,128) 100%);
 }

 

    .darken-grey-text {

        color: #2E2E2E;

    }

        .hm2-gradient {
           background-image: linear-gradient(135deg, #6dd5ed  10%,  #2193b0 100%);
        }

    .input-group.md-form.form-sm.form-2 input {

        border: 1px solid #bdbdbd;

        border-top-left-radius: 0.25rem;

        border-bottom-left-radius: 0.25rem;

    }

 

        .input-group.md-form.form-sm.form-2 input.purple-border {

            border: 1px solid #9e9e9e;

        }

 

        .input-group.md-form.form-sm.form-2 input[type=text]:focus:not([readonly]).purple-border {

            border: 1px solid #ba68c8;

            box-shadow: none;

        }

 

    .form-2 .input-group-addon {

        border: 1px solid #ba68c8;

    }

 

    .danger-text {

        color: #ff3547;

    }

 

    .success-text {

        color: #00C851;

    }

 

    .table-bordered.red-border, .table-bordered.red-border th, .table-bordered.red-border td {

        border: 1px solid #ff3547 !important;

    }

 

    .table.table-bordered th {

        text-align: center;

    }

</style>




</head>

<body>

    <div class="container-scroller">

        <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row" style="background-image: linear-gradient(135deg, #b60f0f 10%, #d42057 100%);">

            <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center" style="background-color:#323030">

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

                <h2 style="color:white;margin-top:16px;margin-left:8px;text-transform:uppercase">Laboratory Hardware and Software Resource Usage Analysis</h2>

            </div>

        </nav>

        <!-- partial -->

        <div class="container-fluid page-body-wrapper">

            <!-- partial:partials/_sidebar.html -->

            <nav class="sidebar sidebar-offcanvas" id="sidebar">

                <ul class="nav">
                    <li class="nav-item">

                        <a class="nav-link" href="LAB_C.aspx">

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

                                <li class="nav-item"><a class="nav-link" href="LAB_D.aspx">LAB  D</a></li>

                            </ul>

                        </div>

                    </li>

                    <li class="nav-item">

                        <a class="nav-link" href="SoftUsg_LabC.aspx">

                            <span class="menu-title">Software Usage</span>

                            <i class="mdi mdi-laptop-mac menu-icon"></i>

                        </a>

                    </li>


                    <li class="nav-item">

                        <a class="nav-link" href="Syst_Config_LB_C.aspx">

                            <span class="menu-title">System Configuration</span>

                            <i class="mdi mdi-format-list-bulleted menu-icon"></i>

                        </a>

                    </li>

                    <li class="nav-item">

                        <a class="nav-link" href="SoftList_LB_C.aspx">

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

                <div class="content-wrapper" style="background-color:#ffe9e9">

        
 <div class="card mb-4">

                <div class="card-body hm2-gradient">

                     <br />
                    <div class="col-md-12">

                            <h1 style="color:midnightblue;text-align:center;font-family:'Century';font-weight:bold;">
                                SYSTEM &nbsp;HARDWARE &nbsp;CONFIGURATION <br />LAB &nbsp;C</h1>
                     </div>
                    <br /><br />

                   

                    <table class="table table-hover">

                        <thead>

                            <tr>

                                <th>S.No.</th>

                                <th>Name of Hardware</th>

                                <th>Version </th>

                            </tr>

                        </thead>

                        <tbody>

                            <tr> <th scope="row">1 </th> <td>System Make </td>   <td>LENOVO </td>   </tr>

                            <tr> <th scope="row">2 </th> <td>System Model </td> <td>Think Station P310</td> </tr>

                            <tr> <th scope="row">3 </th> <td>No. of System</td>  <td>26 NOS</td> </tr>

                            <tr> <th scope="row">4 </th> <td>Operating system</td>  <td>Windows 10 Pro 64-bit</td> </tr>

                            <tr> <th scope="row">5 </th> <td>CPU</td> <td>Intel Core i5-6400 CPU @ 2.70GHz, 4 Core,4 Threads</td> </tr>

                            <tr> <th scope="row">6 </th> <td>RAM</td> <td>16.0GB Single-DDR4</td> </tr>

                            <tr> <th scope="row">7 </th> <td>MotherBoard</td> <td>LENOVO SKYBAY (U3E1)</td> </tr>

                            <tr> <th scope="row">8 </th> <td>Graphics </td> <td>LEN T2324dC on NVIDIA Quadro K420</td> </tr>

                            <tr> <th scope="row">9 </th> <td>Storage</td> <td>1TB Western Digital WDC, Head-16, 7200 RPM</td> </tr>

                            <tr> <th scope="row">10 </th> <td>Monitor</td> <td>Lenovo Thinkvision t2324dc 23"</td></tr>

                            <tr> <th scope="row">11 </th> <td>Keyboard</td> <td>Lenovo USB KB1021</td> </tr>

                            <tr> <th scope="row">12 </th> <td>Mouse</td> <td>Lenovo USB Optical MOEUUOA</td> </tr>

                        </tbody>

                    </table>

                </div>

            </div>

        </div>


            <!-- content-wrapper ends -->

            <!-- partial:partials/_footer.html -->

            <footer class="footer" style="background-color:#480607">

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
    <!-- page-body-wrapper ends -->
   
    <!-- container-scroller -->

    <!-- plugins:js -->

    <script src="assets/vendors/js/vendor.bundle.base.js"></script>

    <!-- endinject -->

    <!-- Plugin js for this page -->

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
    
</body>

</html>





