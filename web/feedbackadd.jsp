<%@page import="java.sql.*"%>
<%@page import="connection.issue"%>
<%@ page session="true" %>

<html>
<head>
    <title> Registering....................</title>
</head>

<body>
<%
    String k = "";
    String ii = request.getParameter("issue_id");
    String rate = request.getParameter("feedback");
    String feed = request.getParameter("feed");
    
    int rt = Integer.parseInt(rate);
    
    
    if(feed != "" || ii != "" || rate != "" )
    {
    
                    try{

                        Connection con=issue.getConnection();
                        Statement st = con.createStatement();
                        Statement st1 = con.createStatement();
                        String cl = "verified";
                        if(rt < 3 )
                        {
                            cl = "open";
                        }
                        
                        PreparedStatement ps = con.prepareStatement("Update issue Set feedback = '"+feed+"',feedback_rate = '"+rate+"', status = '"+cl+"' where issue_id = '"+ii+"'");

                        
                        int h = ps.executeUpdate();

                            if(h>=0){


                            response.sendRedirect("givefeedback.jsp?m1=success");    
                            }

                            else    {

                            response.sendRedirect("givefeedback.jsp");
                    
                        }

                        }
                
                catch(Exception e1)
                {
                out.println(e1.getMessage());
                }
    }
    else
    {
        
        response.sendRedirect("givefeedback.jsp?m2=failed");
    }

%>
    
</body>
</html>