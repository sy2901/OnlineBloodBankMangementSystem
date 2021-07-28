<%-- 
    Document   : start
    Created on : 27 Mar, 2021, 1:05:13 PM
    Author     : sy290
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <meta name="keywords" content="ddddd" />
        <meta name="description" content="" />
        <link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
        <link href="css/demo.css" rel="stylesheet" type="text/css" />
        <link href="css/nivo-slider.css" rel="stylesheet" type="text/css" media="screen" />
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/jquery.nivo.slider.js" type="text/javascript"></script>
    </head>
    <body>
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
                            <li><a href="index.jsp" class="current">Home</a></li>
                            <li><a href=rselectp.jsp>Join Us</a></li>
                            <li><a href="bloodbank.jsp">Blood Bank</a></li>
                            <li><a href="viewhospital.jsp">Hospital</a></li>
                            <li><a href="hospital.jsp">Search Donor</a></li>
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
                            
            <div style=" width: 25%;
                 margin-left: 550px;
                 background-color:lightcyan /*#150707*/;
                 color:#000000 /*#ffffff*/;
                 font-size: 23px;
                 padding: 20px;">
                <form action="Login" method="post">
                     <table style="with: 100%">
                         <tr>
                             <td>Username &nbsp;&nbsp;:&nbsp;&nbsp;</td>
                             <td><input type="email" name="uname" placeholder="Enter registered email" autofocus required></td>
                         </tr>
                         
                         
                         <tr>
                             <td>User Type &nbsp;&nbsp;:&nbsp;&nbsp;</td>
                             <td>
                                 <select name="bhu" required size="1">
                                     <option value="user">user</option>
                                     <option value="h">Hospital</option>
                                     <option value="b">Blood Bank</option>
    
                                </select>
                             </td>
                         </tr>
                         
                         
                         <tr>
                             <td>Password &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;</td>
                             <td><input type="password" name="pass" placeholder="Password"minlength="8" maxlength="30" required></td>
                         </tr>
                         
                         
                         <tr>
                             <td>
                            <input type="submit" value="Login" class="btn btn-primary active" style="background:#30122b;
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
                            font-size: 20px;
                            padding: 10px 20px 10px 20px;
                            text-decoration: none;">
                             </td>
                             <td>
                                <input type="reset" value="Cancel" class="btn btn-primary active" style="background:#30122b;
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
                            font-size: 20px;
                            padding: 10px 20px 10px 20px;
                            text-decoration: none;"> 
                             </td>
                         </tr>
                   
                    
                     </table>
                </form>
            </div>                
        </div>
    </body>
</html>
