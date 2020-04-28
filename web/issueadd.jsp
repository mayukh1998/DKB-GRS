<%@page import="java.sql.*"%>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@page import="connection.dbconnect"%>
<%@ page session="true" %>

<html>
<head>
    <title> Registering....................</title>
</head>

<body>
<%
    int k = 0;
    String un = request.getParameter("user_id");
    String n = request.getParameter("name");
    String e = request.getParameter("user_email");
    String ph = request.getParameter("phn");
    String l = request.getParameter("location");
    String s = request.getParameter("subject");
    String d = request.getParameter("dept");
    String des = request.getParameter("descrip");
    String fd = "";
    String pr = "low";
    String sta = "open";
    long millis=System.currentTimeMillis();  
    java.sql.Date date=new java.sql.Date(millis);   
    String date1= date.toString();

    if(un != "" || s != "" || e != "" || ph  != "" || l != "" || n != "" || des != "" || d != ""  )
    {
    
                    try{

                        Connection con=dbconnect.getConnection();
                        Statement st = con.createStatement();
                        ResultSet rs = null;
                        rs = st.executeQuery("select * from issue ORDER BY issue_id DESC"); 
                        if(rs.next()){
                            k = rs.getInt(1);
                            }
                        k = k+1;

                        PreparedStatement ps = con.prepareStatement("insert into issue values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

                        ps.setInt(1,k); 
                        ps.setString(2,s);
                        ps.setString(3,des);
                        ps.setString(4,l);
                        ps.setString(5,un);
                        ps.setString(6,n);
                        ps.setString(7,sta);
                        ps.setString(8,fd);
                        ps.setString(9,"");
                        ps.setString(10,d);
                        ps.setString(11,pr);
                        ps.setString(12,ph);
                        ps.setString(13,e);
                        ps.setString(14,date1);
                        ps.setString(15,"");
                       
                        int h = ps.executeUpdate();

                if(h>=0){
                 
                
                out.write("alert('Complaint Registered Successfully. Issue ID is +" +k + ". Kindly note down')");
   
                out.println("Complaint Registered Successfully. Issue ID is +" +k + ". Kindly note down ");
                response.sendRedirect("createIssue.jsp?m1="+k);    
                }

                else    {
                    
                response.sendRedirect("createIssue.jsp?m2=failed");
                    
                        }

                }
                catch(Exception e1)
                {
                out.println(e1.getMessage());
                }
    }
    else
    {
        
        response.sendRedirect("createissue.jsp");
    }

%>
    
</body>
</html>