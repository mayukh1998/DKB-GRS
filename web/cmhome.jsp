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
<% }else {
}%>
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
            <li class="current_page_item"><a href="cmhome.jsp">Home</a></li>
            <li><a href="viewmonitorcmissues.jsp">Monitor Issues</a></li>
            <li><a href="assignissue.jsp">Assign Issues</a></li>
            <li><a href="addclerk.jsp">Add Clerk</a></li>
            <li><a href="addmin.jsp">Add Minister</a></li>
            <li><a href="logout.jsp">LogOut</a></li>
        </ul>
    </div>
</div>
<div id="page" class="container">
    <div id="content">
        <div id="left-pane">
            <ul class="style2">
                <li><a href="assignissue.jsp">Assign Issues</a></li>
                <li><a href="viewmonitorcmissues.jsp">Monitor Issues</a></li>
                <li><a href="addclerk.jsp">Add Clerk</a></li>
                <li><a href="addmin.jsp">Add Minister</a></li>
                <li><a href="delclerk.jsp">Delete Clerk</a></li>
                <li><a href="delmin.jsp">Delete Minister</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </div>
        <div id="right-pane">
            <div class="title">
                <h2>Welcome</h2>
            </div>
            <div id="text1">
                <ul style="list-style-type: circle;">
                    <br />
                    <li>Name:- Mamata Banerjee</li>
                    <br />
                    <li>Chief Minister</li>
                    <br />
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