<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%
session.setMaxInactiveInterval(2);
%>

 <script type="text/javascript">
var Msg ='<%=session.getAttribute("getAlert")%>';
    if (Msg != "null") {
 function alertName(){
 alert("Username Registered Successfully");
 } 
 }
 </script> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Chivo:400,900" rel="stylesheet" />
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="login.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<body>
<div id="wrapper">
	<div id="header-wrapper">
		<div id="header" class="container">
			<div id="logo">
				<h1><a href="https://www.didikebolo.com/en/">Didi Ke Bolo</a></h1>
				<p>Grievance Redressal</p>
			</div>
		</div>
	</div>
	<div id="menu-wrapper">
		<div id="menu" class="container">
			<ul>
				<li ><a href="index.html">Home</a></li>
				<li class="current_page_item"><a href="login.jsp">Login/SignUp</a></li>
				<li><a href="about.jsp">About Us</a></li>
				<li><a href="faq.jsp">FAQ</a></li>
			</ul>
		</div>
		<!-- end #menu --> 
	</div>
	<div id="page" class="container">
		<div id="content">
			<div class="title">
			<h2>USER Login</h2>
			<span class="byline">Login with your appropiate crendentials</span> </div>
                    <form action="userlogin" enctype="multipart/form-data">
                      <div class="formcontainer">
                      <hr/>
                      <div class="container22">
                        <label for="username"><strong>Username</strong></label>
                        <br>
                        <input type="text" placeholder="Enter Username" name="username" required>
                            <br>
                                <br>
                            <label for="password"><strong>Password</strong></label>
                            <br>
                        <input type="password" placeholder="Enter Password" name="password" required>
                      </div>
                      <button type="submit">Login</button>
                      <button type="reset">Reset</button>
                      </div>
                    </form>                   
         
                                
                </div>
            <p><strong>Not a User:<a href="userregister.jsp" rel="nofollow"> Register Here</a></strong></p>
        </div>
                    
</div>    
<div id="copyright" class="ccontainer" >
	<p>&copy; Team Apex IEM</p>
</div>
</body>
    <script type="text/javascript"> window.onload = alertName; </script>

</html>