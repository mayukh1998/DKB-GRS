<%@page import="connection.Issue"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="connection" class="connection.Issuemanager" scope="request" />
<%@ page session="true" %>

<html>
<head>
    <title> Resolving Issue....................</title>
</head>

<body>
<%
    String ret;
    String id = request.getParameter("issue_id");
    String wd = request.getParameter("wdi");
    
    if(wd != "")
    {
        ret = connection.act_on_issue(wd,id);            
        response.sendRedirect("minhome.jsp?ret="+ret);
                }
   else{
                 response.sendRedirect("minhome.jsp?m3=blank"); 
                 }
%>
    
</body>
</html>