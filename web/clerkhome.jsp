<%@page import="java.util.*"%>
<%@page import="connection.Issue"%> 
<%@ page session="true" %>
<html>
<head>
<title>DKB Grievance Redressal</title>
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="home.css" rel="stylesheet" type="text/css" media="all" />
</head>
<%if (request.getParameter("m1") != null) {%>
<script>alert('Login Success');</script>
<%} else {}
String userid = session.getAttribute("clerkid").toString();
String s1 = null, s2 = null, s3 = null, s5 = null, s6 = null, s7 = null;
List < Issue > clerklist = Issue.getclerklist();
for (Issue i: clerklist) {
if (i.getuser().equals(userid)) {
s2 = i.getname();
s3 = i.getusername();
s1 = userid;
}}
session.setAttribute("name", s2); %>
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
            <li class="current_page_item"><a href="clerkhome.jsp">Home</a></li>
            <li><a href="viewclerkissues.jsp">All Issues</a></li>
            <li><a href="createclerkIssue.jsp">Create Issue</a></li>
            <li><a href="logout.jsp">LogOut</a></li>
        </ul>
    </div>
</div>
<div id="page" class="container">
    <div id="content">
        <div id="left-pane">
            <ul class="style2">
                <li><a href="createclerkIssue.jsp">Register Complaint or Issue</a></li>
                <li><a href="viewclerkissues.jsp">View all issues</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </div>

        <div id="right-pane">
            <div class="title">
                <h2>Welcome</h2>
                <h2><%=s2%></h2>
            </div>
            <div id="text1">
                <ul style="list-style-type: circle;">
                    <li>UserName:- <% out.println(s3); %></li>
                    <br />
                    <li>Name:- <% out.println(s2); %></li>
                    <br />
                    <li>Clerk ID:- <% out.println(s1); %></li>
                    <br />
                </ul>
            </div>
        </div>
    </div>
</div>
</div>
<div id="copyright" class="ccontainer">
<p>&copy; Team Apex IEM</p>
</div>
</body>
</html>