<?xml version="1.0" encoding="UTF-8" ?>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" --%>
<%--@page import="java.sql.DriverManager"--%>
<%--@page import="java.sql.ResultSet"--%>
<%--@page import="java.sql.Statement"--%>
<%--@page import="java.sql.Connection"--%>
<%--
	String driver = "com.mysql.cj.jdbc.Driver";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
--%>
<html>
    <head>
        <link rel="shortcut icon" type="image/x-icon" href="images/placeholder-titlelogo.png">
        <title>Mini Projects</title>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700" rel="stylesheet">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/content/css/font-awesome.min.css" rel="stylesheet" />
        <link href="css/content/plugins/morris/morris.css" rel="stylesheet" />
        <link href="css/content/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/content/css/style.css" />
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
    	<div class="wrapper">
        	<!--header-->
            <div class="header">
            	<!--title header-->
				<div class="header-left">
	                <div class="page-title-box pull-left" style="padding-top:0px">
	                <img src="css/img/logo3.png" style="height:50px"/>
	                </div>
                </div>
               
				<a id="mobile_btn" class="mobile_btn pull-left" href="#sidebar"><i class="fa fa-bars" aria-hidden="true"></i></a>
				<ul class="nav navbar-nav navbar-right user-menu pull-right">
					<li class="dropdown">
						<a href="profile.html" class="dropdown-toggle user-link" data-toggle="dropdown" title="user-pq">
							<!--Connected to the Database - Placeholder for now-->
							<span class="user-img"><img class="img-circle" src="content/images/user.jpg" width="40" alt="Admin">
							<span class="status online"></span></span>
							<span><%=request.getAttribute("username") %></span>
							<i class="caret"></i>
						</a>
						<ul class="dropdown-menu">
							<li><a href="profile.html">Account Profile</a></li>
							<li><a href="edit-profile.html">Edit Profile</a></li>
							<li><a href="settings.html">Settings</a></li>
							<li><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></li>
						</ul>
					</li>
				</ul>
            </div>
			<!--Sidebar-->
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
					<div id="sidebar-menu" class="sidebar-menu">
						<ul>
							<li> 
								<a href="master-admin.jsp"><i class="fa fa-caret-square-o-right" style="font-size:17px"></i> Doctor's Dashboard</a><br>
							</li>
							<li>
								<a href="doctor_request_dashboard.jsp"><i class="fa fa-archive" style="font-size:17px"></i> Appointment Request Records</a><br>
							</li>
							<li  class="active">
								<a href="doctor_appointment_dashboard.jsp"><i class="fa fa-archive" style="font-size:17px"></i> Records of Approved/Resched</a><br>
							</li>
							<li>
								<a href="#"><i class="fa fa-archive" style="font-size:17px"></i> Calendar</a>
							</li>
						</ul>
					</div>
                </div>
            </div><br><br><br><br>
            <!-- dashboard -->
            
         
                    
              	<decorator:body />
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
                    <table class="table table-sm" id="table1">
                      <thead class="thead-dark">
                        <tr>
                            <th>ID</th>
                            <th>Full Name</th>
                            <th>Birthday</th>
                            <th>Age</th>
                            <th>Gender</th>
                            <th>Address</th>
                            <th>Concern</th>
                            <th>Date and Time</th>
                            <th>Guardian</th>                        
                            <th>Actions</th>
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
								<td><c:out value="${user.address}" /></td> 
								<td><c:out value="${user.address}" /></td>   
                                <td><c:out></td>
                                <td><c:out></td>
                                
                                <td><a href="edit?studentID=<c:out value='${user.studentID}' />" class="btn btn-primary btn-sm"
                                    role="button" aria-pressed="true">Approve</a>
                                       &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?studentID=<c:out value='${user.studentID}' />" 
                                       class="btn btn-danger btn-sm" role="button" aria-pressed="true">Resched</a></td>                                                                                                
                            </tr>
                        </c:forEach>
            
                    </tbody>
                    </table>
                </div>
            </div>
        </section>


  
    </div>
		
		
		<div class="sidebar-overlay" data-reff="#sidebar"></div>
    	<script src="css/content/js/jquery-3.2.1.min.js"></script>
    	<script src="css/content/js/bootstrap.min.js"></script>
   		<script src="css/content/js/jquery.slimscroll.js"></script>
    	<script src="css/content/plugins/morris/morris.js"></script>
    	<script src="css/content/plugins/raphael/raphael-min.js"></script>
    	<script src="css/content/js/app.js"></script>
    </body>
</html>
            