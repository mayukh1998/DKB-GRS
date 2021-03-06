<%@page import="connection.Issue"%>
<%@page import="java.util.List"%>
<jsp:useBean id="connection" class="connection.Issuemanager" scope="request" />
<%@ page session="true" %>
<script src="sort.js"></script>
<script src="search.js"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="viewmonitorcm.css" rel="stylesheet" type="text/css" media="all" />
<script src="jquery-3.4.1.js" type="text/javascript"></script>
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
            <li><a href="cmhome.jsp">Home</a></li>
            <li class="current_page_item"><a href="viewmonitorcmissues.jsp">Monitor Issues</a></li>
            <li><a href="assignissue.jsp">Assign Issues</a></li>
            <li><a href="addclerk.jsp">Add Clerk</a></li>
            <li><a href="addmin.jsp">Add Minister</a></li>
            <li><a href="logout.jsp">LogOut</a></li>
        </ul>
    </div>
</div>
<div id="page" class="container">
<div class="title">
    <h2>Monitor Issues</h2>
    <br />
    <span class="byline"><input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search by Issue ID.." /></span>
</div>
<div class="spltable">
<table border-bottom=1 align=center style="text-align:center" class="myTable" id="myTable"  >
<thead>
    <tr>
        <th onclick="sortTable(0)">Priority</th>
        <th onclick="sortTable(1)">Date</th>
        <th onclick="sortTable(2)">Issue ID</th>
        <th>Issue Subject</th>
        <th onclick="sortTable(4)">Name</th>
        <th onclick="sortTable(5)">Location</th>
        <th onclick="sortTable(6)">Feedback</th>
        <th onclick="sortTable(7)">Status</th>
        <th onclick="sortTable(8)">Department</th>
    </tr>
</thead>
<tbody>
<%List <Issue> issue = connection.monitor_issue();
  for (Issue i:issue){%>
<tr>
    <td id="priority"><%=i.getpriority()%></td>
    <td><%=i.getdate() %></td>
    <td value="<%=i.getissue_id()%>"><input id="issue_id" name="issue_id" value="<%=i.getissue_id()%>" class="disable" type="hidden" /><%=i.getissue_id()%></td>
    <td><%=i.getsubject() %></td>
    <td><%=i.getname()%></td>
    <td><%=i.getlocation() %></td>
    <td><%=i.getfeedback() %></td>
    <td><%=i.getstatus()%></td>
    <td id="dept"><%=i.getdepartment()%></td>
</tr><%}%>
</tbody>
</table>
</div>
</div>
</div>
<script>
$(".myTable").on("click", "td", function()
  {
   var issueid = $(this).closest('tr').find("td:eq(2) input").val();
   window.location = 'monitorcmissues.jsp?issue_id='+issueid;
  });
</script>  
<div id="copyright" class="ccontainer" >
	<p>&copy; Team Apex IEM</p>
</div>
</body>
</html>