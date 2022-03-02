<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<html>

<head>
<meta charset="ISO-8859-1">
		<title>History Appointment</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="css/style_user.css">
		<link rel="icon" type="image/png" sizes="32x32" href="css/img/favicon-32x32.png">
		<style>
body {
	font-family: 'Varela Round', sans-serif;
}
.modal-confirm {		
	color: #636363;
	width: 325px;
	font-size: 14px;
}
.modal-confirm .modal-content {
	padding: 20px;
	border-radius: 5px;
	border: none;
}
.modal-confirm .modal-header {
	border-bottom: none;   
	position: relative;
}
.modal-confirm h4 {
	text-align: center;
	font-size: 26px;
	margin: 30px 0 -15px;
}
.modal-confirm .form-control, .modal-confirm .btn {
	min-height: 40px;
	border-radius: 3px; 
}
.modal-confirm .close {
	position: absolute;
	top: -5px;
	right: -5px;
}	
.modal-confirm .modal-footer {
	border: none;
	text-align: center;
	border-radius: 5px;
	font-size: 13px;
}	
.modal-confirm .icon-box {
	color: #fff;		
	position: absolute;
	margin: 0 auto;
	left: 0;
	right: 0;
	top: -70px;
	width: 95px;
	height: 95px;
	border-radius: 50%;
	z-index: 9;
	background: #82ce34;
	padding: 15px;
	text-align: center;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
}
.modal-confirm .icon-box i {
	font-size: 58px;
	position: relative;
	top: 3px;
}
.modal-confirm.modal-dialog {
	margin-top: 80px;
}
.modal-confirm .btn {
	color: #fff;
	border-radius: 4px;
	background: #82ce34;
	text-decoration: none;
	transition: all 0.4s;
	line-height: normal;
	border: none;
}
.modal-confirm .btn:hover, .modal-confirm .btn:focus {
	background: #6fb32b;
	outline: none;
}
.trigger-btn {
	display: inline-block;
	margin: 100px auto;
}
</style>
	</head>
    <body>
    
    	<div class="container-xl px-4 mt-4">
    	<!-- Account page navigation-->
    	<nav class="navbar navbar-expand-lg navbar-light bg-light justify-content-end">
        <a class="nav-link" href="userprofile.jsp">User Profile</a>
        <a class="nav-link active ms-0" href="#">History Appointment</a>
        <a class="nav-link" href="index.jsp">Home</a>
        <a href="patient_form.jsp" class="appointment-btn scrollto" style="text-decoration: none"><span class="d-none d-md-inline">Make an </span>Appointment</a>
   		 </nav>
   		 
   		  <hr class="mt-0 mb-4">
		 <!-- Billing history card-->
    <div class="card mb-4">
        <div class="card-header">Patient Form</div>
        <div class="card-body p-0">
            <!-- Billing history table-->
            <div class="table-responsive table-billing-history">
                <table class="table mb-0">
                    <thead>
                        <tr>
                            <th class="border-gray-200" scope="col">Category</th>
                            <th class="border-gray-200" scope="col">Patient Name</th>
                            <th class="border-gray-200" scope="col">Gender</th>
                            <th class="border-gray-200" scope="col">Date of Birth</th>
                            <th class="border-gray-200" scope="col">Age</th>
                            <th class="border-gray-200" scope="col">Gender</th>
                            <th class="border-gray-200" scope="col">Address</th>
                            <th class="border-gray-200" scope="col">Guardian</th>
                            <th class="border-gray-200" scope="col">Relation</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="card mb-4">
        <div class="card-header">Appointment History</div>
        <div class="card-body p-0">
            <div class="table-responsive table-billing-history">
                <table class="table mb-0">
                    <thead>
                        <tr>
                            <th class="border-gray-200" scope="col">Appointment ID</th>
                            <th class="border-gray-200" scope="col">Patient Name</th>
                            <th class="border-gray-200" scope="col">Date and Time</th>
                            <th class="border-gray-200" scope="col">Concern</th>
                            <th class="border-gray-200" scope="col">Status</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
  </div>
		
		
		<div class="sidebar-overlay" data-reff="#sidebar"></div>
    	<script src="css/content/js/jquery-3.2.1.min.js"></script>
    	<script src="css/content/js/bootstrap.min.js"></script>
   		<script src="css/content/js/jquery.slimscroll.js"></script>
    	<script src="css/content/plugins/morris/morris.js"></script>
    	<script src="css/content/plugins/raphael/raphael-min.js"></script>
    	<script src="css/content/js/app.js"></script>
    </body>


		<script src= "https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
		<script src= "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</html>

		
