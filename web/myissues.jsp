<%@page import="java.util.*"%>
<%@page session="true" %>
<%@page import="java.util.ArrayList"%> 
<%@page import="connection.Issue"%> 
<%@page import="connection.Usermanager"%> 

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Chivo:400,900" rel="stylesheet" />
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="myissue.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<%
    String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12;   
    s1 = session.getAttribute("email").toString();
    s2 = session.getAttribute("username").toString();
    s4 = session.getAttribute("name").toString();
    s5 = session.getAttribute("userid").toString();
    s6 = session.getAttribute("phn").toString();
    s7 = session.getAttribute("location").toString();
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
                         <div class="title">
                              <h2> <%=s4%> </h2>
                                <h2> My Issues</h2>  
                                <span class="byline"><p><b><a href="acquireissue.jsp" rel="nofollow">Acquire Issues</a></b></p></span>
                    </div>
                    <div class= "spltable">
                       
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
                              List <Issue> list = Usermanager.user_view_issue(s5);
                              for (Issue i:list)
                                   {
                            %>
                              
                             <tr>
                                    <td><%=i.getissue_id()%></td>
                                      <td><%=i.getsubject()%></td>
                                      <td align ="justify"><%=i.getdes()%></td>
                                      <td><%=i.getdepartment()%></td>
                                      <td><%=i.getdate()%></td>
                                      <td><%=i.getstatus()%></td>
                                  </tr>
                                 </tbody>
                                  <%}%>
                              </table>
                </div>
            </div>
	</div>
                
</div>                       
    
<div id="copyright" class="container">
	<p>&copy; Team Apex IEM</p>
</div>
</body>
</html>