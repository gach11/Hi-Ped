<?xml version="1.0" encoding="UTF-8" ?>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<link rel="shortcut icon" type="image/x-icon"
	href="images/placeholder-titlelogo.png">
<title>Hi! Ped | Clinic</title>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700"
	rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="css/content/css/font-awesome.min.css" rel="stylesheet" />
<link href="css/content/plugins/morris/morris.css" rel="stylesheet" />
<link href="css/content/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" href="css/content/css/style.css" />
<link rel="stylesheet"
	href="css/assets1/vendors/bootstrap-icons/bootstrap-icons.css">
</head>
<body>
	<div class="wrapper">
		<!--header-->
		<div class="header">
			<!--title header-->
			<div class="header-left">
				<div class="page-title-box pull-left" style="padding-top: 0px">
					<img src="css/img/logo3.png" style="height: 50px" />
				</div>
			</div>

			<a id="mobile_btn" class="mobile_btn pull-left" href="#sidebar"><i
				class="fa fa-bars" aria-hidden="true"></i></a>
			<ul class="nav navbar-nav navbar-right user-menu pull-right">
				<li class="dropdown"><a href="profile.html"
					class="dropdown-toggle user-link" data-toggle="dropdown"
					title="user-pq"> <!--Connected to the Database - Placeholder for now-->
						<span class="user-img"><img class="img-circle"
							src="https://cdn2.vectorstock.com/i/1000x1000/16/41/male-doctor-medical-design-icon-vector-20341641.jpg"
							width="40" alt="Doctor"><span class="status online"></span></span>
						<span>${currentUser.fullname}</span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="profile.html">Account Profile</a></li>
						<li><a href="edit-profile.html">Edit Profile</a></li>
						<li><a href="settings.html">Settings</a></li>
						<li><a href="login.jsp">Logout</a></li>
					</ul></li>
			</ul>
		</div>

		<!--Sidebar-->
		<div class="sidebar" id="sidebar">
			<div class="sidebar-inner slimscroll">
				<div id="sidebar-menu" class="sidebar-menu">
					<ul>
						<li class="active"><a href="doctor_dashboard.jsp"><i
								class="bi bi-journal-album" style="font-size: 12px"></i>
								Doctor's Dashboard</a><br>
						<br></li>
						<li><a href="doctor_appointment_request.jsp"><i
								class="bi bi-journal-check" style="font-size: 12px"></i>
								Appointment Request</a><br></li>
						<li><a href="doctor_appointment_status.jsp"><i
								class="bi bi-journal-medical" style="font-size: 12px"></i>
								Appointment Status</a><br></li>
						<li><a href="form.jsp"><i
								class="bi bi-calendar-week" style="font-size: 12px"></i>
								Prescription</a></li>
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