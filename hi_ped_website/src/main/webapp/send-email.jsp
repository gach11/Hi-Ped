<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
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
<!DOCTYPE html>

<html lang="en">
<link rel="icon" type="image/png" sizes="32x32"
	href="css/img/favicon-32x32.png">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1 maximum-scale=1.0">
<meta name="description" content="" />
<meta name="author" content="" />
<title>Send Email</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link href="css/stylesheets/stylesheet.css" rel="stylesheet">
</head>

<body>
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 bg_section_signup"
					style="background: url(css/images/message.jpg)"></div>
				<div class="col-12 m_bg_section_signup"></div>
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 signup_section">
					<form action="sendEmail" enctype="multipart/form-data"
						method="post">
						<div class="form-row">
							<input type="email" class="form-control" name="recipient"
								aria-describedby="emailHelp" placeholder="email@sample.com"
								required>
						</div>
						<div class="form-row">
							<input type="text" class="form-control" name="subject"
								placeholder="Subject" required>
						</div>
						<div class="form-row">
							<textarea rows="10" cols="5" class="form-control" id="content" name="content"
								style="height: 150px text-align;" placeholder="Message"
								required>Message</textarea>
						</div>
						<button type="submit" value="send" class="btn btn-outline-primary"
							id="myBtn">SEND</button>
						<a href="secretary_dashboard.jsp" style="text-decoration: none;"><button
								type="button" class="btn btn-outline-primary">BACK</button></a>
					</form><div></div>
					<div class="form-check">
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="#" onclick="myFunction()" class="btn btn-outline-link" style="font-family:Consolas MS; font-size:15px; text-align:center;">Click to paste receipt link</a></div>
				</div>
				<div id="myModal" class="modal">

					<!-- Modal content -->
					<div class="modal-content">
						<span class="close">&times;</span>
						<div class="header">
							<p>Email Sent Successfully!</p>
						</div>

					</div>
				</div>
			</div></div></div>

			<!-- jQuery -->
			<script>
				function myFunction() {
  					document.getElementById("content").value = "http://localhost:8080/hi_ped_website/css/ReceiptForm/RForm.jsp";
									}
			</script>
			<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
				integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
				crossorigin="anonymous"></script>
			<script
				src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
				integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
				crossorigin="anonymous"></script>
			<!-- Bootstrap JS -->
			<script
				src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
				integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
				crossorigin="anonymous"></script>
			<!-- Custom JS -->
			<script src="css/jss/index.js"></script>
			<script>

var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
</body>
</html>