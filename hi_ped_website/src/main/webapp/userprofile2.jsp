<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="ISO-8859-1">
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
		<title>Client Profile</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="css/style_user.css">
		<link rel="icon" type="image/png" sizes="32x32" href="css/img/favicon-32x32.png">
		
		
		

	</head>
    <body>
    
    	<div class="container-xl px-4 mt-4">
    	<!-- Account page navigation-->
    	<nav class="navbar navbar-expand-lg navbar-light bg-light justify-content-end">
        <a class="nav-link" href="userprofile.jsp">User Profile</a>
        <a class="nav-link active ms-0" href="#">History Appointment</a>
        <a class="nav-link" href="index2.html">Home</a>
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
                            <th class="border-gray-200" scope="col">Amount</th>
                            <th class="border-gray-200" scope="col">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>#39201</td>
                            <td>06/15/2021</td>
                            <td>$29.99</td>
                            <td><span class="badge bg-light text-dark">Pending</span></td>
                        </tr>
                        <tr>
                            <td>#38594</td>
                            <td>05/15/2021</td>
                            <td>$29.99</td>
                            <td><span class="badge bg-success">Paid</span></td>
                        </tr>
                        <tr>
                            <td>#38223</td>
                            <td>04/15/2021</td>
                            <td>$29.99</td>
                            <td><span class="badge bg-success">Paid</span></td>
                        </tr>
                        <tr>
                            <td>#38125</td>
                            <td>03/15/2021</td>
                            <td>$29.99</td>
                            <td><span class="badge bg-success">Paid</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="card mb-4">
        <div class="card-header">Billing History</div>
        <div class="card-body p-0">
            <!-- Billing history table-->
            <div class="table-responsive table-billing-history">
                <table class="table mb-0">
                    <thead>
                        <tr>
                            <th class="border-gray-200" scope="col">Transaction ID</th>
                            <th class="border-gray-200" scope="col">Date</th>
                            <th class="border-gray-200" scope="col">Amount</th>
                            <th class="border-gray-200" scope="col">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>#39201</td>
                            <td>06/15/2021</td>
                            <td>$29.99</td>
                            <td><span class="badge bg-light text-dark">Pending</span></td>
                        </tr>
                        <tr>
                            <td>#38594</td>
                            <td>05/15/2021</td>
                            <td>$29.99</td>
                            <td><span class="badge bg-success">Paid</span></td>
                        </tr>
                        <tr>
                            <td>#38223</td>
                            <td>04/15/2021</td>
                            <td>$29.99</td>
                            <td><span class="badge bg-success">Paid</span></td>
                        </tr>
                        <tr>
                            <td>#38125</td>
                            <td>03/15/2021</td>
                            <td>$29.99</td>
                            <td><span class="badge bg-success">Paid</span></td>
                        </tr>
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

		
