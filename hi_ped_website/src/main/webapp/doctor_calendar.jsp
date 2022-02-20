<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hi! Ped Admin Dashboard</title>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/assets1/css/bootstrap.css">
    
    
    
    <link rel="stylesheet" href="css/assets1/vendors/iconly/bold.css">

    <link rel="stylesheet" href="css/assets1/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="css/assets1/vendors/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" href="css/assets1/css/app.css">
    <link rel="shortcut icon" href="css/assets1/images/favicon.svg" type="image/x-icon">
</head>

<body>
    <div id="app">
        <div id="sidebar" class="active">
            <div class="sidebar-wrapper active">
                <div class="sidebar-header">
                    <div class="d-flex justify-content-between">
                        <div class="logo">
                            <a href="index.html"><img src="" alt="" srcset="">Dashboard</a>
                        </div>
                        <div class="toggler">
                            <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
                        </div>
                    </div>
                </div>
                <div class="sidebar-menu">
                    <ul class="menu">
                        <li class="sidebar-title">Menu</li>

                        <li class="sidebar-item ">
                            <a href="doctor_appointment.jsp" class='sidebar-link'>
                                <i class="bi bi-file-earmark-medical-fill"></i>
                                <span>Appointment Records</span>
                            </a>
                        </li>
                                         
                        <li class="sidebar-item">
                            <a href="doctor_request.jsp" class='sidebar-link'>
                                <i class="bi bi-file-medical-fill"></i>
                                <span>Appointment Request</span>
                            </a>
                        </li>

                        <li class="sidebar-item active  ">
                            <a href="doctor_calendar.jsp" class='sidebar-link'>
                                <i class="bi bi-calendar-day-fill"></i>
                                <span>Calendar</span>
                            </a>
                        </li>
                        <br><br><br><br><br><br><br><br><br>                  
                      <br><br><br><br><br><br><br><br><br><br><br>
                        <li class="sidebar-item">
                          </span> <button type="button" class="btn btn-danger">Logout</button>                                                           
                        </li>    
                     </ul>                           
                </div>
            </div>
        </div>
    </div>
    <div id="main">
        <header class="mb-3">
            <a href="#" class="burger-btn d-block d-xl-none">
                <i class="bi bi-justify fs-3"></i>
            </a>
        </header>


  
    </div>
    <script src="css/assets1/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="css/assets1/js/bootstrap.bundle.min.js"></script>
    <script src="css/assets1/vendors/apexcharts/apexcharts.js"></script>
    <script src="css/assets1/js/pages/dashboard.js"></script>
    <script src="css/assets1/js/main.js"></script>
</body>
</html>