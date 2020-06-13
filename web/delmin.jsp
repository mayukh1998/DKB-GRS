<%@ page session="true" %>
<%@page import="java.util.List"%>
<%@page import="connection.Issue"%>
<html>
<head>
<title>DKB Grievance Redressal</title>
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="delete.css" rel="stylesheet" type="text/css" media="all" />
</head>
<% if (request.getParameter("m1") != null) {%>
<script>alert('Record Deleted Successfully');</script>
<%}
else 
{}
List <Issue> list = Issue.getministerlist();
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
            <li><a href="cmhome.jsp">Home</a></li>
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
        <div class="spltable">
            <table border-bottom="1" align="center" style="text-align: center;" class="myTable" id="myTable">
                <thead>
                    <tr>
                        <th>Minister ID</th>
                        <th>Minister Name</th>
                        <th>User Name</th>
                        <th>Department</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <%for (Issue li:list){%>
                    <tr>
                        <td><%=li.getuser()%></td>
                        <td><%=li.getname()%></td>
                        <td><%=li.getusername()%></td>
                        <td><%=li.getdepartment()%></td>
                        <td><button id="delete" onclick="location.href='delmin?min_id=<%=li.getuser()%>';">Delete</button></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </div>
</div>    
</div>                    
    
<div id="copyright" class="ccontainer" >
	<p>&copy; Team Apex IEM</p>
</div>
</body>
</html>