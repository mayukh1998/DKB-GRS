<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="java.sql.*"%>
<%@ page session="true" %>
<%@page import="connection.Dbconnect"%>
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
        else if (request.getParameter("m2") != null) {
    %>      
    <script> 
        alert('Issue Resolved Successfully');</script>
    <%}
        else if (request.getParameter("m3") != null) {%>
    <script>alert('Enter Data. Try Again');</script>
    <%}
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
                    
                         <%  
                                    String user = session.getAttribute("username").toString();
                                    ResultSet rs=null;
                                    ResultSet rs1=null;
                                    
                                    String s1,s2,s3,s4;
                                    try{    
                                       Connection con=Dbconnect.getconnection();
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
</script>                        
    </div>     
</div>
      
                                   
    
<div id="copyright" class="ccontainer" >
	<p>&copy; Team Apex IEM</p>
</div>
</body>
</html>