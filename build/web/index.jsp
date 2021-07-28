<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>BLOOD BANK</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>





<script type="text/javascript">
$(window).load(function() {
	$('#slider').nivoSlider({
		effect:'random',
		slices:15,
		animSpeed:500,
		//pauseTime:000,
		startSlide:0, //Set starting Slide (0 index)
		directionNav:false,
		directionNavHide:false, //Only show on hover
		controlNav:false, //1,2,3...
		controlNavThumbs:false, //Use thumbnails for Control Nav
		pauseOnHover:true, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		captionOpacity:0.8, //Universal caption opacity
		beforeChange: function(){},
		afterChange: function(){},
		slideshowEnd: function(){} //Triggers after all slides have been shown
	});
});
</script>



</head>
<body>
<div id="tooplate_body_wrapper">
<div id="tooplate_wrapper">
	<div id="tooplate_top_bar">
                     <%
                String n =(String)session.getAttribute("uname");
                if(n!=null)
                {
                %>
                <ul>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
                <%
                    }
                else
                {
                %>
                     <ul>
                         <li><a href="rselectp.jsp" style="width: 60px;">Register</a></li>
                         <li><a href="login.jsp">Login</a></li>
                         
                     </ul>
                <%
                    }
                    
                %>
                </div>
    
    <div id="tooplate_header">
        <div id="site_title"><h1>BLOOD BANK</h1></div>
        
	    <div id="tooplate_menu">
            <ul>
               <li><a href="index.html" class="current">Home</a></li>
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
    <div id="tooplate_middle">
    	<div id="slider">
            <a href="#"><img src="images/slideshow/bd1.jpg" alt="image1" /></a>
            <a href="#"><img src="images/slideshow/bd2.jpg" alt="image2" /></a>
            <a href="#"><img src="images/slideshow/bd3.jpg" alt="image3" /></a>
            <a href="#"><img src="images/slideshow/bd4.jpg" alt="image4" /></a>
            <a href="#"><img src="images/slideshow/bd5.jpg" alt="image5" /></a>
        </div>	
	</div> 
    
    <div id="tooplate_main">
    
    	<div class="col_allw300">
            <h2> Welcome Blood Bank!</h2>
            <p><em>Help me...
            <div class="cleaner"></div>
        </div>
        <div class="col_allw300">
            <h2><pre>   </pre></h2>
            <div class="cleaner"></div>
        </div>
        <div class="col_allw300 col_last">
        <h2>Service Overview</h2>
            <ul class="tooplate_list">
	            <li><a href="#">Blood Bank</a></li>
                <li><a href="#"></a>Donor</li>
                <li><a href="#"></a>Hospital for blood</li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>

            </ul>
</div>  
        <div class="cleaner"></div>
    </div>
         
	
</div> 
</div>

</body>
</html>