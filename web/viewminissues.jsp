<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
 <%@ page session="true" %>
<script src="sort.js"></script>
<script src="search.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<script src="jquery-3.4.1.js" type="text/javascript"></script>
<%@page import="connection.Issue"%>
<%@page import="java.util.List"%>
<jsp:useBean id="connection" class="connection.Issuemanager" scope="request" />
        
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>DKB Grievance Redressal</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="http://fonts.googleapis.com/css?family=Chivo:400,900" rel="stylesheet" />
    <link href="default1.css" rel="stylesheet" type="text/css" media="all" />
    <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
    <link href="viewmin.css" rel="stylesheet" type="text/css" media="all" />
</head>
<%
String s1 = null,s2 = null,s3 = null,s4 = null,s5 = null,s6 = null,s7 = null,s8 = null,s9 = null,s10 = null,s11 = null,s12 = null,s13 = null,s14 = null,s15 = null;
String issue_id=request.getParameter("issue_id");
List <Issue> issue = connection.monitor_issue();
for (Issue i:issue){
if(i.getissue_id().equals(issue_id)){
s1 = i.getissue_id();
s2 = i.getsubject();
s3 = i.getdes();
s4 = i.getlocation();
s6 = i.getname();
s7 = i.getstatus();
s8 = i.getfeedback();
s9 = i.getfeedback_rate();
s10 = i.getdepartment();
s11 = i.getpriority();
s14 = i.getdate();
s15 = i.getminfeed();
}}
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
                <li><a href="minhome.jsp">Monitor Issues</a></li>
                <li><a href="logout.jsp">LogOut</a></li>
            </ul>
        </div>
    </div>

    <div id="page" class="container">
        <div class="title">
            <h2>Details</h2>
            <h2>Issue ID: <%=s1%></h2>
            <br />
            <span class="byline">
                <p><b>Issue Subject: <%=s2%></b></p>
            </span>
        </div>
        <div id="special" style="text-align: center;">
            <table id="viewissue" text>
                <tbody>
                    <tr>
                        <td>
                            ISSUE DESCRIPTION:
                        </td>
                        <td>
                            <%=s3%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            DEPARTMENT:
                        </td>
                        <td>
                            <%=s10%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            NAME:
                        </td>
                        <td>
                            <%=s6%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            LOCATION:
                        </td>
                        <td>
                            <%=s4%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            STATUS:
                        </td>
                        <td>
                            <%=s7%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            PRIORITY:
                        </td>
                        <td>
                            <%=s11%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            MINISTER'S FEEDBACK:
                        </td>
                        <td>
                            <%=s15%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            FEEDBACK RATING:
                        </td>
                        <td>
                            <%=s9%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            FEEDBACK COMMENTS:
                        </td>
                        <td>
                            <%=s8%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            DATE:
                        </td>
                        <td>
                            <%=s14%>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>


<div id="copyright" class="ccontainer">
    <p>&copy; Team Apex IEM</p>
</div>

</body>
</html>
                                        
                                        
