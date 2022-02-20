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

                        <li class="sidebar-item active ">
                            <a href="doctor_appointment.jsp" class='sidebar-link'>
                                <i class="bi bi-file-earmark-medical"></i>
                                <span>Appointment Records</span>
                            </a>
                        </li>
                                         
                        <li class="sidebar-item  ">
                            <a href="doctor_request.jsp" class='sidebar-link'>
                                <i class="bi bi-file-medical-fill"></i>
                                <span>Appointment Request</span>
                            </a>
                        </li>

                        <li class="sidebar-item  ">
                            <a href="doctor_calendar.jsp" class='sidebar-link'>
                                <i class="bi bi-calendar-day-fill"></i>
                                <span>Calendar</span>
                            </a>
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
        <section class="section">
            <div class="card">
                <div class="card-header">
                    Simple Datatable
                </div>
                <div class="card-body">
                    <table class="table table-striped" id="table1">
                      <thead class="thead-dark">
                        <tr>
                    
                            <th>ID</th>
                            <th>Full Name</th>
                            <th>Age</th>
                            <th>Guardian</th>
                            <th>Email</th>
                            <th>Address</th>
                          
                        </tr>
                    </thead>
                    <tbody>
                    
                        <c:forEach var="user" items="${listUser}">
    
                            <tr>
                                <td><c:out value="${user.studentID}" /></td>
                                <td><c:out value="${user.lastname}" /></td>
                                <td><c:out value="${user.firstname}" /></td>
                                <td><c:out value="${user.email}" /></td>
                                <td><c:out value="${user.address}" /></td>    
                                <td><c:out></td>                                                                                              
                            </tr>
                        </c:forEach>
                    </tbody>
                    </table>
                </div>
            </div>
        </section>


  
    </div>
    <script src="css/assets1/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="css/assets1/js/bootstrap.bundle.min.js"></script>
    
    <script src="css/assets1/vendors/apexcharts/apexcharts.js"></script>
    <script src="css/assets1/js/pages/dashboard.js"></script>
    <script src="css/assets1/js/main.js"></script>
</body>
</html>