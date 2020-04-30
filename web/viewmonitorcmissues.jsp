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
<script src="jquery-3.4.1.js" type="text/javascript"></script>
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
    td = tr[i].getElementsByTagName("td")[2];
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
				<li><a href="cmhome.jsp">Home</a></li>
				<li><a href="viewcmissues.jsp">Assign Issues</a></li>
				<li><a href="addclerk.jsp">Add Clerk</a></li>
                                <li><a href="addmin.jsp">Add Minister</a></li>
				<li><a href="logout.jsp">LogOut</a></li>
			</ul>
		</div>
        </div>
		<!-- end #menu --> 
                
                <div id="page" class="container">
                    
                         <%         ResultSet rs=null;
                                    ResultSet rs1=null;
                                    String s1,s2,s3,s4,s5,s6,s7;
                                    try{    
                                       Connection con = issue.getConnection();
                                       Statement st = con.createStatement();
                                       Statement st2 = con.createStatement();
                                       rs1=st2.executeQuery("select * from issue ");                        
                                         	%>
                         <div class="title">
                              <h2> Monitor Issues</h2>
                              <br>
                              <span class="byline"><input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search by Issue ID.."></span> 
                         </div>

                    <div class="spltable">
                                <style>
                                    table {
                                        border-collapse: collapse;
                                        width: 100%;
                                    }
                                    
                                    th {
                                        padding: 15px;
                                        margin-bottom: 1.5em;
                                        cursor: pointer;
                                    
                                        background: #3333cc;
                                        color: white;
                                    }
                                    td{
                                        padding: 10px;
                                        margin-bottom: 1.5em;
                                        cursor: pointer;
                                    }
                                    
                                    tr:nth-child(even) {
                                        background-color: #f2f2f2;
                                    }
                                    
                                    tr:hover {
                                        background-color: #ebe4d1;
                                    }
                                    
                                    #myInput {
                                        background-image: url(images/searchicon.png);
                                        /* Add a search icon to input */
                                        background-position: 10px 12px;
                                        /* Position the search icon */
                                        background-repeat: no-repeat;
                                        /* Do not repeat the icon image */
                                        width: 90%;
                                        /* Full-width */
                                        font-size: 16px;
                                        /* Increase font-size */
                                        padding: 12px 20px 12px 40px;
                                        /* Add some padding */
                                        border: 1px solid #ddd;
                                        /* Add a grey border */
                                        margin-bottom: 12px;
                                        /* Add some space below the input */
                                    }
                                    
                                    button {
                                        background-color: #3333cc;
                                        color: white;
                                        padding: 14px 0;
                                        margin: 3px 0;
                                        border: none;
                                        cursor: pointer;
                                        width: 95px;
                                        letter-spacing: 0.20em;
                                        text-decoration: none;
                                        text-transform: uppercase;
                                        font-size: 0.45em;
                                    }
                                    
                                    button:hover {
                                        opacity: 0.8;
                                    }
                                    input#issue_id{
                                        border-top-style: hidden;
                                        border-right-style: hidden;
                                        border-left-style: hidden;
                                        border-bottom-style: hidden;
                                        text-align: center;
                                        background-color: transparent;
                                        font-size: 14px;
                                        width: 100px;
                                            }
                                    select {
                                        height: auto;
                                        width: 100%;
                                        padding: 14px 8px 14px 8px;
                                        display: inline-block;
                                        border: 1px solid #ccc;
                                        box-sizing: border-box;
                                    }
                                    
                                    select option:first-of-type {
                                        display: none;
                                    }
                                    .disable{
                                        pointer-events:none;
                                        }
                                </style>
                                <table border-bottom=1 align=center style="text-align:center" class="myTable" id="myTable"  >
                                        <thead>
                                            <tr>
                                                <th onclick="sortTable(0)">Priority</th>
                                                <th onclick="sortTable(1)">Date</th>
                                                <th onclick="sortTable(2)">Issue ID</th>
                                                <th onclick="sortTable(3)">Issue Subject</th>
                                                <th onclick="sortTable(4)">Name</th>
                                                <th onclick="sortTable(5)">Location</th>
                                                <th onclick="sortTable(6)">Feedback</th>
                                                <th onclick="sortTable(7)">Status</th>
                                                <th onclick="sortTable(8)">Department</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%

                              while(rs1.next())
                              {
                                  
                                  %>
                                 
                                     <tr>
                                                    <td id='priority'> <%=rs1.getString(11)%></td>
                                                    <td>
                                                        <%=rs1.getString(14) %>
                                                    </td>
                                                    <td value='<%=rs1.getString(1)%>'><input  id='issue_id' name ='issue_id' value='<%=rs1.getString(1)%>' class='disable'type="hidden"><%=rs1.getString(1)%></td>
                                                    <td>
                                                        <%=rs1.getString(2) %>
                                                    </td>
                                                    <td>
                                                        <%=rs1.getString(6) %>
                                                    </td>
                                                    <td>
                                                        <%=rs1.getString(4) %>
                                                    </td>
                                                    <td>
                                                        <%=rs1.getString(9) %>
                                                    </td>
                                                    <td>
                                                        <%=rs1.getString(7) %>
                                                    </td>
                                                    <td id='dept'><%=rs1.getString(10)%>        
                                                    </td>
                                               
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
 
                            <script>
                                    $(".myTable").on("click", "td", function(){
                                        var issueid = $(this).closest('tr').find("td:eq(2) input").val();
                                        window.location = 'monitorcmissues.jsp?issue_id='+issueid;
                                });
                                
                                function sortTable(n) {
                                    var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;

                                    table = document.getElementById("myTable");
                                    switching = true;
                                    //Set the sorting direction to ascending:
                                    dir = "asc";
                                    /*Make a loop that will continue until
                                    no switching has been done:*/
                                    while (switching) {
                                        //start by saying: no switching is done:
                                        switching = false;
                                        rows = table.rows;
                                        /*Loop through all table rows (except the
                                        first, which contains table headers):*/
                                        for (i = 1; i < (rows.length - 1); i++) {
                                            //start by saying there should be no switching:
                                            shouldSwitch = false;
                                            /*Get the two elements you want to compare,
                                            one from current row and one from the next:*/
                                            x = rows[i].getElementsByTagName("TD")[n];
                                            y = rows[i + 1].getElementsByTagName("TD")[n];
                                            /*check if the two rows should switch place,
                                            based on the direction, asc or desc:*/
                                            if (dir == "asc") {
                                                if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                                                    //if so, mark as a switch and break the loop:
                                                    shouldSwitch = true;
                                                    break;
                                                }
                                            } else if (dir == "desc") {
                                                if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
                                                    //if so, mark as a switch and break the loop:
                                                    shouldSwitch = true;
                                                    break;
                                                }
                                            }
                                        }
                                        if (shouldSwitch) {
                                            /*If a switch has been marked, make the switch
                                            and mark that a switch has been done:*/
                                            rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                                            switching = true;
                                            //Each time a switch is done, increase this count by 1:
                                            switchcount++;
                                        } else {
                                            /*If no switching has been done AND the direction is "asc",
                                            set the direction to "desc" and run the while loop again.*/
                                            if (switchcount == 0 && dir == "asc") {
                                                dir = "desc";
                                                switching = true;
                                            }
                                        }
                                    }
                                }
                            </script>
                </div>
                        
                        
                        
             </div>
                
</div>
      
                                   
    
<div id="copyright" class="ccontainer" >
	<p>&copy; Team Apex IEM</p>
</div>
</body>
</html>