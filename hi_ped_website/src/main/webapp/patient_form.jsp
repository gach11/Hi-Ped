<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<link rel="icon" type="image/png" sizes="32x32" href="css/img/favicon-32x32.png">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1 maximum-scale=1.0"> <!-- корректное отображение на мобильных устройствах, отмена масштабирования -->
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Patient Form</title>
    <!-- Bootstrap css -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- Custom css -->
    <link href="css/stylesheets/Stylesheet2.css" rel="stylesheet">
  </head>

  <body>
    <div class="container-fluid ">
      <div class="container">
        <div class="row">
          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 bg_section_signup">           
          </div>
          <div class="col-12 m_bg_section_signup">          
          </div>
          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 signup_section">
            
            <form action = "<%=request.getContextPath()%>/appointment" class="needs-validation" novalidate method="post">
            <input type = "hidden" value="${currentUser.userId}" name="userId">
			
              <h1>Patient Form</h1>
	               <c:if test="${not empty succMsg }">
		             <h6 class = "text-left text-success">${succMsg}</h6>
		              <c:remove var="succMsg" scope="session"/>
		              </c:if>
		              				
		              <c:if test="${not empty failedMsg}">
		              <h6 class = "text-left text-danger">${failedMsg}</h6>
		              <c:remove var="failedMsg" scope="session"/>
		              </c:if>
              
			<div class="form-row">  
				<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="category"  id="cat1" value="Infant">
  					<label class="form-check-label" for="cat1">Infant</label>
				</div>
				<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="category" id="cat2" value="Children">
  					<label class="form-check-label" for="cat2">Children</label>
				</div>
				<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="category" id="cat3" value="Adolescents">
  					<label class="form-check-label" for="cat3">Adolescent</label>
				</div>
            </div>
			<div class="form-row">
				<input type="text" class="form-control"  id="patientname" name="name"  placeholder="Patient Name" required>
			</div>
            <div class="form-row">
                <input type="text" class="form-control"  id="number" name="cnumber"  placeholder="Contact Number" required>
            </div>
            <div class="form-row">
                <input type="date" class="form-control"  id="bod" name="bod" placeholder="Birthdate"required>
            </div>                     	                       	                                                
		<div class="form-row">
                <input type="text" class="form-control  w-25"  id="age" name="age"  placeholder="Age" required>    
                            
            <div class="form-check form-check-inline mx-auto">
  				<input class="form-check-input" type="radio" name="gender" id="gender1" value="Male">
  				<label class="form-check-label" for="gender1">Male</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="gender" id="gender2" value="Female">
  				<label class="form-check-label" for="gender2">Female</label>
			</div>         
		</div>                                        
            <div class="form-row">
                <input type="text" class="form-control"  id="address" name="address"  placeholder="Address" required>
            </div>            
			<div class="form-row">								
   				 <textarea placeholder="Condition" class="form-control" id="concern" name="msg" rows="3" required></textarea>
 			</div>
            <div class="form-row"> <p id="privacyTerms" class="small_text"><a>
               Appointment Schedule</a>
              </p> 
                <input type="datetime-local" id="Test_DatetimeLocal" name="datetime" class="form-control"required>
            </div>            
              <p id="privacyTerms" class="small_text"><a>
                Guardian Info </a>
              </p>              
             <div class="form-row">
				<input type="text" class="form-control"  id="guardian" name="guardian"  placeholder="Guardian's Fullname"required>
			</div>
			 <div class="form-row">
				<input type="text" class="form-control"  id="relation" name="relation"  placeholder="Relationship" required>
			</div>              
            <center>
               <a href="index2.jsp" class="btn btn-primary">BACK</a>
				<button type="submit" class="btn btn-outline-primary">SUBMIT</button>
              </center><br><br><br><br><br><br>
            </form>
          </div>
      </div>
    </div>
    </div>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity ="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <!-- Custom JS -->
    <script src="css/jss/index.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  </body>
</html>