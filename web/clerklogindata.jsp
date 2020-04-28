<%@page import="java.sql.*"%>
<%@page import="connection.dbconnect"%>
<%@ page session="true" %>
        <%
        
        String username = request.getParameter("username");
        session.setAttribute("username",username);
        String password = request.getParameter("password");
       
        try{
        
        String user=null;
        
        Connection con =dbconnect.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from clerk where user_name= '"+username+"' and password='"+password+"'");
        if(rs.next())
        {
            
        username = rs.getString(3);
        session.setAttribute("username",username);
        response.sendRedirect("clerkhome.jsp?m1=success");
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