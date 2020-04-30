<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@page import="java.sql.*"%>
<%@page import="connection.issue"%>
<%@ page session="true" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Chivo:400,900" rel="stylesheet" />
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
 <script>
function myFunction() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>   
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
				<li><a href="clerkhome.jsp">Home</a></li>
				<li class="current_page_item"><a href="viewclerkissues.jsp">All Issues</a></li>
				<li><a href="createclerkIssue.jsp">Create Issue</a></li>
				<li><a href="logout.jsp">LogOut</a></li>
			</ul>
		</div>
        </div>
		<!-- end #menu --> 
                
                <div id="page" class="container">
                    
                         <%  
                                    String user = session.getAttribute("username").toString();
                                    ResultSet rs=null;
                                    ResultSet rs1=null;
                                    String s1,s2,s3,s4,s5,s6,s7;
                                    try{    
                                       Connection con = issue.getConnection();
                                       Statement st = con.createStatement();
                                       Statement st2 = con.createStatement();
                                       rs1=st2.executeQuery("select * from issue ");                        
                                         	%>
                         <div class="title">
                              <h2> All Issues</h2>
                              <br>
                              <span class="byline"><input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search by Issue ID.."></span> 
                         </div>

                    <div class= "spltable">
                        <style>
                            table {
                                border-collapse: collapse;
                                width: 100%;
                              }
                            th, td {
                                    padding: 15px;
                                    margin-bottom: 1.5em;
                                  }
                            th {
                                background: #3333cc;
                                color: white;
                              }
                              #myInput {
                                background-image: url(images/searchicon.png); /* Add a search icon to input */
                                background-position: 10px 12px; /* Position the search icon */
                                background-repeat: no-repeat; /* Do not repeat the icon image */
                                width: 90%; /* Full-width */
                                font-size: 16px; /* Increase font-size */
                                padding: 12px 20px 12px 40px; /* Add some padding */
                                border: 1px solid #ddd; /* Add a grey border */
                                margin-bottom: 12px; /* Add some space below the input */
                              }

                            tr:nth-child(even) {background-color: #f2f2f2;}

                        </style>
                        <table border-bottom=1 align=center style="text-align:center" id="myTable">
                            <thead>
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
                              <%
                             
                              while(rs1.next())
                              {
                                  %>
                                  <tr>
                                      <td><%=rs1.getString(1) %></td>
                                      <td><%=rs1.getString(2) %></td>
                                      <td align ="justify"><%=rs1.getString(3) %></td>
                                      <td><%=rs1.getString(10) %></td>
                                        <td><%=rs1.getString(14) %></td>

                                      <td><%=rs1.getString(7) %></td>
                                  </tr>
                                  <%}%>
                                 </tbody>
                              </table>
                                  <%
                                        con.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
       
   
                                        %>   
                    </div>
                        
                        
                        
                        
                    </div>
                
</div>
      
                                   
    
<div id="copyright" class="ccontainer" >
	<p>&copy; Team Apex IEM</p>
</div>
</body>
</html>