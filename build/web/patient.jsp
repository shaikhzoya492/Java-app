<%@page import="democ.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="democ.AppointmentDAO"%>
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
               <p class="fs-3 text-center">Patient Details</p>
               <table class="table">
                   <thead>
                       <tr>
                           
                           <th scope="col">Full Name</th>
                           <th scope="col">Gender</th>
                           <th scope="col">Age</th>
                           <th scope="col">Appointment</th>
                           <th scope="col">Email</th>
                           <th scope="col">Phone</th>
                           <th scope="col">Diseases</th>
                           <th scope="col">Doctor</th>
                           <th scope="col">Address</th>
                       </tr>  
                   </thead>
                   <tbody>
                       <%
                       AppointmentDAO dao=new AppointmentDAO(DBConnect.getConn());
                       List<Appointment> list=dao.getAllAppointment();
                       for(Appointment ap:list){
                       %>
                       
                       <tr>
                           <td><%=ap.getFullname()%></td>
                           <td><%=ap.getGender()%></td>
                           <td><%=ap.getAge()%></td>
                           <td><%=ap.getAppointDate()%></td>
                           <td><%=ap.getEmail()%></td>
                           <td><%=ap.getPhno()%></td>
                           <td><%=ap.getDiseases()%></td>
                           <td><%=ap.getDoctor()%></td>
                           <td><%=ap.getAddress()%></td>
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
