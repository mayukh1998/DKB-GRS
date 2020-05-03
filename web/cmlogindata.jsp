<%@page import="java.sql.*"%>
<jsp:useBean id="connection" class="connection.Login" scope="request" />
<%@ page session="true" %>
        <%
        
        String username = request.getParameter("username");
        session.setAttribute("username",username);
        String password = request.getParameter("password");
        boolean h = connection.CMLogin(username,password);
        if(h)
        {
            session.setAttribute("cmname",username);
            response.sendRedirect("cmhome.jsp?m1=success");
        }
        else{
            out.println("Invalid password <a href='index.html'>try again</a>");
        }
        %>