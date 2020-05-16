<%@page import="java.util.List" %>
<%@page import="connection.Issue"%> 
<%@page session="true" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script src="jquery-3.4.1.js" type="text/javascript"></script>
<script src="sort.js"></script>
<script src="search.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Chivo:400,900" rel="stylesheet" />

<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

<link href="minister.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
     <%
        if (request.getParameter("m1") != null) {%>
    <script>alert('Login Success');</script>
    <% }
        else if (request.getParameter("ret") != null) {  %>
    <script> 
        alert('Issue Resolved Successfully');</script>
    <%}
        else if (request.getParameter("m3") != null) {%>
    <script>alert('Enter Data. Try Again');</script>
    <%}
String userid = session.getAttribute("minid").toString();
String s1 = null, s2 = null, s4 = null, s5 = null, s3 = null, s7 = null;
List < Issue > minlist = Issue.getministerlist();
outer:
 for (Issue i: minlist) {
  if (i.getuser().equals(userid)) {
   s3 = i.getname();
   s2 = i.getusername();
   s5 = userid;
   s4 = i.getdepartment();
  }
 }
session.setAttribute("dept", s4);
session.setAttribute("name", s3);
List <Issue> list = Issue.get_issue();
%>
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
				<li class="current_page_item"><a href="minhome.jsp">Monitor Issues</a></li>
				<li><a href="logout.jsp">LogOut</a></li>
			</ul>
		</div>
        </div>
		<!-- end #menu --> 
                
                <div id="page" class="container">
                    <div class="title">
                              <h2> Act On Issues</h2>
                              <h2><%=s3%></h2>
                              <p>Department:- <%=s4%></p>
                              <br>
                              <span class="byline"><input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search by Issue ID.."></span> 
                         </div>
                    <div class= "spltable">
                                    <table border-bottom=1 align=center style="text-align:center" class="myTable" id="myTable"  >
                                       <thead>
                                <tr>
                                    <th onclick="sortTable(0)">Priority</th> 
                                    <th onclick="sortTable(1)">Date</th> 
                                   <th onclick="sortTable(2)">Issue ID</th>
                                   <th>Issue Subject</th>
                                   <th onclick="sortTable(4)">Name</th>
                                   <th onclick="sortTable(5)">Location</th>
                                   <th onclick="sortTable(7)">Status</th>
                                   <th>Work Done</th>
                                   <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <%for (Issue li:list){if(li.getdepartment().equals(s4) && li.getstatus().equals("assigned")){%>
                                  <tr>
                                      <td><%=li.getpriority() %></td>
                                      <td><%=li.getdate() %></td>
                                      <td><input  id='issue_id' name ='issue_id' value='<%=li.getissue_id()%>' class='disable' type="hidden"><%=li.getissue_id()%></td>
                                      <td title= "<%=li.getdes() %>" ><%=li.getsubject() %></td>
                                      <td><%=li.getname() %></td>
                                      <td><%=li.getlocation()%></td>
                                      <td><%=li.getstatus() %></td>
                                      <td onclick='event.stopPropagation();return false;' ><textarea id="wd" rows="4" cols="50" name="wd" onkeyup= "copydata()" ></textarea></td>
                                      <td><form method='POST' action="actonissue" id='form1'>
                                              <input  id='issue_id' name ='issue_id' value='<%=li.getissue_id()%>' class='disable' type="hidden">
                                                  <input  id='wdi' name ='wdi' class='disable' type="hidden" >
                                                      <button type="submit" >Resolve Issue</button> </form>
                                      </td>
                                  </tr>
                                  <%}}%>
                                 </tbody>
                              </table>
                    </div>

                                        
                       
                                        
<script>
$(".myTable").on("click", "td:not(:last)", function() {
 var issueid = $(this).closest('tr').find("td:eq(2) input").val();
 window.location = 'viewminissues.jsp?issue_id=' + issueid;
});


$('.myTable').on('click', 'button', function(e) {
 e.stopPropagation();
});

$('[name ="wd"]').keyup(function() {
 //console.log($(this).val())
 $(this).closest("tr").find("#wdi").val($(this).val());
});                 
</script>                        
    </div>     
</div>
      
                                   
    
<div id="copyright" class="ccontainer" >
	<p>&copy; Team Apex IEM</p>
</div>
</body>
</html>
