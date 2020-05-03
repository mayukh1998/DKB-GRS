<%@page import="java.sql.*"%>
<%@page import="connection.Dbconnect"%>
<%@ page session="true" %>

<html>
<head>
    <title> Getting....................</title>
</head>

<body>
<%
    int k = 0;
    String iid = request.getParameter("id");
    String wd="";
    if(iid != "")
    {
    
                    try{

                        Connection con=Dbconnect.getconnection();
                        Statement st = con.createStatement();
                        ResultSet rs = null;
                        rs = st.executeQuery("select * from issue where issue_id = '"+iid+"' "); 
                        if(rs.next()){
                            wd = rs.getString(15);
                            }

                response.sendRedirect("givefeedback.jsp?wd="+wd+"&id="+iid);
                

                }
                catch(Exception e1)
                {
                out.println(e1.getMessage());
                }
    }
    else
    {
        
        response.sendRedirect("givefeedback.jsp");
    }

%>
    
</body>
</html>