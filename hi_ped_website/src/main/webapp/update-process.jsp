
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/telehealth?useSSL=false&serverTimezone=UTC&useLegacyDatetimeCode=false";%>
<%!String user = "root";%>
<%!String psw = "Root";%>
<%
String appointmentId = request.getParameter("appointmentId");
String fullname=request.getParameter("fullname");
String concern=request.getParameter("concern");
String datetime=request.getParameter("datetime");
String guardian=request.getParameter("guardian");
String status=request.getParameter("status");
if(appointmentId != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(appointmentId);

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="UPDATE appointmentdata set appointmentId=?,fullname=?,concern=?,datetime=?,guardian=?, status=? where appointmentId="+appointmentId;
ps = con.prepareStatement(sql);
ps.setString(1,appointmentId);
ps.setString(2, fullname);
ps.setString(3, concern);
ps.setString(4, datetime);
ps.setString(5, guardian);
ps.setString(6, status);
int i = ps.executeUpdate();
if(i > 0)
{


}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
<!DOCTYPE html>
<html>
  <head>
  <title>Hi! Ped | Clinic</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  </head>
    <style>
      body {
        text-align: center;
        padding: 40px 0;
        background: #EBF0F5;
      }
        h2 {
          color: #1977CC;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
          color: #404F5E;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-size:20px;
          margin: 0;
        }
      i {
        color: #1977CC;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
      }
    </style>
    <body>
     
      <div class="card">
      <div style="border-radius:200px; height:200px; width:200px; background: #C2E2FF; margin:0 auto;">
        <i class="checkmark"><span>&#10003;</span></i>
      </div><br>
        <h2>Success</h2> 
        <p>Status Updated Successfully<br/></p><br>
        <a type="button" class="btn btn-light" href="doctor_appointment_request.jsp">OK</a>      
      </div>
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>



