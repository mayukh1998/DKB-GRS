<%@page import="java.sql.*"%>
<%@page import="connection.Dbconnect"%>
<%@ page session="true" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<link href="http://fonts.googleapis.com/css?family=Chivo:400,900" rel="stylesheet" />
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="home.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
    <%
        if (request.getParameter("m1") != null) {%>
    <script>alert('Login Success');</script>
    <% }
        else 
        {
           
        }
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
				<li class="current_page_item"><a href="userhome.jsp">Home</a></li>
				<li><a href="myissues.jsp">My Issues</a></li>
				<li><a href="givefeedback.jsp">Feedback</a></li>
				<li><a href="logout.jsp">LogOut</a></li>
			</ul>
		</div>
        </div>
		<!-- end #menu --> 
                
                <div id="page" class="container">
                    <div id="content">
                        <div id="left-pane">
                            
                        
                            
                            
                            
                        <ul class="style2">
					<li><a href="createIssue.jsp">Register Complaint or Issue</a></li>
					<li><a href="givefeedback.jsp">Give Feedback to your existing resolved Issue</a></li>
					<li><a href="myissues.jsp">View your own issue</a></li>
					<li><a href="logout.jsp">Logout</a></li>
                        </div>
                        
                        
                        <div id="right-pane">
                            <div class="title">
                                
                                <%  
                                    String user = session.getAttribute("username").toString();
                                    ResultSet rs=null;
                                    String s1,s2,s3,s4,s5,s6,s7;
                                    try{    
                                       Connection con=Dbconnect.getconnection();
                                       Statement st = con.createStatement();
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
    <style>

    </style>                   
                                <h2> Welcome </h2>
                                <h2> <%=s4%> </h2>
                            </div>
                            <div id="text1">
                                
                                <ul style="list-style-type:circle;">
                                    <li>UserName:-  <% out.println(s2); %> </li>
                                    <br>
                                    <li>Name:-  <% out.println(s4); %></li>
                                    <br>
                                    <li>Email:-  <% out.println(s1); %></li>
                                    <li>User ID:-  <% out.println(s5); %></li>
                                    <br>
                                    <li>Location:-  <% out.println(s7); %></li>
                                    <br>
                                    <li>Phone Number:-  <% out.println(s6); %></li>
                                    
                                </ul>
                                
                                
                                
                                
                            </div>
                                        
                            
                            
                        </div>
                                        <%
                                    String user_id = s5;  
                                    session.setAttribute("user_id",user_id);
                                   }
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