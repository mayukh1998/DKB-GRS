<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="connection.Dbconnect"%>
<%@page import="connection.Issue"%>
<%@ page import = "java.text.SimpleDateFormat" %>
<jsp:useBean id="connection" class="connection.Usermanager" scope="request" />
<%@ page session="true" %>

<html>
<head>
    <title> Creating....................</title>
</head>

<body>
<%
    int k = 0;
    String user = request.getParameter("user_id");
    String n = request.getParameter("name");
    String e = request.getParameter("user_email");
    String ph = request.getParameter("phn");
    String l = request.getParameter("location");
    String s = request.getParameter("subject");
    String d = request.getParameter("dept");
    String des = request.getParameter("descrip");
    String fd = " ";
    String pr = "low";
    String sta = "open";
    String rt = " ";
    String min = " ";
    long millis=System.currentTimeMillis();  
    java.sql.Date date=new java.sql.Date(millis);   
    String date1= date.toString();
                        Connection con=Dbconnect.getconnection();
                        Statement st = con.createStatement();
                        ResultSet rs = null;
                        rs = st.executeQuery("select * from issue ORDER BY issue_id DESC"); 
                        if(rs.next()){
                            k = rs.getInt(1);
                            }
                        k = k+1;
        String str = String.valueOf(k);
        
        Issue issue = new Issue();
        
        issue.setissue_id(str);
        issue.setsubject(s);
        issue.setdes(des);
        issue.setname(n);
        issue.setlocation(l);
        issue.setstatus(sta);
        issue.setuser(user);
        issue.setfeedback(fd);
        issue.setfeedback_rate(rt);
        issue.setdepartment(d);
        issue.setpriority(pr);
        issue.setphn(ph);
        issue.setemail(e);
        issue.setdate(date1);
        issue.setminfeed(min);
    
    if(user != "" || s != "" || e != "" || ph  != "" || l != "" || n != "" || des != "" || d != ""  )
    {
        int[] arr = connection.user_create_issue(issue);
                if(arr[0]>=0){
                    k=arr[1];
                response.sendRedirect("createIssue.jsp?m1="+k);    
                }

                else    {
                    
                response.sendRedirect("createIssue.jsp?m2=failed");
                    
                        }
    }
    else
    {
        
        response.sendRedirect("createissue.jsp");
    }

%>
    
</body>
</html>