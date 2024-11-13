<%
response.setHeader("Cache-Control", "no-cache"); 
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor Page</title>
           <%@include file="css.jsp"%>
      
        <style type="text/css">
            .paint-card {
                box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
            }
            .error-message {
            color: red;
            text-align: center;
            font-size: 16px;
            margin-top: 20px;
        }
        </style>
        
    </head>
    <body>
       
        <%@include file="nvbr.jsp"%>
       <div class="container-fluid p-3">
           <div class="container p-3">
               <div class="row">
                   <div class="col-md-3 p-3"></div>
                   <div class="col-md-6">
                       <div class="card paint-card">
                           <div class="card-body">
                               <p class="text-center fs-3">Doctor</p>
                               <c:if test="${not empty errorMsg}">
                                   <p class="fs-4 text-center text-danger">${errorMsg}</p>
                                   <c:remove var="errorMsg" scope="session" />
                               </c:if>
                               <c:if test="${not empty succMsg}">
                                   <p class="fs-4 text-center text-success">${succMsg}</p>
                                   <c:remove var="succMsg" scope="session" />
                               </c:if>
                               <form class="row g-3" action="validate.jsp" >
                                   
                                   <div class="mb-3">
                                       <label class="form-label">Full Name</label>
                                       <input type="text" required name="fullname" class="form-control">
                                   </div>
                                   <div class="mb-3">
                                       <label class="form-label">DOB</label>
                                       <input type="date" required name="dob" class="form-control">
                                   </div>
                                   <div class="mb-3">
                                       <label class="form-label">Qualification</label>
                                       <input required name="qualification" type="text" class="form-control">
                                   </div>
                                   <div class="mb-3">
                                       <label class="form-label">Email</label>
                                       <input type="text" required name="email" class="form-control">
                                   </div>
                                   <div class="mb-3">
                                       <label class="form-label">Phone</label>
                                       <input type="text" required name="phone" maxlength="10" class="form-control">
                                   </div>
                                   <div class="mb-3">
                                       <label class="form-label">Password</label>
                                       <input type="password" required name="password" class="form-control">
                                   </div>
                                   <button type="submit" class="col-md-6 offset-md-3 btn btn-success">Submit</button>
                               </form>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
       </div>
      
    </body>
</html>