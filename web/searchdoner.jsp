<%-- 
    Document   : searchdoner
    Created on : 21 Mar, 2021, 7:05:29 PM
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
        <title>Blood Bank</title>
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
                
                <div id="tooplate_header">
                    <div id="site_title">
                        <h1> BLOOD BANK</h1>
                    </div>
                    
                    <div id="tooplate_menu">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href=rselectp.jsp>Join Us</a></li>
                            <li><a href="bloodbank.jsp" class="current">Blood Bank</a></li>
                            <li><a href="viewhospital.jsp">Hospital</a></li>
                            <li><a href="hospital.jsp">Search Donor</a></li>
                            <li><a href="aboutus.jsp">About Us</a></li> 
                        </ul>    	
                    </div>
                </div>
            </div>
            
            <div id="tooplate_middle_subpage">
               
            </div>
            
            <%
                try{
                    
                    int count=0;
                    String loc = request.getParameter("loc");
                    String bldg = request.getParameter("bld");
            
                    MyDb db = new MyDb();
                    Connection con =db.getCon();
                    Statement stmt = con.createStatement();
           
           
                    ResultSet rs = stmt.executeQuery("select bname,bld,address,contact,email from bregister where address='"+loc+"' and bld='"+bldg+"'"); 
                            
                            while (rs.next())
                                {
                                String name = rs.getString("bname");
                                String bldgg = rs.getString("bld");
                                String address = rs.getString("address");
                                String contact=rs.getString("contact");
                                String email = rs.getString("email");
                                count++;
           
           %>
           <div style="background-color:lightcyan /*#330D0D*/; color: #000000 /*#ffffff*/; margin-top: 20px;">
               <div style="margin-left: 150px; padding-top: 20px; padding-bottom: 20px;">
                   <label>BLOOD BANK NAME &nbsp;:&nbsp;&nbsp;</label> <%out.println(name);%>
                    <br/>
                    <label>BLOOD GROUP &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</label><%out.println(bldgg);%>
                    <br/>
                    <label>ADDRESS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;</label> <%out.println(address);%>
                    <br/>
                    <label>CONTACT NO. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;</label> <%out.println(contact);%>
                    <br/>
                    <label>EMAIL &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;</label> <%out.println(email);%>
               </div>
           </div>
            <%
                            }
                        
            %>
            
            <h3 align="center" style="color: red;"><%if(count==0) {out.println("Blood of '"+bldg+"' blood group is not Available at '"+loc+"' Blood Bank");} %></h3>            
            
            <%
                
                    }catch(Exception e){}
        
        
           %>
        </div>
        
    </body>
</html>
