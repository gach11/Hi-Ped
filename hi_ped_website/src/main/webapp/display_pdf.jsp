<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("appointment_id");
String driver = "com.mysql.cj.jdbc.Driver";
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



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table id="table1">
		
		<%
		try {
			connection = DriverManager.getConnection(connectionUrl, userid, password);
			statement = connection.createStatement();
			String sql = "select * from prescription WHERE appointment_id = 2";
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
		%>
		<tr>
			<td><%=resultSet.getString("GENERIC")%></td>
			<td><%=resultSet.getString("BRAND")%></td>
			<td><%=resultSet.getString("FORM")%></td>
			<td><%=resultSet.getString("FREQUENCY")%></td>
			<td><%=resultSet.getString("DURATION")%></td>
			<td><%=resultSet.getString("INSTRUCTION")%></td>

		</tr>
		<%
		}
		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
	</table>
</body>
</html>