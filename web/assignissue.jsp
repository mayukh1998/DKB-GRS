<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="java.sql.*"%>
<%@page import="connection.dbconnect"%>
<%@ page session="true" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <%
        if (request.getParameter("m2") != null) {
        %>
        <script> alert('Issue Assigned Successfully!');</script>
           <% }
        else if(request.getParameter("m3") != null) 
               {
                   %>
                <script> alert('Failed! Give the ID correctly ');</script>
                   <%
               }
        else if(request.getParameter("m4") != null) 
               {
                   %>
                <script> alert('Enter Issue ID');</script>
                   <%
               }
        
           %>
        
        
        
        
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>DKB Grievance Redressal</title>
        <link href="http://fonts.googleapis.com/css?family=Chivo:400,900" rel="stylesheet" />
        <link href="default1.css" rel="stylesheet" type="text/css" media="all" />
        <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
        <link href="tempassign.css" rel="stylesheet" type="text/css" media="all" />
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
                        <li><a href="myissues.jsp">My Issues</a></li>
                        <li><a href="givefeedback.jsp">Feedback</a></li>
                        <li><a href="logout.jsp">LogOut</a></li>
                    </ul>
                </div>
            </div>
            <!-- end #menu --> 
            <div id="page" class="container">
                <div id="content">
                    <form action="verifyissue.jsp">
                        <div class="formcontainer">
                            <hr/>
                            <div class="container22">
                                <label for="issue_id"><strong>Enter Issue ID</strong></label>
                                <br>
                                <input type="text" placeholder="Enter Issue ID" name="issue_id" required>
                                <br>
                                <br>
                                <button type="submit">Assign Issue</button>    
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div id="copyright" class="ccontainer" >
            <p>&copy; Team Apex IEM</p>
        </div>
    </body>
</html>