<%-- 
    Document   : hospital
    Created on : 20 Mar, 2021, 2:41:41 PM
    Author     : sy290
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="register.css"/>
        <title>Doner</title>
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
                            <li><a href="hospital.jsp" class="current">Search Donor</a></li>
                            <%
                                String un =(String)session.getAttribute("uid");
                                if(un!=null)
                                {
                            %>
                            <li><a href="welcome.jsp">Profile</a></li>
                            <%
                                }
                            %>
                            <li><a href="aboutus.jsp">About Us</a></li> 
                        </ul>    	
                    </div>
                </div>
            </div>
            
            <div id="tooplate_middle_subpage">
               
            </div>
            
            <div style=" width: 60%;
                 border-radius: 25px;
                 margin-left: 280px;
                 background-color:lightcyan /*#150707*/;
                 color:#000000 /*#ffffff*/;
                 font-size: 23px;
                 padding: 20px;">
                <form action="searchudoner.jsp">
                    Blood Group &nbsp;&nbsp;<select name="bld" required size="1">
                                    <option value="select">--------select--------</option>
                                    <option value="A+">A+</option>
                                    <option value="A-">A-</option>
                                    <option value="B+">B+</option>
                                    <option value="B-">B-</option>
                                    <option value="O+">O+</option>
                                    <option value="O-">O-</option>
                                    <option value="AB+">AB+</option>
                                    <option value="AB-">AB-</option>
                                </select>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Location  &nbsp;&nbsp; <input type="text" name="location" placeholder="location"/>
                    <input type="submit" value="Search Doner"style="background: #30122b;
                            background-image: -webkit-linear-gradient(top, #30122b, #47340e);
                            background-image: -moz-linear-gradient(top, #30122b, #47340e);
                            background-image: -ms-linear-gradient(top, #30122b, #47340e);
                            background-image: -o-linear-gradient(top, #30122b, #47340e);
                            background-image: linear-gradient(to bottom, #30122b, #47340e);
                            -webkit-border-radius: 28;
                            -moz-border-radius: 28;
                            border-radius: 28px;
                            font-family: Arial;
                            color: #ffffff;
                            font-size: 27px;
                            margin-left: 60px;
                            padding: 10px 20px 10px 20px;
                            text-decoration: none;"/>
                </form>
            </div>
        </div>
        
    </body>
</html>
