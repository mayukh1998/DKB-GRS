<%@page import="java.sql.*"%>
<jsp:useBean id="connection" class="connection.Issuemanager" scope="request" />
<%@ page session="true" %>
<html>
<head>
    <title> Assigning....................</title>
</head>

<body>
<%
    int k = 0;
    String stat = request.getParameter("stt");
    String prior = request.getParameter("prior");
    String id = request.getParameter("iid");
    String dept = request.getParameter("dep");
    String pr = "low";
    String sta = "assigned";
    String open= "open";
    String verified= "verified";
    String ret;
    
    if(stat.equals(open))
    {
        ret = connection.assignissue(prior,dept,sta,id);
        response.sendRedirect("viewcmissues.jsp?m1="+ret);    
    }
    else if(stat.equals(verified))
    {
        response.sendRedirect("viewcmissues.jsp?m2="+id);  
    }
    else{
        response.sendRedirect("viewcmissues.jsp?m2=failed");  
    }
%>
</body>
</html>