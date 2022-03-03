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
String sql ="select * from appointmentdata where appointment_id="+appointment_id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html lang="en">
<link rel="icon" type="image/png" sizes="32x32" href="css/img/favicon-32x32.png">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1 maximum-scale=1.0">
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Update Status </title>
    <!-- Bootstrap css -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- Custom css -->
    <link href="css/stylesheets/Stylesheet2.css" rel="stylesheet">
  </head>

  <body>
    <div class="container-fluid ">
      <div class="container">
        <div class="row">
          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 bg_section_update">
          	<img src="css/images/doctor.png" style="width:700px; margin-top:20px;">           
          </div>
          <div class="col-12 m_bg_section_signup">          
          </div>
          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 signup_section">
            <form method="post" action="update-process.jsp">
              <h1>Update Status</h1>
              

			<div class="form-row">
				<input type="text" class="form-control" name="appointment_id" id=appointment_id  value="<%=resultSet.getString("appointment_id") %>" placeholder="ID" readonly>
			</div>
            <div class="form-row">
                <input type="text" class="form-control" name="fullname" id="fullname" value="<%=resultSet.getString("fullname") %>" placeholder="Full Name" readonly>
            </div>                     	                       	                                                		                                               
			<div class="form-row">								
   				 <input type="text" class="form-control" name="concern" id="concern" value="<%=resultSet.getString("concern") %>" placeholder="Concern" readonly>
 			</div>
 			<div class="form-row">
                <input type="text" class="form-control"  name="guardian" id="guardian" value="<%=resultSet.getString("guardian") %>" placeholder="Guardian" readonly>
            </div>
            <div class="form-row"> 
                <input type="text" class="form-control" name="datetime" id="datetime"  value="<%=resultSet.getString("datetime") %>" placeholder="Date and Time">

            </div> 
           
         	<div class="form-row">
         		<input type="text" class="form-control" name="status" value="<%=resultSet.getString("status") %>" placeholder="status">
         	</div>
			
            <center>
               <a href="doctor_dashboard.jsp" class="btn btn-primary">BACK</a>
               <button type="submit" class="btn btn-outline-primary" value="submit">SUBMIT</button>
               
               
            </center>
           

            </form>
            <%
			}
			connection.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
			%>
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
  </body>
</html>