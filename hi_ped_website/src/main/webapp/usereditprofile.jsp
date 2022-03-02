<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>


<title>Edit Profile</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/style_user.css">
<link rel="icon" type="image/png" sizes="32x32" href="css/img/favicon-32x32.png">

<div class="container">
<div class="row justify-content-center">
                    <div class="col-md-8 mt-lg-5">
                        <div class="card">
                            <div class="card-header">Edit Profile</div>
                            <div class="card-body">
                            
                            
                             <c:if test="${not empty succMsg }">
              				<h6 class = "text-left text-success">${succMsg}</h6>
              				<c:remove var="succMsg" scope="session"/>
              				</c:if>
              				
              				<c:if test="${not empty failedMsg}">
              				<h6 class = "text-left text-danger">${failedMsg}</h6>
              				<c:remove var="failedMsg" scope="session"/>
              				</c:if>

                                <form action="<%=request.getContextPath()%>/update" method="post">
                                <input type = "hidden" value="${currentUser.userId}" name="userId">

                                    <div class="form-group">
                                         <label class="labels" for="inputUsername">Username</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="username" id="name" value="${currentUser.username}"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="labels" for="inputOrgName">Fullname</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="fullname" id="fullname" value="${currentUser.fullname}" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="labels" for="inputLocation">Email</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="email" id="email" value="${currentUser.email}" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="labels" for="currentPassword">Password</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                <input type="password" class="form-control" name="password" id="password"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mt-5 text-center">
                                        <button type="submit" class="btn btn-primary profile-button">Submit</button>
                                        <a href="userprofile.jsp" class="btn btn-primary profile-button">Back</a>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
</div>