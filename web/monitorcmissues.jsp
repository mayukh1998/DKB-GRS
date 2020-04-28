<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@page import="java.sql.*"%>
    <%@page import="connection.dbconnect"%>
        <%@ page session="true" %>
            <html xmlns="http://www.w3.org/1999/xhtml">
<script src="jquery-3.4.1.js" type="text/javascript"></script>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <title>DKB Grievance Redressal</title>
                <meta name="keywords" content="" />
                <meta name="description" content="" />
                <link href="http://fonts.googleapis.com/css?family=Chivo:400,900" rel="stylesheet" />
                <link href="default1.css" rel="stylesheet" type="text/css" media="all" />
                <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

            </head>

            <body>
                <div id="wrapper">
                    <div id="header-wrapper">
                        <div id="header" class="container">
                            <div id="logo">
                                <h1><a href="https://www.didikebolo.com/en/">Didi Ke Bolo</a></h1>
                                <p>Grievance Redressal</p>
                            </div>
                        </div>
                    </div>
                    <div id="menu-wrapper">
                        <div id="menu" class="container">
                            <ul>
                                <li><a href="cmhome.jsp">Home</a></li>
                                <li><a href="viewcmissues.jsp">Assign Issues</a></li>
                                <li><a href="addclerk.jsp">Add Clerk</a></li>
                                <li><a href="addmin.jsp">Add Minister</a></li>
                                <li><a href="logout.jsp">LogOut</a></li>
                            </ul>
                        </div>
                    </div>

                    <div id="page" class="container">

                        <%  
                            String issue_id=request.getParameter("issue_id");
                                    ResultSet rs=null;
                                    String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15;

                                    try{    
                                       Connection con = dbconnect.getConnection();
                                       Statement st = con.createStatement();
                                       rs=st.executeQuery("select * from issue where issue_id ='"+issue_id+"'");     
                                       if ( rs.next() )
					   		{
								s1=rs.getString(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(4);
								s5=rs.getString(5);
								s6=rs.getString(6);
                                                                s7=rs.getString(7);
                                                                s8=rs.getString(8);
                                                                s9=rs.getString(9);
                                                                s10=rs.getString(10);
                                                                s11=rs.getString(11);
                                                                s12=rs.getString(12);
                                                                s13=rs.getString(13);
                                                                s14=rs.getString(14);  
                                                                s15=rs.getString(15);
                        %>
                        <style>
                            table {
                                        border-collapse: collapse;
                                        width: 100%;
                                    }
                                    
                            tr:nth-child(even) {
                                        background-color: #f2f2f2;
                                    }
                                    
                                    tr:hover {
                                        background-color: #ebe4d1;
                                    }
                                    
                            td{
                            text-align: left;
                            padding: 20px;
                            margin-bottom: 1.5em;
                            width: auto;
                            }
                            tbody{
                                text-align: center;
                            }
                        </style>
                        
                           
                        <div class="title">
                                <h2>Details </h2>
                                <h2>Issue ID: <%=s1%> </h2>
                                <br>
                                    <span class="byline"><p><b>Issue Subject: <%=s2%></b></p></span>
                            </div>
                              <div id="special" style="text-align:center;">
                                  <table id='viewissue' text>
                                      <tbody>
                                      <tr>
                                          <td>
                                             ISSUE DESCRIPTION: 
                                          </td>
                                          <td>
                                              <%=s3%>
                                          </td>
                                      </tr>
                                          <tr>
                                          <td>
                                             DEPARTMENT: 
                                          </td>
                                          <td>
                                              <%=s10%>
                                          </td>
                                          
                                      </tr>
                                          <tr>
                                          <td>
                                             NAME:
                                          </td>
                                          <td>
                                              <%=s6%>
                                          </td>
                                          
                                      </tr>
                                          <tr>
                                          <td>
                                             LOCATION: 
                                          </td>
                                          <td>
                                              <%=s4%>
                                          </td>
                                           
                                      </tr>
                                          <tr>
                                          <td>
                                             STATUS: 
                                          </td>
                                          <td>
                                              <%=s7%>
                                          </td>
                                      </tr>
                                          <tr>
                                          <td>
                                             PRIORITY: 
                                          </td>
                                          <td>
                                              <%=s11%>
                                          </td>
                                      </tr>
                                          <tr>
                                          <td>
                                             MINISTER'S FEEDBACK:
                                          </td>
                                          <td>
                                              <%=s15%>
                                          </td>
                                      </tr>
                                          <tr>
                                          <td>
                                             FEEDBACK RATING: 
                                          </td>
                                          <td>
                                              <%=s9%>
                                          </td>
                                      </tr>
                                           <tr>
                                         <td>
                                             FEEDBACK COMMENTS:
                                          </td>
                                          <td>
                                              <%=s8%>
                                          </td>
                                      </tr>
                                          <tr>
                                          <td>
                                             DATE:
                                          </td>
                                          <td>
                                              <%=s14%>
                                          </td>
                                      </tr>
                                  </tbody>
                                  </table>
                            </div>
                        

                    </div>
                     
                                    <%
                                        }
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
                                    
                                        %>     
                        
                </div>

                <div id="copyright" class="ccontainer">
                    <p>&copy; Team Apex IEM</p>
                </div>
            </body>

            </html>
                                        
                                        
