<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@page import="java.sql.*"%>
<%@page import="connection.dbconnect"%>
<%@ page session="true" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<link href="http://fonts.googleapis.com/css?family=Chivo:400,900" rel="stylesheet" />
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
 <%
        if (request.getParameter("m1") != null) {%>
    <script> alert('Issue Created Successfully ' );</script>
    <% }
        else 
        {
           
        }
    %>
    
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
				<li><a href="givefeedback.jsp">Feedback</a></li>
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
                        </div>
                        
                        
                        <div id="right-pane">
                            <div class="title">
                                
                                <%  
                                    String user = session.getAttribute("username").toString();
                                    ResultSet rs=null;
                                    String s1,s2,s3,s4,s5,s6,s7;
                                    try{    
                                       Connection con=dbconnect.getConnection();
                                       Statement st = con.createStatement();
                                       rs=st.executeQuery("select * from user where user_name = '"+user+"'");

                                         if ( rs.next() )
					   		{
								s1=rs.getString(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(4);
								s5=rs.getString(5);
								s6=rs.getString(6);
                                                                s7=rs.getString(7);
                                                                
                                         	%>
    
                                                
        <style>
            #left-pane{
                  height: 100%;
                  float: left;
                  width: 31%;
                  text-align: left;
                  padding: 200px 92px 0px 0px ;
              }
            #right-pane{
                  width: 50%;
                  height: 100%;
                  float: right;
                  width: 56%;
                  
                  
                 }  
            #text1{
                     text-align: left;
                     margin-bottom: 1em;
                     padding: 50px 0px 0px 0px;
                 }
     form {
                                border: 5px solid #f1f1f1;
                                }
                                input[type=text], input[type=password],input[type=email],input[type=number] {
                                height: 30px;
                                width: 60%;
                                padding: 16px 8px 16px 8px;
                                margin: 8px 0;
                                display: inline-block;
                                border: 1px solid #ccc;
                                box-sizing: border-box;
                                }
                                label {
                                     text-align: left;
                                      display: inline-block;
                                      margin-bottom: 8px;
                                      padding: 0px 0px 0px 0px;
                                    }
                                
                                select {
                                height: auto;
                                width: 60%;
                                padding: 16px 8px 16px 8px;
                                margin: 8px 0;
                                display: inline-block;
                                border: 1px solid #ccc;
                                box-sizing: border-box; 
                                    }    

                                button {
                                background-color:  #3333cc;
                                color: white;
                                padding: 14px 0;
                                margin: 10px 0;
                                border: none;
                                cursor: grabbing;
                                width: 60%;
                                letter-spacing: 0.20em;
                                text-decoration: none;
                                text-transform: uppercase;
                                font-weight: 400;
                                font-size: 0.85em;
                                }
                                h1 {
                                text-align:center;
                                fone-size:18;
                                }
                                button:hover {
                                opacity: 0.8;
                                }
                                .formcontainer {
                                text-align: center;
                                width: 500px;
                                margin: 24px 50px 12px;
                                }
                                .container22 {
                                padding: 16px 0;
                                text-align:center;
                                height: auto;
                                }

                                span.psw {
                                float: right;
                                padding-top: 0;
                                padding-left: 15px;
                                }
                                textarea {
                                resize: none;
                                width: 300px;
                                height: 65px;
                                overflow: hidden;
                                
                                }
                                /* Change styles for span on extra small screens */
                                @media screen and (max-width: 300px) {
                                span.psw {
                                display: block;
                                float: none;
                                }
                               }
                        
                               .disable{
                                pointer-events:none;
                                background: #e6e6e6;
                                   }
                    </style>
                    
                                <h2> <%=s4%> </h2>
                                <h2> Create Issue</h2>
                            </div>
                            <div id="text1">
                                
                        
                                
                             
                 <form action="issueadd.jsp" >
                      <div class="formcontainer">
                      <hr/>
                      <div class="container22">
                                            
                        <label for="username"><strong>UserId: </strong></label>
                    <br>
                        <input type="text" id="user_id" name="user_id" value="<%=s5%>" class="disable">
                        <br>    
                            <br>
                          <label for="name"><strong>Name:</strong></label>
                          <br>
                          <input type="text" id="name" value=" <%=s4%>" name="name" class="disable">
                              <br>       
                      
                            
                           <br>  
                         <label for="email"><strong>Email:</strong></label>
                         <br>
                          <input type="email" id="email"  value="<%=s1%>" name="user_email" class="disable">    
                            <br>
                                <br>
                             <label for="phn"><strong>Phone Number:</strong></label>
                             <br>
                          <input type="text" id="phn" value= "<%=s6%>" name="phn" class="disable">  
                           <br>
                               <br>
                           <label for="location"><strong>Location:</strong></label>
                           <br>
                          <input type="text" id="location" value=" <%=s7%>" name="location" class="disable">    
                              <br>
                                   <br>
                                  <label for="dept"><strong>Department:</strong></label>
                           <br>
                          <select id="dept" name="dept">
                               <option value="other" selected>Other</option>
                                <option value="health">Health</option>
                                <option value="education">Education</option>
                                <option value="sports">Sports</option>
                                <option value="welfare">Welfare</option>
                                <option value="forest">Forest</option>
                                <option value="food">Food</option>
                                <option value="agriculture">Agriculture</option>
                           </select>   
                               <br>
                                   <br>
                           <label for="subject"><strong>Issue Subject:</strong></label>
                           <br>
                          <input type="text" id="subject" placeholder="Enter Subject(within 50 chars)" name="subject" required>    
                              <br>
                              <br>
                           <label for="decrip"><strong>Issue Description:</strong></label>
                           <br>
                           <textarea id="descrip" rows="4" cols="50" name="descrip" placeholder="Enter Description (within 300 chars)" required></textarea>
                              <br>
                              </div>
                      <button type="submit">Create Issue</button>
                      <button type="reset">Reset</button>
                      </div>
                    </form>                   
                                
                                
                            </div>
                                        
                            
                            
                        </div>
                                        <%
}
						con.close();
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
</body>
</html>