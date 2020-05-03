<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
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
            </head>

            <%
        if (request.getParameter("m1") != null) {%>
                <script>
                    alert('Login Success');
                </script>
                <% }
     
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
                                        <li class="current_page_item"><a href="clerkhome.jsp">Home</a></li>
                                        <li><a href="viewclerkissues.jsp">All Issues</a></li>
                                        <li><a href="createclerkIssue.jsp">Create Issue</a></li>
                                        <li><a href="logout.jsp">LogOut</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- end #menu -->

                            <div id="page" class="container">
                                <div id="content">
                                    <div id="left-pane">

                                        <ul class="style2">
                                            <li><a href="createclerkIssue.jsp">Register Complaint or Issue</a></li>
                                            <li><a href="viewclerkissues.jsp">View all issues</a></li>
                                            <li><a href="logout.jsp">Logout</a></li>
                                        </ul>
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
                                       rs=st.executeQuery("select * from clerk where user_name = '"+user+"'");

                                         if ( rs.next() )
					   		{
								s1=rs.getString(1);
								s2=rs.getString(2);
								s3=rs.getString(3);

                                         	%>

                                                <h2> Welcome </h2>
                                                <h2> <%=s2%> </h2>
                                        </div>
                                        <div id="text1">

                                            <ul style="list-style-type:circle;">
                                                <li>UserName:-
                                                    <% out.println(s3); %>
                                                </li>
                                                <br>
                                                <li>Name:-
                                                    <% out.println(s2); %>
                                                </li>
                                                <br>
                                                <li>Clerk ID:-
                                                    <% out.println(s1); %>
                                                </li>
                                                <br>

                                            </ul>

                                        </div>

                                    </div>
                                    <%
                                    String clerk_id = s1;
                                    session.setAttribute("clerk_id",clerk_id);
}
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

                        <div id="copyright" class="ccontainer">
                            <p>&copy; Team Apex IEM</p>
                        </div>
                    </body>

            </html>
