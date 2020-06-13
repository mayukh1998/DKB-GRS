<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="login.css" rel="stylesheet" type="text/css" media="all" />
<%if (request.getParameter("s")!=null) { %>
<script> alert("Invalid Credentials! Try Again");</script>
<%}%>
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
        <li class="current_page_item"><a href="login.jsp">Login/SignUp</a></li>
        <li><a href="about.jsp">About Us</a></li>
        <li><a href="faq.jsp">FAQ</a></li>
    </ul>
</div>
</div>
<div id="page" class="container">
    <div id="content">
        <div class="title">
            <h2>Minister Login</h2>
            <span class="byline">Login with your appropiate crendentials</span>
        </div>
        <form action="minlogin">
            <div class="formcontainer">
                <hr />
                <div class="container22">
                    <label for="username"><strong>Username</strong></label>
                    <br />
                    <input type="text" placeholder="Enter Username" name="username" required />
                    <br />
                    <br />
                    <label for="password"><strong>Password</strong></label>
                    <br />
                    <input type="password" placeholder="Enter Password" name="password" required />
                </div>
                <button type="submit">Login</button>
                <button type="reset">Reset</button>
            </div>
        </form>
    </div>
</div>                
</div>    
<div id="copyright" class="ccontainer" >
	<p>&copy; Team Apex IEM</p>
</div>
</body>
</html>