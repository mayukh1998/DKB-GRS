<%@page import="java.sql.*"%>
<%@ page session="true" %> 
<jsp:useBean id="connection" class="connection.Registration" scope="request" />

<html>
<head>
    <title> Registering....................</title>
</head>

<body>
<%
    int k = 0;
    String un = request.getParameter("user_name");
    String n = request.getParameter("name");
    String p = request.getParameter("user_password");
    String dept = request.getParameter("dept");
    
    if(un != "" || p != "" ||  dept != "" || n != "")
    {
      int h =	connection.registerMinister(un,n,p,dept);
         if(h>=0){
                out.println("Minister Registered Successfully");
                response.sendRedirect("addmin.jsp?m1="+k);    
                        }
         else    {
                response.sendRedirect("addmin.jsp?m2=Failed");
                        }
    }
    else
    {
        
        response.sendRedirect("addmin.jsp");
    }
%>
    
</body>
</html>