<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/telehealth?useSSL=false&serverTimezone=UTC&useLegacyDatetimeCode=false";
String database = "telehealth";
String userid = "root";
String password = "Root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<html>
<link rel="icon" type="image/png" sizes="32x32"
	href="css/img/favicon-32x32.png">
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
<link rel="stylesheet" href="css/content/css/style2.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="css/assets1/css/bootstrap.css">
<link rel="stylesheet" href="css/assets1/vendors/iconly/bold.css">
<link rel="stylesheet"
	href="css/assets1/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet"
	href="css/assets1/vendors/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" href="css/assets1/css/app.css">
<link rel="shortcut icon" href="css/assets1/images/favicon.svg"
	type="image/x-icon">
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
							src="https://d1nhio0ox7pgb.cloudfront.net/_img/g_collection_png/standard/512x512/nurse.png"
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
						<li><a href="secretary_dashboard.jsp"><i
								class="bi bi-journal-album" style="font-size: 17px"></i>
								Secretary's Dashboard</a><br>
						<br></li>
						<li><a href="secretary_appointment_status_view.jsp"><i
								class="bi bi-journal-check" style="font-size: 17px"></i>
								Appointment Status</a><br></li>
						<li class="active"><a href="secretary_patient_list.jsp"><i
								class="bi bi-journal-medical" style="font-size: 17px"></i>
								Patient List</a><br></li>
						<li><a href="secretary_client_list.jsp"><i
								class="bi bi-card-list" style="font-size: 17px"></i> Client List</a><br></li>
						<li><a href="secretary_calendar.jsp"><i
								class="bi bi-calendar-week" style="font-size: 17px"></i>
								Calendar</a><br></li>
						<li><a href="send-email.jsp"><i class="bi bi-envelope"
								style="font-size: 17px"></i> Send E-mail</a></li>
					</ul>
				</div>
			</div>
		</div>
		<br>
		<br>
		<br>
		<br> <!-- dashboard -->
	</div>
	<div id="main">
		<header class="mb-3">
			<a href="#" class="burger-btn d-block d-xl-none"> <i
				class="bi bi-justify fs-3"></i>
			</a>
		</header>

		<section class="section">
			<div class="card">
				<div class="card-header">
					<h1 style="text-align: center">Patient List</h1>
				</div>
				<div class="card-body">
					<table class="table table-sm" id="table1">
						<thead class="thead-dark">
							<tr>
								<td style="text-align: center">ID</td>
								<td style="text-align: center">Category</td>
								<td style="text-align: center">Patient Name</td>
								<td style="text-align: center">Birthday</td>
								<td style="text-align: center">Age</td>
								<td style="text-align: center">Gender</td>
								<td style="text-align: center">Concern</td>
							</tr>
						</thead>
						<%
						try{
						connection = DriverManager.getConnection(connectionUrl+database, userid, password);
						statement=connection.createStatement();
						String sql ="select * from appointmentdata";
						resultSet = statement.executeQuery(sql);
						while(resultSet.next()){
						%>
						<tr>
							<td style="text-align: center"><%=resultSet.getString("appointment_id") %></td>
							<td style="text-align: center"><%=resultSet.getString("category") %></td>
							<td style="text-align: center"><%=resultSet.getString("fullname") %></td>
							<td style="text-align: center"><%=resultSet.getString("bod") %></td>
							<td style="text-align: center"><%=resultSet.getString("age") %></td>
							<td style="text-align: center"><%=resultSet.getString("gender") %></td>
							<td style="text-align: center"><%=resultSet.getString("concern") %></td>

						</tr>
						<%
						}
						connection.close();
						} catch (Exception e) {
						e.printStackTrace();
						}
						%>
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