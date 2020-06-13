<jsp:useBean id="connection" class="connection.Issuemanager" scope="request" />
<script src="clerksearch.js"></script>
<%@page import="connection.Issue"%>
<%@page import="java.util.List"%>
<%@page session="true" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="clerkissue.css" rel="stylesheet" type="text/css" media="all" />
</head>
<div id="wrapper">
<div id="header-wrapper">
    <div id="header" class="container">
        <div id="logo">
            <h1>
                <a href="https://www.didikebolo.com/en/">Didi Ke Bolo</a>
            </h1>
            <p>Grievance Redressal</p>
        </div>
    </div>
</div>
<div id="menu-wrapper">
    <div id="menu" class="container">
        <ul>
            <li>
                <a href="clerkhome.jsp">Home</a>
            </li>
            <li class="current_page_item">
                <a href="viewclerkissues.jsp">All Issues</a>
            </li>
            <li>
                <a href="createclerkIssue.jsp">Create Issue</a>
            </li>
            <li>
                <a href="logout.jsp">LogOut</a>
            </li>
        </ul>
    </div>
</div>
<div id="page" class="container">
<div class="title">
    <h2>All Issues</h2>
    <br />
    <span class="byline">
        <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search by Issue ID.." />
    </span>
</div>
<div class="spltable">
<table border-bottom=1 align=center style="text-align:center" id="myTable"><thead>
    <tr>
        <th>Issue ID</th>
        <th>Subject</th>
        <th>Description</th>
        <th>Department</th>
        <th>Date</th>
        <th>Status</th>
    </tr>
</thead>
<tbody>
<%List <Issue> list = connection.clerk_view_issue();
for (Issue li:list){%>
<tr>
    <td><%=li.getissue_id()%></td>
    <td><%=li.getsubject()%></td>
    <td align="justify"><%=li.getdes()%></td>
    <td><%=li.getdepartment()%></td>
    <td><%=li.getdate()%></td>
    <td><%=li.getstatus()%></td>
</tr>
</tbody>
<%}%>
</table>
</div>
</div>
</div>
<div id="copyright" class="ccontainer">
<p>&copy; Team Apex IEM</p>
</div>
</body>
</html>