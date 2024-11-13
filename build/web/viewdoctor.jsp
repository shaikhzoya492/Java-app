<%@page import="democ.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="democ.DoctorDAO"%>
<%@page import="democ.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor Page</title>
        <%@include file="css.jsp"%>
             <style type="text/css"> 
            .paint-card{
                box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
            }
        </style>
    </head>
    <body>
       <%@include file="nvbr.jsp"%>
      
       <div class="col-md-12">
           <div class="card paint-card">
               <div class="card-body">
               <p class="fs-3 text-center">Doctor Details</p>
               <table class="table">
                   <thead>
                       <tr>
                           
                           <th scope="col">Full Name</th>
                           <th scope="col">DOB</th>
                           <th scope="col">Qualification</th>
                           <th scope="col">Email</th>
                           <th scope="col">Phone</th>
                           <th scope="col">Password</th>
                          
                       </tr>  
                   </thead>
                   <tbody>
                       <%
                       DoctorDAO dao=new DoctorDAO(DBConnect.getConn());
                       List<Doctor> list=dao.getAllDoctor();
                       for(Doctor ap:list){
                       %>
                       
                       <tr>
                           <td><%=ap.getFullName()%></td>
                           <td><%=ap.getDob()%></td>
                           <td><%=ap.getQualification()%></td>
                           <td><%=ap.getEmail()%></td>
                           <td><%=ap.getPhone()%></td>
                           <td><%=ap.getPassword()%></td>
                    
                       </tr>
                      <% } %>

                   </tbody>
               </table>
               </div>
           </div>
       </div>
      
     <%@include file="footer.jsp"%>  
    </body>
</html>
