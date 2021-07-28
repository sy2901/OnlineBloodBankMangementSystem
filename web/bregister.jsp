<%-- 
    Document   : bregister
    Created on : 20 Mar, 2021, 2:31:10 PM
    Author     : sy290
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blood Bank Registration</title>
        <link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
        <meta name="keywords" content="ddddd" />
        <meta name="description" content="" />
        <script src="js/jquery.min.js" type="text/javascript"></script>
       
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link href="css/tp.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="css/bootstrap.min.js"></script>
    </head>
    <body>
        <%
        Random ran = new Random();
        long first4 = (ran.nextLong() % 9000L) + 1000L;
        long first2 = Math.abs(first4);
        String first=("B7755"+(int)first2);
    %>
    
        <div id="tooplate_body_wrapper">
            <div id="tooplate_wrapper">
                
                <div id="tooplate_header">
                    <div id="site_title">
                        <h1> BLOOD BANK</h1>
                    </div>
                    
                    <div id="tooplate_menu">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="rselectp.jsp"  class="current">Join Us</a></li>
                            <li><a href="bloodbank.jsp">Blood Bank</a></li>
                            <li><a href="viewhospital.jsp">Hospital</a></li>
                            <li><a href="hospital.jsp">Search Donor</a></li>
                            <li><a href="aboutus.jsp">About Us</a></li> 
                        </ul>    	
                    </div>
                </div>
            </div>
            
            <div id="tooplate_middle_subpage">
                	
            </div>
            
            <div align="center">
                <h1>New Blood Bank Registration</h1>
                <form action="Bregister" method="post">
                    <table style="with: 100%">
                        
                        <tr>
                            <td>Blood Bank ID &nbsp;:&nbsp;</td>
                            <td><input type="text" name="bloodBankID" class="form-control" value=<% out.println(first); %> size="10" readonly required></td>
                            <td>Blood Bank Name &nbsp;:&nbsp;</td>
                            <td><input type="text" name="bname" placeholder="Hospital Name" maxlength="30" class="form-control" autofocus required></td>
                        </tr>
    
                        <tr>
                            <td>Blood Group &nbsp;:&nbsp;</td>
                            <td>
                                <select name="bld" required size="1">
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
                            </td>
                            <td></td>
                            <td></td>
                        </tr>
    
                        <tr>
                            <td>Contact No &nbsp;:&nbsp;</td>
                            <td><input type="number" name="mobile" placeholder="Blood Bank Contact Number" maxlength="10" alt="Contact Number" size="10" class="form-control" required></td>
                            <td>Email &nbsp;:&nbsp;</td>
                            <td><input type="email" name="email" placeholder="Email" maxlenght="45" class="form-control" required></td>
                        </tr>
    
                        <tr>
                            <td>Location &nbsp;:&nbsp;</td>
                            <td><input type="text" name="location" placeholder="Location" maxlength="140" class="form-control" required></td>
                            <td>Password &nbsp;:&nbsp;</td>
                            <td><input type="password" name="password" placeholder="Password"minlength="8" maxlength="30" required></td>
                        </tr>
                        
                    </table>
                    <br>
                    <input type="submit" value="Submit" style="width:175px" class="btn btn-primary active">
                    <input type="reset" value="Clear" style="width:175px" class="btn btn-primary active">
                    <br>
                </form>
            </div>
        </div>
        
    </body>
</html>
