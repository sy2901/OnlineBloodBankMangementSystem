<%-- 
    Document   : aboutus
    Created on : 20 Mar, 2021, 11:42:02 AM
    Author     : sy290
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="register.css"/>
        <title>About Us</title>
        <meta name="keywords" content="ddddd" />
        <meta name="description" content="" />
        <link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
        <link href="css/demo.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/jquery.nivo.slider.js" type="text/javascript"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <style>
            .footer {
                width: 960px;
	        padding: 10px;
                background-color: lightblue;
	        color: #8b773a;
	        margin: 0 auto;
                text-align: center;
            }
            .footer-center i.fa-envelope{
	font-size: 17px;
	line-height: 38px;
        }
        .center {
                display: block;
                margin-left: auto;
                margin-right: auto;
                width: 90%;
                }
       </style>
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
                            <%
                                String un =(String)session.getAttribute("uid");
                                if(un!=null)
                                {
                            %>
                            <li><a href="welcome.jsp">Profile</a></li>
                            <%
                                }
                            %>
                            <li><a href="aboutus.jsp" class="current">About Us</a></li> 
                        </ul>    	
                    </div>
                </div>
            </div>
            
            <div id="tooplate_middle_subpage">
               
            </div>
            
            <div style=" width: 70%;
                 border-radius: 50px;
                 margin-top:30px;
                 margin-left: 200px;
                 /*background-color:greenyellow;*/
                 background-color:#150707;
                 color: #fff;
                 font-size: 23px;
                 font-family:monospace;
                 padding-bottom: 100px;
                 padding-top: 100px;   
                 padding: 20px;">
                
                <h3 style="margin-top: 10px;"><b>.<u>Our Mission</u></b></h3>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The Ayurveda Blood Bank, Inc is dedicated to providing a reliable, economical,
                    &nbsp;&nbsp;and high quality supply of the safest blood products in partnership with 
                    &nbsp;&nbsp;volunteer donors.
                </p>
                <h3><br><b>.<u>Blood Bank Management System</u></b></h3>
                <br>
           
                <img src="images/BBMS-About-Us.jpg" class="center"><br/><br/>
                
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Blood banks play an important role in the process of collecting blood and 
                    &nbsp;&nbsp;managing blood stocks, approving blood requests, updating donations and updating 
                    &nbsp;&nbsp;available blood types.Ayurveda's web-based Blood Bank Management System will 
                    &nbsp;&nbsp;address the issues and problems encountered in collecting information about 
                    &nbsp;&nbsp;donors, blood camps, inventories of blood bags, and blood transfusion services, 
                    &nbsp;&nbsp;etc, including donor screening, inventory management, blood ordering, blood usage 
                    &nbsp;&nbsp;review and compatibility testing. Blood Bank Management system will greatly 
                    &nbsp;&nbsp;increase the safety and quality of the blood supply as well as provide logistics 
                    &nbsp;&nbsp;data for the optimal supply chain management.
                </p>
            </div>
            <pre>
                
            </pre>
            
            <div id="tooplate_footer_wrapper"class="footer">
                <div id="tooplate_footer">

                        <h4>Contact Us :</h4>
                        <b><u>Shivnarayan Yadav</u></b><br>
                        <i class="fa fa-map-marker" style="color:red"></i>
                        301-A New Sairaj Society, <br />
                        Badlapur 421503 (MH) India<br /><br />
                        <i class="fa fa-phone" style="color:green"></i>
                        Mobile No: +91 8450943184  <br />
                        <i class="fa fa-envelope" style="color:red"></i>
                        Email: <a href="mailto:shivnarayan.y@somaiya.edu">shivnarayan.y@somaiya.edu</a>
                </div>
            </div>
        </div>
    </body>
</html>
