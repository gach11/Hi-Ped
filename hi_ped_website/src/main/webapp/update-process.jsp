<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/telehealth?useSSL=false&serverTimezone=UTC&useLegacyDatetimeCode=false";%>
<%!String user = "root";%>
<%!String psw = "Root";%>
<%
String patientId = request.getParameter("patientId");
String fullname=request.getParameter("fullname");
String concern=request.getParameter("concern");
String datetime=request.getParameter("datetime");
String guardian=request.getParameter("guardian");
String status=request.getParameter("status");
if(patientId != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(patientId);

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="UPDATE appointmentselecteddata set patientId=?,fullname=?,concern=?,datetime=?,guardian=?, status=? where patientId="+patientId;
ps = con.prepareStatement(sql);
ps.setString(1,patientId);
ps.setString(2, fullname);
ps.setString(3, concern);
ps.setString(4, datetime);
ps.setString(5, guardian);
ps.setString(6, status);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully!");

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
<a href="doctor_appointment_request.jsp">Click here to go back</a>
</html>