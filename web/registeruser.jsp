<%@page import="java.sql.*"%>
<%@ page session="true" %> 
<jsp:useBean id="connection" class="connection.Registration" scope="request" />
    <html>
    <head>
    <title> Registering.................... < /title> < /head>

<body>
    
    <%
    int k = 0;
    String un = request.getParameter("user_name");
    String n = request.getParameter("name");
    String p = request.getParameter("user_password");
    String e = request.getParameter("user_email");
    String ph = request.getParameter("phn");
    String l = request.getParameter("location");

    if(un != "" || p != "" || e != "" || ph  != "" || l != "" || n != "")
    {

        int h =	connection.registerUser(un,n,p,e,ph,l);
                if(h>=0){
                session.setAttribute("getAlert", "Yes");
                response.sendRedirect("login.jsp?m1=Success");
                out.println("User Registered Successfully. Now Login. ");
                        }

                else    {
                response.sendRedirect("userregister.jsp?m2=Failed");
                        }

                }
    else
    {

        response.sendRedirect("userregister.jsp");
    }

%>
</body> 
</html>