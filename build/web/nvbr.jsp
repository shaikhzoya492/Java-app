<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>

<nav class="navbar navbar-expand-Lg navbar-dark bg-success">

<div class="container-fluid">

<a class="navbar-brand" href="#"><i class="fa-solid fa-stethoscope"></i> Hospital Home</a>

<button class="navbar-toggler" type="button" data-bs-toggle="collapse"

data-bs-target="#navbarSupportedContent"

aria-controls="navbarSupportedContent" aria-expanded="false"

aria-label="Toggle navigation">

<span class="navbar-toggler-icon"></span>

</button>

<div class="collapse navbar-collapse" id="navbarSupportedContent">

<ul class="navbar-nav me-auto mb-2 mb-lg-0">

<li class="nav-item"><a class="nav-Link active" href="adminpage.jsp">HOME</a></li>

<li class="nav-item"><a class="nav-Link active" href="doctor.jsp">DOCTOR</a></li>
<li class="nav-item"><a class="nav-Link active" href="viewdoctor.jsp">VIEW DOCTOR</a></li>

<li class="nav-item"><a class="nav-Link active" href="patient.jsp">PATIENT</a></li>


</ul>
    

<form class="d-flex">

<div class="dropdown">

<button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">Admin</button>

<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1"> 

<li><a class="dropdown-item" href="adminlogin.jsp">Logout</a></li>

</ul>

</div>

</form>

</div>

</div>

</nav>