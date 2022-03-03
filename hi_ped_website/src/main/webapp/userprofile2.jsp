<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <?xml version="1.0" encoding="UTF-8" ?>
 
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>

<%@ page import = "com.login.bean.LoginBean" %>
<%@ page import = "com.login.util.DBConnection" %>
<%@ page import = "com.login.dao.AppDaoImp" %>
<%@ page import = "com.login.controller.LoginServlet" %>
<%@ page import = "com.login.bean.AppointmentBean" %>
<%@ page import = "com.login.bean.LoginBean"%>
<%@ page import = "javax.servlet.http.HttpSession" %>
<%@ page import = "java.util.List" %>

<!DOCTYPE html>

<html>

<head>
<meta charset="ISO-8859-1">
		<title>History Appointment</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="css/style_user.css">
		<link rel="icon" type="image/png" sizes="32x32" href="css/img/favicon-32x32.png">
	</head>
    <body>
    
    	<div class="container-xl px-4 mt-4">
    	<!-- Account page navigation-->
    	   <input type = "hidden" value="${currentUser.userId}" name="userId">
    	<nav class="navbar navbar-expand-lg navbar-light bg-light justify-content-end">
        <a class="nav-link" href="userprofile.jsp">User Profile</a>
        <a class="nav-link active ms-0" href="#">History Appointment</a>
        <a class="nav-link" href="index2.jsp">Home</a>
        <a href="patient_form.jsp" class="appointment-btn scrollto" style="text-decoration: none"><span class="d-none d-md-inline">Make an </span>Appointment</a>
   		 </nav>
   		 
   		  <hr class="mt-0 mb-4">
    <div class="card mb-4">
        <div class="card-header">Appointment History</div>
        <div class="card-body p-0">
            <!-- Billing history table-->
            <div class="table-responsive table-billing-history">
                <table class="table mb-0">
                    <thead>
                        <tr>
                            <th class="border-gray-200" scope="col">Patient Name</th>
                            <th class="border-gray-200" scope="col">Concern</th>
                            <th class="border-gray-200" scope="col">Date and Time</th>
                            <th class="border-gray-200" scope="col">Status</th>
                        </tr>
                    </thead>
                    	<%
						LoginBean loginBean = (LoginBean) session.getAttribute("currentUser");
                    	AppDaoImp appDaoImp = new AppDaoImp(DBConnection.getConn());
                    	List<AppointmentBean> blist = appDaoImp.listAppointment(loginBean.getUserId());
                    	for (AppointmentBean b : blist){
						%>
						<tr>
							<td style="text-align:left;"><%=b.getPatientName() %></td>
							<td style="text-align:left;"><%=b.getMsg() %></td>
							<td style="text-align:left;"><%=b.getDatetime() %></td>
							<td style="text-align:left;">PENDING</td>
						</tr>
						<%
                    	}
						%>
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

		
