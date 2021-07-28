<%-- 
    Document   : searchudoner
    Created on : 21 Mar, 2021, 7:10:23 PM
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
        <title>Doner</title>
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
                            <li><a href="bloodbank.jsp">Blood Bank</a></li>
                            <li><a href="viewhospital.jsp">Hospital</a></li>
                            <li><a href="hospital.jsp"  class="current">Search Donor</a></li>
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
                    String loc = request.getParameter("location");
                    String bld = request.getParameter("bld");
            
                    MyDb db = new MyDb();
                    Connection con =db.getCon();
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("select name,fname,mobile,email,gender,dob,bld,location from uregister where bld = '"+bld+"' and location ='"+loc+"' "); 
                    while(rs.next())
                    {
                        
                        String name = rs.getString("name");
                        String fname=rs.getString("fname");
                        String bldg = rs.getString("bld");
                        String add = rs.getString("location");
                        String email = rs.getString("email");
                        String mob = rs.getString("mobile");
                        String dob = rs.getString("dob");
                        String gender = rs.getString("gender");
                        count++;
           
           %>
          <div style="background-color:lightcyan /*#330D0D*/; color: #000000 /*#ffffff*/; margin-top: 20px;">
               <div style="margin-left: 150px; padding-top: 20px; padding-bottom: 20px;">
                <label>DONER NAME &nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;</label> <%out.println(name);%>
                <br/>
                <label> FATHER NAME &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;</label> <%out.println(fname);%>
                <br/>
                <label>DATE OF BIRTH &nbsp;:&nbsp;&nbsp;</label> <%out.println(dob);%>
                <br/>
                <label>GENDER &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;</label> <%out.println(gender);%>
                <br/>
                <label>BLOOD GROUP &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</label><%out.println(bldg);%>
                <br/>
                <label>ADDRESS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;</label> <%out.println(add);%>
                <br/>
                <label>MOBILE No. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;</label> <%out.println(mob);%>
                <br/>
                
                <label>EMAIL &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;</label> <%out.println(email);%>
                </div>
           </div>
                <%
                            }
                        
                %>
                
                <h3 align="center" style="color: red;"><%if(count==0) {out.println("Blood Doner is not available of '"+bld+"' blood group at '"+loc+"'");} %></h3> 
            <%
        
                }catch(Exception e){}
        
        
            %>
        </div>
   
    </body>
</html>
