<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">


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
<link href="forms.css" rel="stylesheet" type="text/css" media="all" />

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
				<li><a href="index.html">Home</a></li>
				<li><a href="login.jsp">Login/SignUp</a></li>
				<li><a href="about.jsp">About Us</a></li>
				<li><a href="faq.jsp">FAQ</a></li>
			</ul>
		</div>
		<!-- end #menu --> 
	</div>
	<div id="page" class="container">
		<div id="content">
			<div class="title">
				<h2>Resgistration Form</h2>
				
                    
                                
                             
                    <form action="userregister">
                      <div class="formcontainer">
                      <hr/>
                      <div class="container22">
                          <label for="name"><strong>Name:</strong></label>
                          <br>
                          <input type="text" id="name" placeholder="Enter Name" name="name" required>
                              <br>       
                                        <br>
                        <label for="username"><strong>Username</strong></label>
                    <br>
                        <input type="text" placeholder="Enter Username" name="user_name" required>
                        <p><small><i>Note: This will be your username to login</i></small></p>
                          <br>    
                            <label for="password"><strong>Password</strong></label>
                            <br>
                        <input type="password" placeholder="Enter Password" name="user_password" required>
                            <br>
                           <br>  
                         <label for="email"><strong>Email:</strong></label>
                         <br>
                          <input type="email" id="email" placeholder="Enter Email" name="user_email" required>    
                            <br>
                                <br>
                             <label for="phn"><strong>Phone Number:</strong></label>
                             <br>
                          <input type="number" id="phn" placeholder="Enter Phone Number" name="phn" required>  
                           <br>
                               <br>
                           <label for="location"><strong>Location:</strong></label>
                           <br>
                          <input type="text" id="location" placeholder="Enter Location" name="location" required>    
                              <br>
                              <br>
                              </div>
                      <button type="submit">Register</button>
                      <button type="reset">Reset</button>
                      </div>
                    </form>                   
         
                                
                </div>
            <p><strong>Already a User:<a href="login.jsp" rel="nofollow"> SignIn Here</a></strong></p>
        </div>
                    
</div>    
<div id="copyright" class="ccontainer" >
	<p>&copy; Team Apex IEM</p>
</div>
</body>
    <script type="text/javascript"> window.onload = alertName; </script>

</html>