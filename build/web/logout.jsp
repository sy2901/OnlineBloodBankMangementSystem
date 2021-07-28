<%-- 
    Document   : logout
    Created on : 20 Mar, 2021, 11:19:24 AM
    Author     : sy290
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
            String n =(String)session.getAttribute("uname");
            session.invalidate();
        %>
        
            <script> window.alert("LOGOUT SUCCESSFULLY");</script>
       
        <%
          String redirectedPage = "/parentPage";
          response.sendRedirect("index.jsp");
        
        
        %>
    </body>
</html>
