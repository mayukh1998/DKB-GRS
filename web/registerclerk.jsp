<%@page import="java.sql.*"%>
<%@page import="connection.issue"%>
<%@ page session="true" %>

<html>
<head>
    <title> Registering....................</title>
</head>

<body>
<%
    int k = 0;
    String un = request.getParameter("user_name");
    String n = request.getParameter("name");
    String p = request.getParameter("user_password");
    
    if(un != "" || p != "" || n != "")
    {
    
                    try{

                        Connection con=issue.getConnection();
                        Statement st = con.createStatement();
                        ResultSet rs = null;
                        
                        rs = st.executeQuery("select * from clerk ORDER BY clerk_id DESC"); 
                        if(rs.next()){
                            String cid = rs.getString(1);
                            String[] parts = cid.split("c"); 
                            String fp = parts[1];
                            k = Integer.parseInt(fp);
                            }
                        k = k+1;
                        String cid = "c"+k ;
                        
                        PreparedStatement ps = con.prepareStatement("insert into clerk values(?,?,?,?)");

                        ps.setString(1,cid);
                        ps.setString(2,n);
                        ps.setString(3,un); 
                        ps.setString(4,p);
                        

                        int h = ps.executeUpdate();

                if(h>=0){
                out.println("User Registered Successfully. Now Login. ");
                
                response.sendRedirect("addclerk.jsp?m1="+cid);    
                        }

                else    {
                response.sendRedirect("addclerk.jsp?m2=Failed");
                        }

                }
                catch(Exception e1)
                {
                out.println(e1.getMessage());
                }
    }
    else
    {
        
        response.sendRedirect("addclerk.jsp");
    }

%>
    
</body>
</html>