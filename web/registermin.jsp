<%@page import="java.sql.*"%>
<%@page import="connection.dbconnect"%>
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
    String dept = request.getParameter("dept");
    
    if(un != "" || p != "" ||  dept != "" || n != "")
    {
    
                    try{

                        Connection con=dbconnect.getConnection();
                        Statement st = con.createStatement();
                        ResultSet rs = null;
                        rs = st.executeQuery("select * from minister ORDER BY min_id DESC"); 
                        if(rs.next()){
                            k = rs.getInt(3);
                            }
                        k = k+1;

                        PreparedStatement ps = con.prepareStatement("insert into minister values(?,?,?,?,?)");

                        ps.setString(1,un); 
                        ps.setString(2,p);
                        ps.setInt(3,k);
                        ps.setString(4,n);
                        ps.setString(5,dept);

                        int h = ps.executeUpdate();

                if(h>=0){
                out.println("User Registered Successfully. Now Login. ");
                
                response.sendRedirect("addmin.jsp?m1="+k);    
                        }

                else    {
                response.sendRedirect("addmin.jsp?m2=Failed");
                        }

                }
                catch(Exception e1)
                {
                out.println(e1.getMessage());
                }
    }
    else
    {
        
        response.sendRedirect("addmin.jsp");
    }

%>
    
</body>
</html>