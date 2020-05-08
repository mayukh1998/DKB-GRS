<%@page import="java.sql.*"%>
<%@ page session="true" %> 
<jsp:useBean id="connection" class="connection.RegistrationManager" scope="request" />
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
    
    if(un != "" || p != "" || n != "")
    {
        int h =	connection.registerClerk(un,n,p);            
                if(h>=0){
                out.println(" Registered Successfully.");
                response.sendRedirect("addclerk.jsp?m1=success");    
                        }

                else    {
                response.sendRedirect("addclerk.jsp?m2=Failed");
                        }
     }
    else
    {
        
        response.sendRedirect("addclerk.jsp");
    }

%>
    
</body>
</html>