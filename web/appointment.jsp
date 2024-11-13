
<%
response.setHeader("Cache-Control", "no-cache"); 
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>


<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

pageEncoding="ISO-8859-1"%>

<!DOCTYPE html> <html> <head>

<meta charset="ISO-8859-1">

<title>User Appointment</title>

<%@include file="css.jsp"%>

<style type="text/css">

.paint-card {

box-shadow: 0 0 3px 0 rgba(0, 0, 0, 0.3);

}


</style>

</head>

<body>

<%@include file="navbar.jsp"%>



<div class="container p-5">

<div class="row">

<div class="col-md-3 p-2">


</div>

<div class="col-md-6">

<div class="card paint-card"> <div class="card-body">

<p class="text-center fs-3">User Appointment</p>

<c:if test="${not empty errorMsg}">

<p class="fs-4 text-center text-danger">${errorMsg}</p>
<c:remove var="errorMsg" scope="session" />

</c:if>

<c:if test="${not empty succMsg}">

<p class=" fs-4 text-center text-success">${succMsg}</p>

<c:remove var="succMsg" scope="session" />

</c:if>

<form class="row g-3" action="AppointmentServlet" method="post">

<input type="hidden" name="userid" value="${userObj.id }">

<div class="col-md-6">

<label for="inputEmail4" class="form-Label">Full Name</label> <input required type="text" class="form-control" name="fullname">

</div>

<div class="col-md-6">

<label>Gender</label> <select class="form-control" name="gender" required> <option value="male">Male</option>

<option value="female">Female</option>

</select>

</div>

<div class="col-md-6">

<label for="inputEmail4" class="form-Label">Age</label> <input required type="age" maxlength="2" class="form-control" name="age">

</div>


<div class="col-md-6">

<label for="inputEmail4" class="form-Label">Appointment Date</label> <input type="date" class="form-control" required name="appoindate">

</div>

<div class="col-md-6"> <label for="inputEmail4" class="form-Label">Email</label> <input required type="email" class="form-control" name="email">

</div>

<div class="col-md-6"> <label for="inputEmail4" class="form-label">Phone No</label> <input maxlength="10"  required type="text" class="form-control" name="phno">

</div>

<div class="col-md-6">

<label for="inputEmail4" class="form-Label">Diseases</label> <input required type="text" class="form-control" name="diseases">

</div>

<div class="col-md-6"> <label for="inputPassword4" class="form-Label">Doctor</label>
<input required type="text" class="form-control" name="doctor">
</div>

<div class="col-md-12">

<label>Full Address</label>

<textarea required name="address" class="form-control" rows="3" cols=""></textarea>

</div>
<c:if test="${empty userObj}"> 
    <a href="user_login.jsp" class="col-md-6 offset-md-3 btn btn-success">submit</a>
</c:if>
    <c:if test="${not empty userObj}">
    <button class="col-md-6 offset-md-3 btn btn-success">Submit</button>

    </c:if>

</form>

</div>

</div>

</div>
</div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>