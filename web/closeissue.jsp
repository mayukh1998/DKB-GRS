<%@page import="java.sql.*"%>
<jsp:useBean id="connection" class="connection.Issuemanager" scope="request" />
<%@ page session="true" %>

<html>
<head>
    <title> Closing Issue....................</title>
</head>

<body>

<%
String id = request.getParameter("issue_id");
    String status = connection.closeissue(id);
    
    if (status.equals("close")) {
        response.sendRedirect("viewcmissues.jsp?m3=" + status);
        }else {
        response.sendRedirect("viewcmissues.jsp?m4=" + status);
        }
%>
</body>
</html>