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
				<li><a href="userhome.jsp">Home</a></li>
				<li class="current_page_item"><a href="myissues.jsp">My Issues</a></li>
				<li><a href="givefeedback.jsp">Feedback</a></li>
				<li><a href="logout.jsp">LogOut</a></li>
			</ul>
		</div>
        </div>
		<!-- end #menu --> 
                
                <div id="page" class="container">
                    <div id="content">
                         <%  
                                    String user = session.getAttribute("username").toString();
                                    ResultSet rs=null;
                                    ResultSet rs1=null;
                                    String s1,s2,s3,s4,s5,s6,s7;
                                    try{    
                                       Connection con=issue.getConnection();
                                       Statement st = con.createStatement();
                                       Statement st2 = con.createStatement();
                                       rs=st.executeQuery("select * from user where user_name = '"+user+"'");
                                       
                                         if ( rs.next() )
					   		{
								s1=rs.getString(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(4);
								s5=rs.getString(5);
								s6=rs.getString(6);
                                                                s7=rs.getString(7);
                                                                
                                         	%>
                         <div class="title">
                              <h2> <%=s4%> </h2>
                                <h2> My Issues</h2>  
                                <span class="byline"><p><b><a href="assignissue.jsp" rel="nofollow">Assign Issues</a></b></p></span>
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
                              
                            tr:nth-child(even) {background-color: #f2f2f2;}

                        </style>
                        <table border-bottom=1 align=center style="text-align:center">
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
                              rs1=st2.executeQuery("select * from issue where user_id = '"+s5+"'");
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
                    </div>
                        
                        
                        
                
                    </div>
	</div>
                
</div>
     <%
}
						con.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
       
   
                                        %>     
                                   
    
<div id="copyright" class="ccontainer" >
	<p>&copy; Team Apex IEM</p>
</div>
</body>
</html>