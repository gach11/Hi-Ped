<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
    <style>
    .bottomleft {
  position: absolute;
  bottom: 8px;
  left: 16px;
  font-size: 18px;
}
    </style>
</head>

<body>
    <div id="app">
        <div id="sidebar" class="active">
            <div class="sidebar-wrapper active">
                <div class="sidebar-header">
                    <div class="d-flex justify-content-between">
                        <div class="logo">
                            <a href="index.html"><img src="" alt="" srcset="">User Profile</a>
                        </div>
                        <div class="toggler">
                            <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
                        </div>
                    </div>
                </div>
                <div class="sidebar-menu">
                    <ul class="menu">
                        <li class="sidebar-title">Menu</li>

                        <li class="sidebar-item active">
                            <a href="patient_profile.jsp" class='sidebar-link'>
                                <i class="bi bi-file-earmark-medical-fill"></i>
                                <span>Update Profile</span>
                            </a>
                        </li>
                                         
                        <li class="sidebar-item">
                            <a href="patient_appointment.jsp" class='sidebar-link'>
                                <i class="bi bi-file-medical-fill"></i>
                                <span>Appointment</span>
                            </a>
                        </li>

                        <li class="sidebar-item  ">
                            <a href="#" class='sidebar-link'>
                                <i class="bi bi-calendar-day-fill"></i>
                                <span>Calendar</span>
                            </a>
                        </li><br><br><br><br><br><br><br><br><br>                  
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
 
        <section class="section">
            <div class="card">
                <div class="card-header">
                    Profile
                </div>
                <div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit Profile
            		</c:if>
						<c:if test="${user == null}">
            			New Record
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="studentID" value="<c:out value='${user.studentID}' />" />
				</c:if>
				<br><br>
				<form>
				<fieldset class="form-group">
					<label>Full Name</label> <input type="text"
						value="<c:out value='${user.lastname}' />" class="form-control" 
						name="lastname" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>Email Address</label> <input type="text"
						value="<c:out value='${user.email}' />" class="form-control"
						name="email">
				</fieldset>
				<fieldset class="form-group">
				<label>Birthday</label> <input type="date"
						value="<c:out value='${user.firstname}' />" class="form-control"
						name="firstname" required="required">
				</fieldset>
				<fieldset class="form-group">
				<label>Age</label> <input type="text"
						value="<c:out value='${user.firstname}' />" class="form-control w-25"
						name="firstname" required="required">
				</fieldset>
				<fieldset class="form-group">
					<div class="form-check form-check-inline mx-auto">
  						<input class="form-check-input" type="radio" name="gender" id="gender1" value="Male">
  						<label class="form-check-label" for="gender1">Male</label>
					</div>
					<div class="form-check form-check-inline">
  						<input class="form-check-input" type="radio" name="gender" id="gender2" value="Female">
  						<label class="form-check-label" for="gender2">Female</label>
					</div> 
				</fieldset>
				<fieldset class="form-group">
				<label>Gender</label> <input type="text"
						value="<c:out value='${user.firstname}' />" class="form-control"
						name="firstname" required="required">
				</fieldset>
				<fieldset class="form-group">
				<label>Address</label> <input type="text"
						value="<c:out value='${user.firstname}' />" class="form-control"
						name="firstname" required="required">
				</fieldset>
				<fieldset class="form-group">
				<label>Guardian</label> <input type="text"
						value="<c:out value='${user.firstname}' />" class="form-control"
						name="firstname" required="required">
				</fieldset>
				

		

				<button type="submit" class="btn btn-success">Save</button>
				
				</form>
			</div>
		</div>
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