<%@page import="connection.Issue"%>
<%@page import="java.util.*"%>
<script>var listopt=[];</script>
<%List <Issue> issue = Issue.getuserlist();
ArrayList <String> ids = new ArrayList<String>();
for (Issue i:issue){
ids.add(i.getusername());}
Iterator it = ids.iterator(); 
while(it.hasNext()){
%>
<script>listopt.push("<%=it.next()%>");</script>
<%}%>
<script type="text/javascript">
var Msg ='<%=session.getAttribute("getAlert")%>';
if (Msg != "null") {
 function alertName(){
 alert("Username Registered Successfully");
 } }
</script> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="forms.css" rel="stylesheet" type="text/css" media="all" />
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
</div>
<div id="page" class="container">
    <div id="content">
        <div class="title">
            <h2>Resgistration Form</h2>
            <form action="userregister">
                <div class="formcontainer">
                    <hr />
                    <div class="container22">
                        <label for="name"><strong>Name:</strong></label>
                        <br />
                        <input type="text" id="name" placeholder="Enter Name" name="name" required />
                        <br />
                        <br />
                        <label for="user_name"><strong>Username</strong></label>
                        <br />
                        <input type="text" onkeyup="validate()" placeholder="Enter Username" id="user_name" name="user_name" required />
                        <p id="avail" style="color: red;"></p>
                        <p>
                            <small><i>Note: This will be your username to login</i></small>
                        </p>
                        <br />
                        <label for="password"><strong>Password</strong></label>
                        <br />
                        <input type="password" placeholder="Enter Password" name="user_password" required />
                        <br />
                        <br />
                        <label for="email"><strong>Email:</strong></label>
                        <br />
                        <input type="email" id="email" placeholder="Enter Email" name="user_email" required />
                        <br />
                        <br />
                        <label for="phn"><strong>Phone Number:</strong></label>
                        <br />
                        <input type="number" id="phn" max="99999999999" min="1000000000" placeholder="Enter Phone Number" name="phn" required />
                        <br />
                        <br />
                        <label for="location"><strong>Location:</strong></label>
                        <br />
                        <input type="text" id="location" placeholder="Enter Location" name="location" required />
                        <br />
                        <br />
                    </div>
                    <button id="submit" type="submit">Register</button>
                    <button type="reset">Reset</button>
                </div>
            </form>
        </div>
        <p>
            <strong>Already a User:<a href="login.jsp" rel="nofollow"> SignIn Here</a></strong>
        </p>
    </div>
</div>

<div id="copyright" class="ccontainer" >
	<p>&copy; Team Apex IEM</p>
</div>
</body>
<script type="text/javascript"> 
        phn.oninput = function () {
        if (this.value.length > 10)
        this.value = this.value.slice(0,10); }
        window.onload = alertName;
        function validate() {
        let user = document.getElementById('user_name');
	document.getElementById("avail").innerHTML="";
        document.getElementById('submit').disabled=false;
        for (let i = 0; i < listopt.length; i++) {
        if (listopt[i] === user.value) {
    	document.getElementById("avail").innerHTML="UserName Already Exists";
        document.getElementById('submit').disabled=true;
    }
  }
  return false;
}
    </script>

</html>