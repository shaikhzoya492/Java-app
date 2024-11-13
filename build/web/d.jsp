<%@page import="democ.DBConnect"%>
<%@page import="java.sql.Connection;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index Page</title>
        <%@include file="css.jsp"%>
        <style type="text/css"> 
            .paint-card{
                box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
            }
        </style>
    </head>
    <body>
    <%@include file="nav.jsp"%>
    
   
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="doc1.avif" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="doc2.avif" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="doc3.avif" class="d-block w-100" alt="..." height="500px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
    
    
<div class="container p-3">
<p class="text-center fs-2 ">Key Features of our Hospital</p>
<div class="row">
<div class="col-md-8 p-5">
<div class="row">
<div class="col-md-6">
<div class="card paint-card">
<div class="card-body">
<p class="fs-5">100% Safety</p>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
Voluptatem, inventore</p>

</div>
</div>
</div>

<div class="col-md-6">

<div class="card paint-card">

<div class="card-body">

<p class="fs-5">Clean Environment</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.

Voluptatem, inventore</p>

</div>

</div>

</div>

<div class="col-md-6 mt-2">

<div class="card paint-card">

<div class="card-body">

<p class="fs-5">Friendly Doctors</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.

Voluptatem, inventore</p>

</div>

</div>
</div>
    <div class="col-md-6 mt-2">

<div class="card paint-card">

<div class="card-body">

<p class="fs-5">Medical Research</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.

Voluptatem, inventore</p>

</div>
</div>
</div>
</div>
    </div>
    
    <div class="col-md-4">
        <img alt="" src="doc.avif" width="400px" height="380px" >
    </div>
    </div>
    </div>
        <%@include file="footer.jsp"%>  
    </body>
</html>