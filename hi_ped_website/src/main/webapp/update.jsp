<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String appointment_id = request.getParameter("appointment_id");
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from appointmentselecteddata where patientId="+appointment_id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update Status</h1>
<form method="post" action="update-process.jsp">
<input type="hidden" name="patientId" value="<%=resultSet.getString("appointment_id") %>">
<input type="text" name="patientId" value="<%=resultSet.getString("appointment_id") %>">
<br>
Full Name:<br>
<input type="text" name="fullname" value="<%=resultSet.getString("fullname") %>">
<br>
Concern:<br>
<input type="text" name="concern" value="<%=resultSet.getString("concern") %>">
<br>
Guardian:<br>
<input type="text" name="guardian" value="<%=resultSet.getString("guardian") %>">
<br><br>
Date and Time:<br>
<input type="text" name="datetime" value="<%=resultSet.getString("datetime") %>">
<br>
Status:<br>
<input type="text" name="status" value="<%=resultSet.getString("status") %>">
<br><br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>