<%@page import="java.sql.*"%>
<jsp:useBean id="connection" class="connection.LoginManager" scope="request" />
<%@ page session="true" %>
        <%
        
        String username = request.getParameter("username");
        session.setAttribute("username",username);
        String password = request.getParameter("password");
        boolean h = connection.MinisterLogin(username,password);
        if(h)
        {
            session.setAttribute("minname",username);
            response.sendRedirect("minhome.jsp?m1=success");
        }
        else{
            out.println("Invalid credentials <a href='index.html'>try again</a>");
        }
        %>