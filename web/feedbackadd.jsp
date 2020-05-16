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
    String issue_id = request.getParameter("issue_id");
    String feedback_rate = request.getParameter("feedback");
    String feedback = request.getParameter("feed");
    
    int rt = Integer.parseInt(feedback_rate);
    int h;
    
    if(feedback != "" || issue_id != "" || feedback_rate != "" )
    {
        Issue issue = new Issue();
        
        issue.setissue_id(issue_id);
        issue.setfeedback_rate(feedback_rate);
        issue.setfeedback(feedback);
        
        
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