<%@page import="java.sql.*"%>
<%@page import="connection.issue"%>
<%@ page session="true" %>
        <%
        
        String username = request.getParameter("username");
        session.setAttribute("username",username);
        String password = request.getParameter("password");
       
        try{
        
        String user=null;
        
        Connection con =issue.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from cm where username= '"+username+"' and password='"+password+"'");
        if(rs.next())
        {
            
        username = rs.getString(1);
        session.setAttribute("username",username);
        response.sendRedirect("cmhome.jsp?m1=success");
        return;
        }
        else {
        out.println("Invalid password <a href='index.html'>try again</a>");
        }
        }
        catch(Exception e)
        {
        System.out.println("Error in emplogact"+e.getMessage());
        }
        %>