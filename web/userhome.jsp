<%@page import="java.util.List" %>
<jsp:useBean id="connection" class="connection.Usermanager" scope="request" />
<%@page import="connection.Issue"%> 
<%@page session="true" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="home.css" rel="stylesheet" type="text/css" media="all" />
</head>
<%if (request.getParameter("m1") != null) {%>
<script>alert('Login Success');</script>
<% }else{}
String userid = session.getAttribute("userid").toString();
String s1 = null, s2 = null, s4 = null, s5 = null, s6 = null, s7 = null;
List < Issue > userlist = Issue.getuserlist();
for (Issue i: userlist) {
  if (i.getuser().equals(userid)) {
   s4 = i.getname();
   s2 = i.getusername();
   s5 = userid;
   s1 = i.getemail();
   s7 = i.getlocation();
   s6 = i.getphn();
  }
 }
session.setAttribute("name", s4);
session.setAttribute("email", s1);
session.setAttribute("location", s7);
session.setAttribute("phn", s6);
%>
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
            <li class="current_page_item"><a href="userhome.jsp">Home</a></li>
            <li><a href="myissues.jsp">My Issues</a></li>
            <li><a href="givefeedback.jsp">Feedback</a></li>
            <li><a href="logout.jsp">LogOut</a></li>
        </ul>
    </div>
</div>
<div id="page" class="container">
    <div id="content">
        <div id="left-pane">
            <ul class="style2">
                <li><a href="createIssue.jsp">Register Complaint or Issue</a></li>
                <li><a href="givefeedback.jsp">Give Feedback to your existing resolved Issue</a></li>
                <li><a href="myissues.jsp">View your own issue</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </div>

        <div id="right-pane">
            <div class="title">
                <h2>Welcome</h2>
                <h2><%=s4%></h2>
            </div>
            <div id="text1">
                <ul style="list-style-type: circle;">
                    <li>UserName:- <% out.println(s2); %></li>
                    <br />
                    <li>Name:- <% out.println(s4); %></li>
                    <br />
                    <li>Email:- <% out.println(s1); %></li>
                    <li>User ID:- <% out.println(s5); %></li>
                    <br />
                    <li>Location:- <% out.println(s7); %></li>
                    <br />
                    <li>Phone Number:- <% out.println(s6); %></li>
                </ul>
            </div>
        </div>
    </div>
</div>          
</div>
                    
    
<div id="copyright" class="ccontainer" >
	<p>&copy; Team Apex IEM</p>
</div>
</body>
</html>