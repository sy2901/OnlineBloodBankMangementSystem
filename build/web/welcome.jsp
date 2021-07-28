<%-- 
    Document   : welcome
    Created on : 21 Mar, 2021, 7:36:29 PM
    Author     : sy290
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <link rel="stylesheet" type="text/css" href="register.css"/>
        <meta name="keywords" content="ddddd" />
        <meta name="description" content="" />
        <link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
        <link href="css/demo.css" rel="stylesheet" type="text/css" />
        <link href="css/nivo-slider.css" rel="stylesheet" type="text/css" media="screen" />
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/jquery.nivo.slider.js" type="text/javascript"></script>
    </head>
    <body>
        <div id="tooplate_body_wrapper">
            <div id="tooplate_wrapper">
                <!--<div id="tooplate_top_bar">
                     <ul>
                         <li><a href="logout.jsp">Logout</a></li>
                     </ul>
                </div>-->
                
                <div id="tooplate_header">
                    <div id="site_title">
                        <h1> BLOOD BANK</h1>
                    </div>
                    
                    <div id="tooplate_menu">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href=rselectp.jsp>Join Us</a></li>
                            <li><a href="bloodbank.jsp">Blood Bank</a></li>
                            <li><a href="viewhospital.jsp">Hospital</a></li>
                            <li><a href="hospital.jsp">Search Donor</a></li>
                            <li><a href="welcome.jsp" class="current">Profile</a></li>
                            <li><a href="aboutus.jsp">About Us</a></li> 
                        </ul>    	
                    </div>
                </div>
            </div>
            
            <div id="tooplate_middle_subpage">
                
            </div>
            
            <%
                try{
                    String n =(String)session.getAttribute("uname");
                    MyDb db = new MyDb();
                    Connection con = db.getCon();
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("select name,email,mobile,gender,dob,bld,location from uregister where uid = '"+n+"'");
                    rs.next();
                    String name = rs.getString("name");
                    String email = rs.getString("email");
                    String mobile= rs.getString("mobile");
                    String gender = rs.getString("gender");
                    String dob = rs.getString("dob");
                    String bld = rs.getString("bld");
                    String location = rs.getString("location"); 
            
            %>
          
            <div style="background-color:lightblue /*#330D0D*/; color:red /*#ffffff*/; margin-top:0;">
                <div style="margin-left: 200px; padding-top: 20px; padding-bottom: 20px;">
                    <label style="margin-left: -100PX;">WELCOME       :</label> <%out.println(name);%>
                    <br/>
                    <br/>
                    <label>NAME       :</label> <%out.println(name);%>
                    <br/>
                    <label>EMAIL          :</label><%out.println(email);%>
                    <br/>
                    <label>GENDER          :</label> <%out.println(gender);%>
                    <br/>
                    <label>Date of Birth             :</label> <%out.println(dob);%>
                    <br/>
                    <label>BLOOD GROUP      :</label> <%out.println(bld);%>
                    <br/>
                    <label>LOCATION         :</label> <%out.println(location);%>
                </div>
           </div>
            
            <%
                }catch(Exception e){}

            %>
            
        </div>
            

    </body>
</html>
