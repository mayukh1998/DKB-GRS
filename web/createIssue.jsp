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
                <link href="user.css" rel="stylesheet" type="text/css" media="all" />
                    <script type="text/javascript">
                   var Msg ='<%=request.getParameter("m1")%>';
                   if (Msg !== "null") {
                    function alertName(){
                    alert("Issue Created Successfully ID " +Msg);
                    } 
                    }
                    </script> 
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
                                            <li><a href="createIssue.jsp">Register Complaint or Create Issue</a></li>
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
                                                <h2> <%=s4%> </h2>
                                                <h2> Create Issue</h2>
                                        </div>
                                        <div id="text1">

                                            <form action="issueadd.jsp">
                                                <div class="formcontainer">
                                                    <hr/>
                                                    <div class="container22">

                                                        <label for="username"><strong>UserId: </strong></label>
                                                        <br>
                                                        <input type="text" id="user_id" name="user_id" value="<%=s5%>" class="disable">
                                                        <br>
                                                        <br>
                                                        <label for="name"><strong>Name:</strong></label>
                                                        <br>
                                                        <input type="text" id="name" value=" <%=s4%>" name="name" class="disable">
                                                        <br>

                                                        <br>
                                                        <label for="email"><strong>Email:</strong></label>
                                                        <br>
                                                        <input type="email" id="email" value="<%=s1%>" name="user_email" class="disable">
                                                        <br>
                                                        <br>
                                                        <label for="phn"><strong>Phone Number:</strong></label>
                                                        <br>
                                                        <input type="text" id="phn" value="<%=s6%>" name="phn" class="disable">
                                                        <br>
                                                        <br>
                                                        <label for="location"><strong>Location:</strong></label>
                                                        <br>
                                                        <input type="text" id="location" value=" <%=s7%>" name="location" class="disable">
                                                        <br>
                                                        <br>
                                                        <label for="dept"><strong>Department:</strong></label>
                                                        <br>
                                                        <select id="dept" name="dept">
                                                            <option value="other" selected>Other</option>
                                                            <option value="health">Health</option>
                                                            <option value="education">Education</option>
                                                            <option value="sports">Sports</option>
                                                            <option value="welfare">Welfare</option>
                                                            <option value="forest">Forest</option>
                                                            <option value="food">Food</option>
                                                            <option value="agriculture">Agriculture</option>
                                                        </select>
                                                        <br>
                                                        <br>
                                                        <label for="subject"><strong>Issue Subject:</strong></label>
                                                        <br>
                                                        <input type="text" id="subject" placeholder="Enter Subject(within 50 chars)" name="subject" required>
                                                        <br>
                                                        <br>
                                                        <label for="decrip"><strong>Issue Description:</strong></label>
                                                        <br>
                                                        <textarea id="descrip" rows="4" cols="50" name="descrip" placeholder="Enter Description (within 300 chars)" required></textarea>
                                                        <br>
                                                    </div>
                                                    <button type="submit">Create Issue</button>
                                                    <button type="reset">Reset</button>
                                                </div>
                                            </form>

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

                                </div>
                            </div>

                        </div>

                        <div id="copyright" class="ccontainer">
                            <p>&copy; Team Apex IEM</p>
                        </div>
                    </body>
                <script type="text/javascript"> window.onload = alertName; </script>                            
            </html>