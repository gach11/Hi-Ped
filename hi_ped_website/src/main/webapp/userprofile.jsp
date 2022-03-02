<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

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
        <a class="nav-link" href="index.jsp">Home</a>
         <a href="patient_form.jsp" class="appointment-btn scrollto" style="text-decoration: none"><span class="d-none d-md-inline">Make an </span> Appointment</a>
    </nav>
    
    <hr class="mt-0 mb-4">
    <div class="row justify-content-end">
        <div class="col-xl-4">
            <!-- Profile picture card-->
            <div class="card mb-4 mb-xl-0">
                <div class="card-header">Profile Picture</div>
                <div class="card-body text-center">
                    <!-- Profile picture image-->
                   <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                   <img class="rounded-circle mt-5" width="150px"src="css/img/avataricon.png" alt="">
                    <span class="font-weight-bold">${currentUser.fullname}</span><span class="text-black-50">${currentUser.email}</span><span> </span></div>
                </div>
            </div>
            
       </div> 
       
        <div class="col-xl-4 w-50">
        
            <!-- Account details card-->
            <div class="card mb-7" >
                <div class="card-header">Account Details</div>
                <div class="card-body">
                        <!-- Form Group (username)-->
                    <form >
                        <div class="mb-3">
                            <label class="labels" for="inputUsername">Username</label>
                            <input type ="text" readonly class="form-control-plaintext" name="username" id="inputUsername" type="text" value="${currentUser.username}">
                        </div>
                        <!-- Form Row-->
                        <div class="mb-3">
                            <!-- Form Group (organization name)-->
                            <div class="col-md-6">
                                <label class="labels" for="inputOrgName">Fullname</label>
                                <input type ="text" readonly class="form-control-plaintext" name="fullname" id="inputOrgName" type="text" value="${currentUser.fullname}">
                            </div>
                            <!-- Form Group (location)-->
                            <div class="col-md-6">
                                <label class="labels" for="inputLocation">Email</label>
                                <input type ="email" readonly class="form-control-plaintext" name = "email" id="inputLocation" type="text"  value="${currentUser.email}">
                            </div>
                            <div class="mb-3">
                                <label class="labels" for="currentPassword">Current Password</label>
                                <input type ="password" readonly class="form-control-plaintext" name="password" id="currentPassword" type="password" value="${currentUser.password}">
                            </div>
                            </div>
                        <div class="mt-5 text-center">
                        <a href="usereditprofile.jsp" class="btn btn-primary profile-button" type="submit">Edit Profile</a></div>
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

		
