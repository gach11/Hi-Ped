<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% //In case, if User session is not set, redirect to Login page.
	

	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    
	session = request.getSession();
    
    if(session.getAttribute("Client")==null || session.getAttribute("Client")=="" || session.getAttribute("Client").equals("") )
    {
    	response.sendRedirect("login.jsp");
    }
 %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Client Profile</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style_user.css">
<link rel="icon" type="image/png" sizes="32x32" href="css/img/favicon-32x32.png">

</head>
<body>

<div class="container-xl px-4 mt-4">
    <!-- Account page navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light justify-content-end ">
        <a class="nav-link active ms-0" href="#">User Profile</a>
        <a class="nav-link" href="userprofile2.jsp">History Appointment</a>
        <a class="nav-link" href="index.html">Home</a>
         <a href="patient_form.jsp" class="appointment-btn scrollto" style="text-decoration: none"><span class="d-none d-md-inline">Make an </span> Appointment</a>
    </nav>
    
    <hr class="mt-0 mb-4">
    <div class="row">
        <div class="col-xl-4">
            <!-- Profile picture card-->
            <div class="card mb-4 mb-xl-0">
                <div class="card-header">Profile Picture</div>
                <div class="card-body text-center">
                    <!-- Profile picture image-->
                    <img class="img-account-profile rounded-circle mb-2" src="css/img/avataricon.png" alt="">
                </div>
            </div>
            
        </div>
        <div class="col-xl-8">
            <!-- Account details card-->
            <div class="card mb-4">
                <div class="card-header">Account Details</div>
                <div class="card-body">
                    <form>
                        <!-- Form Group (username)-->
                        <div class="mb-3">
                            <label class="labels" for="inputUsername">Fullname</label>
                            <input class="form-control" name="fullname" id="inputUsername" type="text" value="">
                        </div>
                        <!-- Form Row-->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (organization name)-->
                            <div class="col-md-6">
                                <label class="labels" for="inputOrgName">Username</label>
                                <input class="form-control" name="username" id="inputOrgName" type="text" value="<%=request.getAttribute("username") %>">
                            </div>
                            <!-- Form Group (location)-->
                            <div class="col-md-6">
                                <label class="labels" for="inputLocation">Email</label>
                                <input class="form-control" name = "email" id="inputLocation" type="text"  value="">
                            </div>
                            <div class="mb-3">
                                <label class="labels" for="currentPassword">Current Password</label>
                                <input class="form-control" name="password" id="currentPassword" type="password" value="<%=request.getAttribute("password") %>">
                            </div>
                            <div class="mb-3">
                                <label class="labels" for="newPassword">New Password</label>
                                <input class="form-control"name="newPassword" id="newPassword" type="password">
                            </div>
                            <div class="mb-3">
                                <label class="labels" for="currentPassword">Confirm Password</label>
                                <input class="form-control" name="confirmPassword" id="confirmPassword" type="password">
                            </div>
                        </div>
                        <!-- Save changes button-->
                        <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit">Save Profile</button></div>
                        </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
		<script src= "https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
		<script src= "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</html>

		
