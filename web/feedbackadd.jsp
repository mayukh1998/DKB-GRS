<%@page import="connection.Issue"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="connection" class="connection.Usermanager" scope="request" />
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
    int h;
    
    if(feed != "" || ii != "" || rate != "" )
    {
        Issue issue = new Issue();
        
        issue.setissue_id(ii);
        issue.setfeedback_rate(rate);
        issue.setfeedback(feed);
        
        
        h = connection.givefeedback(issue);
        
                   if(h>=2){
                            response.sendRedirect("givefeedback.jsp?m1=success");    
                            }
                   else {

                            response.sendRedirect("givefeedback.jsp?m3=reopen");
                    
                        }
    }
    else
    {
        
        response.sendRedirect("givefeedback.jsp?m2=failed");
    }

%>
    
</body>
</html>