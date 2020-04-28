<%@page import="java.sql.*"%>
<%@page import="connection.dbconnect"%>
<%@ page session="true" %>

<html>
<head>
    <title> Verifying....................</title>
</head>

<body>
<%
    int k = 0;
    String id = request.getParameter("issue_id");
    String ui = (String)session.getAttribute("user_id");  
    
    if(id != "" )
    {
        
    
                    try{
                        String first = "";
                        String second ="";
                        String cid ="";
                        String c ="c";
                        Connection con=dbconnect.getConnection();
                        Statement st = con.createStatement();
                        ResultSet rs = null;
                        rs = st.executeQuery("select * from issue where issue_id = '"+id+"'"); 
                        if(rs.next()){
                            cid = rs.getString(5);
                            first = cid.substring(0,1);
                            second = cid.substring(1,cid.length());
                            }
                        
                        if(first.equals(c))
                        {
                            cid=ui;
                            
                            PreparedStatement ps = con.prepareStatement("Update issue Set user_id = '"+cid+"' where issue_id = '"+id+"'");
                            int h = ps.executeUpdate();

                            if(h>=0){


                            response.sendRedirect("assignissue.jsp?m2=success");    
                            }

                            else    {

                            response.sendRedirect("assignissue.jsp?m3=failed");
                    
                        }
                        }
                        else
                        {
                            response.sendRedirect("assignissue.jsp?m3=notpresent");
                        }
                 }
                catch(Exception e1)
                {
                out.println(e1.getMessage());
                }
    }
    else
    {
        
        response.sendRedirect("assignissue.jsp?m4=blank");
    }

%>
    
</body>
</html>