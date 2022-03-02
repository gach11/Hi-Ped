<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String patientId=request.getParameter("patientId");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/telehealth?useSSL=false&serverTimezone=UTC&useLegacyDatetimeCode=false", "root", "Root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM appointmentselecteddata WHERE patientId="+patientId);
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<html>
<a href="doctor_appointment_request.jsp">Click here to go back</a>
</html>