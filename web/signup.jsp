<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup Page</title>
         <%@include file="css.jsp"%>
         <style type="text/css"> 
            .paint-card{
                box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
            }
        </style>
    </head>
    <body>
         <%@include file="navbar.jsp"%>
       <div class="container p-5">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card paint-card">
<div class="card-body">
    
<p class="fs-4 text-center">User Register</p>
    <c:if test="${not empty errorMsg}">
    <p class="text-center text-danger fs-3">${errorMsg} </p>   
    <c:remove var="errorMsg" scope="session"/>
</c:if>

<c:if test="${not empty sucMsg}">
    <p class="text-center text-success fs-3">${sucMsg} </p>   
    <c:remove var="sucMsg" scope="session"/>
</c:if>
    

     

<form action="UserRagister">
    
<div class="mb-3">
    
<label class="form-Label">Full Name</label> <input required
name="fullname" type="Text" class="form-control">

</div>
    
<div class="mb-3">
    
<label class="form-Label">Email address</label> <input required
name="email" type="email"  class="form-control">

</div>

    <div class="mb-3">
    
<label class="form-Label">Phone</label> <input required
name="phone" type="tel" maxlength="10" class="form-control">

</div>
    
<div class="mb-3">

<label class="form-Label">Create Password</label> <input required name="password" type="password" class="form-control">

</div>

<button type="submit" class="btn bg-success text-white col-md-12">Register</button>

</form>
</div>
</div>
</div
</div>
</div>
         
         
    </body>
</html>
