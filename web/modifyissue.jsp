<%@page import="java.sql.*"%>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@page import="connection.dbconnect"%>
<%@ page session="true" %>

<html>
<head>
    <title> Closing....................</title>
</head>

<body>
<%
    int k = 0;
    String stat = request.getParameter("stt");
    String prior = request.getParameter("prior");
    String id = request.getParameter("iid");
    String dept = request.getParameter("dep");
    String pr = "low";
    String sta = "assigned";
    String open= "open";
    String verified= "verified";
    
    
    if(stat.equals(open))
    {
                    try{

                        Connection con=dbconnect.getConnection();
                        Statement st = con.createStatement();
                        Statement stmt = con.createStatement();

                        ResultSet rs = null;
                        rs = st.executeQuery("select * from issue where issue_id= '"+id+"'"); 
                        if(rs.next()){
                            k = rs.getInt(1);
                            }
                        k = k+1;

                        stmt.executeUpdate("UPDATE issue SET priority = '"+prior+"',  Department = '"+dept+"', status='"+sta+"' WHERE  issue_id = '"+id+"';");
                        
                        response.sendRedirect("viewcmissues.jsp?m1="+id);    
              
                }
                catch(Exception e1)
                {
                out.println(e1.getMessage());
                }
    }
    else if(stat.equals(verified))
    {
                response.sendRedirect("viewcmissues.jsp?m2="+id);  
    }
    else{
        System.out.println(stat);
    }
%>
</body>
</html>