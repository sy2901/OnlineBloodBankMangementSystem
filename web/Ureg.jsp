<%-- 
    Document   : Ureg
    Created on : 20 Mar, 2021, 2:11:15 PM
    Author     : sy290
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
    </head>
    <body>
        <%
            try{
                String uid=request.getParameter("donerID");
                String name = request.getParameter("name");
                String fname=request.getParameter("fatherName");
                String mobile = request.getParameter("mobile");
                String email = request.getParameter("email");
                String gender = request.getParameter("gender");
                String dob = request.getParameter("dob");
                String bld = request.getParameter("bld");
                String location = request.getParameter("location");
                String pass = request.getParameter("pass");
                
          
                MyDb db = new MyDb();
                Connection con = db.getCon();
                String query="insert into uregister(uid,name,fname,mobile,email,gender,dob,bld,location,pass)values(?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement psmt=con.prepareStatement(query);
                psmt.setString(1, uid);
                psmt.setString(2,name);
                psmt.setString(3,fname);
                psmt.setString(4,mobile);
                psmt.setString(5,email);
                psmt.setString(6,gender);
                psmt.setString(7,dob);
                psmt.setString(8,bld);
                psmt.setString(9,location);
                psmt.setString(10,pass);
                psmt.executeUpdate();
                psmt.close();
                con.close();
                
                out.println("welocme : "+name);
                String redirectedPage = "/parentPage";
                response.sendRedirect("registrationsuccess.jsp");
      
       }catch(Exception e){
       out.println(e);
       }
      %>
    </body>
</html>
