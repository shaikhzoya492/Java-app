<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Beans</title>
    </head>
    <body>
<jsp:useBean id="obj" scope="request" class="mypack.CheckerBean" >
<jsp:setProperty name="obj" property="*"/>
</jsp:useBean>
<%
if (obj.validate())
{ 
%>
<jsp:forward page="AddDoctor"/>
<%
}
else {
%>
<jsp:include page="doctor.jsp"/>
<%
}
%>
<%=obj.getError() %>
    </body>
</html>
