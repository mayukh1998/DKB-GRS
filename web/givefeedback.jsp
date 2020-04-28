<%@page import="java.sql.*"%>
<%@page import="connection.dbconnect"%>
<%@ page session="true" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
<script src="jquery-3.4.1.js" type="text/javascript"></script>  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<link href="http://fonts.googleapis.com/css?family=Chivo:400,900" rel="stylesheet" />
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="feedcss.css" rel="stylesheet" type="text/css" media="all" />

<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->

 <%
        if (request.getParameter("m1") != null) {
 %>
 
    <script> alert('Feedback Given Successfully ');
    </script>
    <% }
        else if(request.getParameter("m1") != null) 
        {%>
           <script> alert('Failed');
            </script>
        <%}
    %>
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
                            <div class="title">
                                
                                <%  
                                    String username = session.getAttribute("username").toString();
                                    ResultSet rs=null;
                                    ResultSet rs1=null;
                                    ResultSet rs2=null;
                                    String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12;
                                    try{    
                                       Connection con=dbconnect.getConnection();
                                       Statement st = con.createStatement();
                                       rs=st.executeQuery("select * from user where user_name = '"+username+"'");
                                       
                                         if ( rs.next() )
					   		{
								s1=rs.getString(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(4);
								s5=rs.getString(5);
								s6=rs.getString(6);
                                                                s7=rs.getString(7);
                                                                
                                        String user_id = s5;     
                                        rs1=st.executeQuery("select * from issue where user_id = '"+user_id+"' and status = 'resolved' ");
                                        
                                         	%>
                  
                                
                                <h2> <%=s4%> </h2>
                                <h2>Give Feedback</h2>
                            </div>
                            <div id="text1">
                                
                              
                 <div class="formcontainer">            
                 <form action="feedbackadd.jsp"  >
                      
                      <hr/>
                      <div class="container22">
                          <label for="name"><strong>Name:</strong></label>
                          <br></br>
                          <input type="text" id="name" value=" <%=s4%>" name="name" class="disable">
                              
                           
                                <br>
                             
                                <label for="issue_id"><strong>Select Issue:</strong></label>
                           <br>
                          <select name="issue_id" id="issue_id" required>
                                        <option class="placeholder" selected disabled value="">Select</option>
                                        <%while(rs1.next()){ %>
                                            <option value="<%=rs1.getString(1)%>"> <%=rs1.getString(1) %> <%=rs1.getString(2) %></option>
                                            <%} %>
                                    </select> 
                                    
                               <br>
                                   <p><small><i>Cannot find your issue.<a href="assignissue.jsp" rel="nofollow"> Click here</a></i></small></p>
                          <br>    
                            <label for="minfeed"><strong>Work Done:</strong></label>
                           <br>
                           <textarea id="minfeed" rows="4" cols="50" name="minfeed" disabled="disabled" ></textarea>
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
                              <br>
                           <label for="feed"><strong>Additional Feedback:</strong></label>
                           <br>
                           <textarea id="feed" rows="4" cols="50" name="feed" placeholder="Additional Comments (within 300 chars)" required></textarea>
                              <br>
                              </div>
                      <button type="submit">Give Feedback</button>
                      
                      <button type="reset">Reset</button>
                 </form>
        
                 </div>
                                       
                                                  
                                
                                
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
	</div>
                
</div>

                                        
                                        
                                        
                                        
    
<div id="copyright" class="ccontainer" >
	<p>&copy; Team Apex IEM</p>
</div>
                                        
                                        <script>
                                            $('select').on('change', function() {
                                                //getting value from select
                                                var select = $(this).val();
                                                //splitting both value 
                                                var v = select.split(",");
                                                //getting second value after ,
                                                $("#minfeed").text(v[0]);
                                              });
                                        </script>
                                        
</body>
</html>