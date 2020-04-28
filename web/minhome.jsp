<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@page import="java.sql.*"%>
<%@page import="connection.dbconnect"%>
<%@ page session="true" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    
    <script src="jquery-3.4.1.js" type="text/javascript">
        
    </script>
<head>
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
        else if (request.getParameter("m2") != null) {
    %>      
    <script> 
        alert('Issue Resolved Successfully');</script>
    <%}
        else if (request.getParameter("m3") != null) {%>
    <script>alert('Enter Data. Try Again');</script>
    <%}
    %>
 <script>
function issuesearch() {
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
};

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
				<li class="current_page_item"><a href="minhome.jsp">Monitor Issues</a></li>
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
                                    
                                    String s1,s2,s3,s4;
                                    try{    
                                       Connection con = dbconnect.getConnection();
                                       Statement st = con.createStatement();
                                       Statement st2 = con.createStatement();
                                       rs=st.executeQuery("select * from minister where username = '"+user+"'");

                                         if ( rs.next() )
					   		{
								s1=rs.getString(1);
								s2=rs.getString(3);
								s3=rs.getString(4);
                                                                s4=rs.getString(5);
                                                                
                                                              
                                                    rs1=st2.executeQuery("select * from issue where Department = '"+s4+"' and status = 'assigned'");  
                                       
                                                     
                                         	%>
                         <div class="title">
                              <h2> Act On Issues</h2>
                              <h2><%=s3%></h2>
                              <p>Department:- <%=s4%></p>
                              <br>
                              <span class="byline"><input type="text" id="myInput" onkeyup="issuesearch()" placeholder="Search by Issue ID.."></span> 
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
                              <%
                                    String user_id = s2;  
                                    session.setAttribute("user_id",user_id);
                                }
                              while(rs1.next())
                              {
                                  %>
                                  <tr>
                                      <td><%=rs1.getString(11) %></td>
                                      <td><%=rs1.getString(14) %></td>
                                      <td><input  id='issue_id' name ='issue_id' value='<%=rs1.getString(1)%>' class='disable' type="hidden"><%=rs1.getString(1)%></td>
                                      <td title= "<%=rs1.getString(3) %>" ><%=rs1.getString(2) %></td>
                                      <td><%=rs1.getString(6) %></td>
                                      <td><%=rs1.getString(4) %></td>
                                      <td><%=rs1.getString(7) %></td>
                                      <td onclick='event.stopPropagation();return false;' ><textarea id="wd" rows="4" cols="50" name="wd" onkeyup= "copydata()" ></textarea></td>
                                      <td><form method='POST' action="actonissue.jsp" id='form1'>
                                              <input  id='issue_id' name ='issue_id' value='<%=rs1.getString(1)%>' class='disable' type="hidden">
                                                  <input  id='wdi' name ='wdi' class='disable' type="hidden" >
                                                      <button type="submit" >Resolve Issue</button> </form>
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
                  $(".myTable").on("click", "td:not(:last)", function(){
                   var issueid = $(this).closest('tr').find("td:eq(2) input").val();
                   window.location = 'viewminissues.jsp?issue_id='+issueid;
                    });           
                    
                    
                   $('.myTable').on('click', 'button', function(e) {
                        e.stopPropagation();
                      });

                    $('[name ="wd"]').keyup(function(){
                    //console.log($(this).val())
                    $(this).closest("tr").find("#wdi").val($(this).val());
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
                              shouldSwitch= true;
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
                          switchcount ++;      
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
      
                                   
    
<div id="copyright" class="ccontainer" >
	<p>&copy; Team Apex IEM</p>
</div>
</body>
</html>