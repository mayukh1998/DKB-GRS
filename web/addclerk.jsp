<%@ page session="true" %>
<%@page import="connection.Issue"%>
<%@page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="forms.css" rel="stylesheet" type="text/css" media="all" />
<script>var listopt=[];</script>
<%List <Issue> issue = Issue.getclerklist();
ArrayList <String> ids = new ArrayList<String>();
for (Issue i:issue){
ids.add(i.getusername());}
Iterator it = ids.iterator(); 
while(it.hasNext()){
%>
<script>listopt.push("<%=it.next()%>");</script>
<%}%>
</head>
<%if (request.getParameter("m1") != null) {%>
<script>alert('Clerk Added Successfully');</script>
<%}else if(request.getParameter("m2") != null)
{%>
<script>alert("Operation Failed");</script>
<%}%>
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
        <li><a href="cmhome.jsp">Home</a></li>
        <li><a href="viewmonitorcmissues.jsp">Monitor Issues</a></li>
        <li><a href="assignissue.jsp">Assign Issues</a></li>
        <li class="current_page_item"><a href="addclerk.jsp">Add Clerk</a></li>
        <li><a href="addmin.jsp">Add Minister</a></li>
        <li><a href="logout.jsp">LogOut</a></li>
    </ul>
</div>
</div>
<div id="page" class="container">
<div id="content">
    <div class="title">
        <h2>Clerk Resgistration</h2>
        <form action="addclerk">
            <div class="formcontainer">
                <hr />
                <div class="container22">
                    <label for="name"><strong>Name:</strong></label>
                    <br />
                    <input type="text" id="name" placeholder="Enter Name" name="name" required />
                    <br />
                    <br />
                    <label for="user_name"><strong>Username:</strong></label>
                    <br />
                    <input type="text" onkeyup="validate()" placeholder="Enter Username" name="user_name" id="user_name" required />
                    <p id="avail" style="color: red;"></p>
                    <p>
                        <small><i>Note: This will be your username to login</i></small>
                    </p>
                    <br />
                    <label for="user_password"><strong>Password:</strong></label>
                    <br />
                    <input type="password" placeholder="Enter Password" name="user_password" id="user_password" required />
                    <br />
                    <br />
                </div>
                <button id="submit" type="submit">Register</button>
                <button type="reset">Reset</button>
            </div>
        </form>
    </div>
</div>
</div>      
</div>
<div id="copyright" class="ccontainer" >
	<p>&copy; Team Apex IEM</p>
</div>
</body>
<script>
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