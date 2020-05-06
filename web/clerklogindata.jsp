<%@page import="java.sql.*"%>
<jsp:useBean id="connection" class="connection.Login" scope="request" />
<%@ page session="true" %>
        <%
        
        String username = request.getParameter("username");
        session.setAttribute("username",username);
        String password = request.getParameter("password");
        boolean h = connection.ClerkLogin(username,password);
        if(h)
        {
            session.setAttribute("clerkname",username);
            response.sendRedirect("clerkhome.jsp?m1=success");
        }
        else{
            out.println("Invalid credentials <a href='index.html'>try again</a>");
        }
        %>