<%@page import="java.sql.*"%>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@page import="connection.dbconnect"%>
<%@ page session="true" %>

<html>
<head>
    <title> Resolving Issue....................</title>
</head>

<body>
<%
    int k = 0;
    String id = request.getParameter("issue_id");
    String wd = request.getParameter("wdi");
    String pr = "low";
    String sta = "resolved";
    String phn = "" ;
    if(wd != "")
    {
                    try{

                        Connection con=dbconnect.getConnection();
                        Statement st = con.createStatement();
                        Statement stmt = con.createStatement();

                        ResultSet rs = null;
                        rs = st.executeQuery("select * from issue where issue_id= '"+id+"'"); 
                        if(rs.next()){
                            phn = rs.getString(12);
                            }

                        stmt.executeUpdate("UPDATE issue SET minfeed = '"+wd+"', status='"+sta+"' WHERE  issue_id = '"+id+"';");
                        
                        response.sendRedirect("acknow.jsp?phn="+phn);    
              
                }
                catch(Exception e1)
                {
                out.println(e1.getMessage());
                }
    }
                    else{
                 response.sendRedirect("minhome.jsp?m3=blank"); 
                            
                            }
%>
    
</body>
</html>