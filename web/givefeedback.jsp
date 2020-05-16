<%@page session="true" %>
<%@page import="java.util.*"%>
<%@page import="connection.Issue"%> 
<jsp:useBean id="connection" class="connection.Usermanager" scope="request" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
<script src="jquery-3.4.1.js" type="text/javascript"></script>  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<link href="http://fonts.googleapis.com/css?family=Chivo:400,900" rel="stylesheet" />
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="feedcss.css" rel="stylesheet" type="text/css" media="all" />
<script src="getval.js"></script>


 <%
        if (request.getParameter("m1") != null) {
 %>
 
    <script> alert('Feedback Given Successfully');
    </script>
    <% }
        else if(request.getParameter("m2") != null) 
        {%>
           <script> alert('Fill up the details');
            </script>
        <%}
        else if(request.getParameter("m3") != null) 
        {%>
           <script> alert('Feedback Given Successfully... Not Satisfied. So Issue Reopened');
            </script>
        <%}
        String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12;
        String wd = request.getParameter("wd");
        String iid = request.getParameter("id");
        if(wd == null){
            wd=" ";
         }
        s1 = session.getAttribute("email").toString();
        s2 = session.getAttribute("username").toString();
        s4 = session.getAttribute("name").toString();
        s5 = session.getAttribute("userid").toString();
        s6 = session.getAttribute("phn").toString();
        s7 = session.getAttribute("location").toString();
        List <Issue> list = connection.user_view_issue(s5);
                              
        %>        
</head>   

<body onload="select()">
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
				<li><a href="userhome.jsp">Home</a></li>
				<li><a href="myissues.jsp">My Issues</a></li>
				<li class="current_page_item" ><a href="givefeedback.jsp">Feedback</a></li>
				<li><a href="logout.jsp">LogOut</a></li>
			</ul>
		</div>
        </div>
		<!-- end #menu --> 
                
                <div id="page" class="container">
                    <div id="content">
                        <div id="left-pane">
                            
                        
                            
                            
                            
                        <ul class="style2">
					<li><a href="createIssue.jsp">Register Complaint or Create Issue</a></li>
					<li><a href="givefeedback.jsp">Give Feedback to your existing resolved Issue</a></li>
					<li><a href="myissues.jsp">View your own issue</a></li>
					<li><a href="logout.jsp">Logout</a></li>
                        </ul>
                        </div>
                        
                        
                        <div id="right-pane">
                            <div class="title"><h2> <%=s4%> </h2>
                                <h2>Give Feedback</h2>
                            </div>
                                
                              
                 <div class="formcontainer">            
                 <form action="feedbackadd.jsp"  >
                      
                      <hr/>
                      <div class="container22">
                          <label for="name"><strong>Name:</strong></label>
                          <br>
                          <input type="text" id="name" value=" <%=s4%>" name="name" class="disable">
                              
                           <br>
                                <br>
                             
                                <label for="issue_id"><strong>Select Issue:</strong></label>
                           <br>
                          <select name="issue_id" id="issue_id" onchange="getval()" required>
                                        <option class="placeholder" selected disabled value="">Select</option>
                                        <%for (Issue i:list){
                                            if(i.getstatus().equals("resolved")){%>
                                            <option value="<%=i.getissue_id()%>"> <%=i.getissue_id() %> <%=i.getsubject() %></option>
                                            <%}} %>
                                    </select> 
                                    
                               <br>
                                   <p><small><i>Cannot find your issue.<a href="acquireissue.jsp" rel="nofollow"> Click here</a></i></small></p>
                          <br>    
                              <br>
                            <label for="minfeed"><strong>Work Done:</strong></label>
                           <br>
                           <textarea id="minfeed" rows="4" cols="50" name="minfeed" disabled="disabled" ><%=wd%></textarea>
                              <br>
                              
                              <br>
                                  <br>
                                   <label for="feedback"><strong>Rate your Experience:</strong></label>
                                   <br>
                                    <label class="radio-inline">
                                      <input type="radio" name="feedback" value="1">1
                                    </label>
                                    <label class="radio-inline">
                                      <input type="radio" name="feedback" value="2">2
                                    </label>
                                   <label class="radio-inline">
                                      <input type="radio" name="feedback" value="3">3
                                    </label>
                                    <label class="radio-inline">
                                        <label class="radio-inline">
                                      <input type="radio" name="feedback" value="4">4
                                    </label>
                                      <input type="radio" name="feedback" value="5" checked>5
                                    </label>
                                       <br>
                                           <p><small><i>*If Rating is less than 2, the issue will be reopened.</i></small></p>
                              <br>
                           <label for="feed"><strong>Additional Feedback:</strong></label>
                           <br>
                           <textarea id="feed" rows="4" cols="50" name="feed" placeholder="Additional Comments (within 300 chars)" required></textarea>
                              <br>
                              </div>
                      <button type="submit">Give Feedback</button>
                      
                      <button type="reset">Reset</button>
                              <br>
                 </form>
                 </div>
                            </div>
                        </div>
                    </div>
	</div>
                
                                        
    
                                        
                                        
                                        
    
<div id="copyright" class="ccontainer" >
	<p>&copy; Team Apex IEM</p>
</div>
                                        
<script type="text/javascript">
function select(){
if(<%=iid%>!==null){
 document.getElementById("issue_id").value=<%=iid%>;
}
}
                                                    
</script>           
</body>
</html>