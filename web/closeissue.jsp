<%@page import="java.sql.*"%>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@page import="connection.dbconnect"%>
<%@ page session="true" %>

<html>
<head>
    <title> Resolving Issue....................</title>
</head>

<body>
    
</body>
</html>
<%
String stat = request.getParameter("issue_id");
ResultSet rs=null;
String verified="verified";
String open="open";
String close="close";
String s1,s2,s3,s4,s5,s6,s7;
                                    try{    
                                       Connection con=dbconnect.getConnection();
                                       Statement st = con.createStatement();
                                       Statement stmt = con.createStatement();
                                       rs=st.executeQuery("select * from issue where issue_id = '"+stat+"'");

                                         if ( rs.next() )
					   		{
								s1=rs.getString(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(4);
								s5=rs.getString(5);
								s6=rs.getString(6);
                                                                s7=rs.getString(7);
                                                                
                                                              
                                                                
                                                        
                                         if(s7.equals(verified))
                                         {
                                             stmt.executeUpdate("UPDATE issue SET  status='"+close+"' WHERE  issue_id = '"+stat+"';");
                                             response.sendRedirect("viewcmissues.jsp?m3=" +s7);
                                         }
                                         else
                                         {
                                             response.sendRedirect("viewcmissues.jsp?m4=" +s7);
                                         }
                                         
                                          }
                                        }
                                           catch(Exception e1)
                                            {
                                            out.println(e1.getMessage());
                                            }

%>
