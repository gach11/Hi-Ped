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
    <link rel="icon" type="image/png" sizes="32x32" href="css/img/favicon-32x32.png">
        <link rel="shortcut icon" type="image/x-icon" href="images/placeholder-titlelogo.png">
        <title>Doctor Dashboard</title>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700" rel="stylesheet">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/content/css/font-awesome.min.css" rel="stylesheet" />
        <link href="css/content/plugins/morris/morris.css" rel="stylesheet" />
        <link href="css/content/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/content/css/style.css" />
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    	<link rel="stylesheet" href="css/assets1/css/bootstrap.css">
    	<link rel="stylesheet" href="css/assets1/vendors/iconly/bold.css">
    	<link rel="stylesheet" href="css/assets1/vendors/perfect-scrollbar/perfect-scrollbar.css">
   	 	<link rel="stylesheet" href="css/assets1/vendors/bootstrap-icons/bootstrap-icons.css">
   	 	<link rel="stylesheet" href="css/assets1/css/app.css">
        
  
           
    </head>
    <body>
    	<div class="wrapper">
        	<!--header-->
            <div class="header">
            	<!--title header-->
				<div class="header-left">
				<h3 class="logo me-auto"><a href="index.html">
      	<img src="css/img/logo3.png" width="30" height="30" class="d-inline-block align-top" alt="">
   			Hi! Ped | Clinic</a></h3>	               
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
							<li class="active"> 
								<a href="master-admin.jsp"><i class="bi bi-journal-album" style="font-size:17px"></i> Doctor's Dashboards</a><br>
							</li>
							<li>
								<a href="doctor_request_dashboard.jsp"><i class="bi bi-journal-check" style="font-size:17px"></i> Appointment Records</a><br>
							</li>
							<li>
								<a href="doctor_appointment_dashboard.jsp"><i class="bi bi-journal-medical" style="font-size:17px"></i> Appointment Approval</a><br>
							</li>
							<li>
								<a href="#"><i class="bi bi-calendar-week" style="font-size:17px"></i> Calendar</a>
							</li>
						</ul>
					</div>
                </div>
            </div>
            <!-- dashboard -->
          	<decorator:body />
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