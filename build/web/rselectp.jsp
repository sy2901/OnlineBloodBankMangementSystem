<%-- 
    Document   : rselectp.jsp
    Created on : 21 Mar, 2021, 7:00:52 PM
    Author     : sy290
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
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
                <div id="tooplate_top_bar">
                    <% 
                        String n =(String)session.getAttribute("uname");
                        if(n!=null)
                        {
                        }
                       else
                        {
                %>
                     <ul>
                         <li><a href="login.jsp">Login</a><h6 style="float: right;margin-top: 5px; color: black;">Already Have an account?</h6></li>
                     </ul>
                <%
                    }
                    %>
                </div>
                
                <div id="tooplate_header">
                    <div id="site_title">
                        <h1> BLOOD BANK</h1>
                    </div>
                    
                    <div id="tooplate_menu">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href=rselectp.jsp class="current">Join Us</a></li>
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
            <div id="tooplate_main_register">
                <div class="col_allw300" style="margin-left:70px;">
            <a href="uregister.jsp">
                <img src="images/slideshow/user.jpg" alt="user"/> 
            </a>
                    <h4><p style="margin-left:40px;">For User Registration <br><a href="uregister.jsp" style="font-size: 17px;color: blue;">click here</a></p></h4>
            <div class="cleaner"></div>
               </div>
                <div class="col_allw300" style="margin-left:200px;margin-top:25px;">   
            <a href="rhospital.jsp">
                <img src="images/slideshow/hospital.jpg" alt="hospital"/>
            </a>
                    <h4><p style="margin-left:40px;margin-top: 10px;">For Hospital Registration <br><a href="rhospital.jsp" style="font-size: 17px;color: blue;">click here</a></p></h4>
            <div class="cleaner"></div>
            </div>
                <div class="col_allw300" style="margin-left: 270px; margin-top: 20px;">        
            <a href="bregister.jsp">
                <img src="images/slideshow/images.jpg" alt="blood bank"/> 
            </a>
               <h4><p style="margin-left:40px;margin-top: 30px;">For Blood Bank Registration <br><a href="bregister.jsp" style="font-size: 17px;color: blue;">click here</a></p></h4>
                </div>
                 <div class="cleaner"></div>
            </div>
  
        </div>
    
    </body>
</html>
