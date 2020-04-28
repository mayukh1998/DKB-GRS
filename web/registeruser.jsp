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
    String e = request.getParameter("user_email");
    String ph = request.getParameter("phn");
    String l = request.getParameter("location");
    
    if(un != "" || p != "" || e != "" || ph  != "" || l != "" || n != "")
    {
    
                    try{

                        Connection con=dbconnect.getConnection();
                        Statement st = con.createStatement();
                        ResultSet rs = null;
                        rs = st.executeQuery("select * from user ORDER BY user_id DESC"); 
                        if(rs.next()){
                            k = rs.getInt(5);
                            }
                        k = k+1;

                        PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?,?,?,?)");

                        ps.setString(1,e); 
                        ps.setString(2,un);
                        ps.setString(3,p);
                        ps.setString(4,n);
                        ps.setInt(5,k);
                        ps.setString(6,ph);
                        ps.setString(7,l);

                        int h = ps.executeUpdate();

                if(h>=0){
                session.setAttribute("getAlert", "Yes");
                response.sendRedirect("login.jsp?m1=Success");
                out.println("User Registered Successfully. Now Login. ");
                        }

                else    {
                response.sendRedirect("userregister.jsp?m2=Failed");
                        }

                }
                catch(Exception e1)
                {
                out.println(e1.getMessage());
                }
    }
    else
    {
        
        response.sendRedirect("userregister.jsp");
    }

%>
    
</body>
</html>