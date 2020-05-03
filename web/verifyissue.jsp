<jsp:useBean id="connection" class="connection.Usermanager" scope="request" />
<%@page import="java.sql.*"%>

<%@ page session="true" %>

<html>
<head>
    <title> Verifying....................</title>
</head>

<body>
<%
    int k = 0;
    String id = request.getParameter("issue_id");
    String ui = (String)session.getAttribute("user_id");  
    
    if(id != "" )
    {
        int h = connection.acquireissue(id,ui);
        if(h!=2){
            response.sendRedirect("assignissue.jsp?m2=success");    
             }
         else    {response.sendRedirect("assignissue.jsp?m3=failed");
             }
    }
    else
    {  
    response.sendRedirect("assignissue.jsp?m4=blank");
    }
%>
    
</body>
</html>