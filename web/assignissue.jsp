<%@page import="connection.Issue"%>
<%@page import="java.util.List"%>
<jsp:useBean id="connection" class="connection.Issuemanager" scope="request" />
<%@ page session="true" %>
<html>
<script src="jquery-3.4.1.js" type="text/javascript"></script>
<script src="sort.js"></script>
<script src="search.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="viewcmissues.css" rel="stylesheet" type="text/css" media="all" />   
</head>
<%if (request.getParameter("m1") != null) {
  String m1 = request.getParameter("m1");%>
  <script> var m1 = <%=m1%>;
   alert('Issue ID '+m1+' Assigned to Department Successfully');</script>
<%}else{}%>
<%if (request.getParameter("m2") != null) {
  String m1 = request.getParameter("m2");%>
<script> var m2 = <%=m1%>;
   alert('Issue ID '+m2+' Priority Already Assigned And Resolved');</script>
<%}if (request.getParameter("m3") != null) 
   { String m3 = request.getParameter("m3");%>
<script> var m3 = <%=m3%>;
  alert('Issue Closed Successfully');</script>
  <%}
 if (request.getParameter("m4") != null) {
   String m4 = request.getParameter("m4");%>
<script> var m4 = <%=m4%>;
 alert('Opened Issues cannot be closed');</script> 
<%}
List <Issue> list = connection.monitor_issue();
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
        <li class="current_page_item"><a href="assignissue.jsp">Assign Issues</a></li>
        <li><a href="addclerk.jsp">Add Clerk</a></li>
        <li><a href="addmin.jsp">Add Minister</a></li>
        <li><a href="logout.jsp">LogOut</a></li>
    </ul>
</div>
</div>
<div id="page" class="container">
<div class="title">
    <h2> Assign Issues</h2>
    <br>
    <span class="byline"><input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search by Issue ID.."></span>
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
    <th>Feedback</th>
    <th onclick="sortTable(6)">Status</th>
    <th onclick="sortTable(7)">Department</th>
    <th></th>
    <th></th>
</tr>
</thead>
<tbody>
<%for (Issue li:list){
    if(li.getstatus().equals("open")||li.getstatus().equals("verified")){
%>
<tr>
<form action="assignissue">
    <td onclick='event.stopPropagation();return false;' id='priority'>
        <select name="priority" id="priority" class="select">
            <option value="<%=li.getpriority()%>" selected>
                <%=li.getpriority()%>
            </option>
            <option value="low">low</option>
            <option value="medium">medium</option>
            <option value="high">high</option>
        </select>
    </td>
    <td>
        <%=li.getdate()%>
    </td>
    <td><input  id='issue_id' name ='issue_id' value='<%=li.getissue_id()%>' class='disable'type="hidden"><%=li.getissue_id()%></td>
    <td>
        <%=li.getsubject()%>
    </td>
    <td>
        <%=li.getname() %>
    </td>
    <td>
        <%=li.getlocation()%>
    </td>
    <td>
        <%=li.getfeedback_rate()%>
    </td>
    <td><input  id='stat' name ='stat' value='<%=li.getstatus()%>' class='disable' type="hidden">
        <%=li.getstatus() %>
    </td>
    <td onclick='event.stopPropagation();return false;' id='dept'>
        <select name="dept" id="dept" class="select">
            <option value="<%=li.getdepartment()%>" selected>
                <%=li.getdepartment()%>
            </option>
            <option value="Education">Education</option>
            <option value="Development">Development</option>
            <option value="Municipal Affairs">Municipal Affairs</option>
            <option value="Public Works and Sports">Public Works and Sports</option>
            <option value="Tourism">Tourism</option>
            <option value="Food and Supplies">Food and Supplies</option>
            <option value="Transport and Water Resource">Transport and Water Resource</option>
            <option value="Technical education and skill development">Technical education and skill development</option>
            <option value="Fisheries">Fisheries</option>
            <option value="Law and Judicial">Law and Judicial</option>
            <option value="Public Health">Public Health</option>
            <option value="Forest">Forest</option>
            <option value="Agriculture">Agriculture</option>
            <option value="IT and Electronics">IT and Electronics</option>
            <option value="Others">Others</option>
        </select>
    </td>
    <td><input  id='iid' name ='iid' value='<%=li.getissue_id()%>' type="hidden">  
        <input  id='prior' name ='prior' value='<%=li.getpriority()%>' type="hidden">
        <input  id='dep' name ='dep' value='<%=li.getdepartment()%>' type="hidden">
        <input  id='stt' name ='stt' value='<%=li.getstatus()%>' type="hidden">
        <button type="submit" id="assign" value="assign" >Assign</button>
    </td>
    <td onclick='event.stopPropagation();return false;'> <button id="close1" onclick="location.href='closeissue?issue_id=<%=li.getissue_id()%>';">Close Issue</button>
    </td>
    </form>
    </tr>
    <%}}%>

</tbody>
</table>
</div>
</div>
</div>
<div id="copyright" class="ccontainer">
<p>&copy; Team Apex IEM</p>
</div>
<script>    
$(".myTable").on("click", "td:not(:last)", function() {
 var issueid = $(this).closest('tr').find("td:eq(2) input").val();
 window.location = 'monitorcmissues.jsp?issue_id=' + issueid;

});


$('.myTable').on('click', 'button', function(e) {
 e.stopPropagation();
});



$("select[name='priority']").on("change", function() {
 var selected = $(this).find("option:selected").text();
 $("input[name='prior']").val(selected);
});

$("select[name='dept']").on("change", function() {
 var selected = $(this).find("option:selected").text();
 $("input[name='dep']").val(selected);
});   
</script>
                                        
</body>
</html>
                                        
                                        