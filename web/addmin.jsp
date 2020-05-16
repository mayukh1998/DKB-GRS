<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="java.sql.*"%>
<%@ page session="true" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<link href="http://fonts.googleapis.com/css?family=Chivo:400,900" rel="stylesheet" />
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="forms.css" rel="stylesheet" type="text/css" media="all" />

</head>
   <%
        if (request.getParameter("m1") != null) {%>
    <script>alert('Minister Added Successfully');</script>
    <% }
        else if(request.getParameter("m2") != null)
        {%><script>alert("Operation Failed");</script>
    <%
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
				<li ><a href="cmhome.jsp">Home</a></li>
				<li><a href="assignissue.jsp">Assign Issues</a></li>
				<li ><a href="addclerk.jsp">Add Clerk</a></li>
                                <li class="current_page_item"><a href="addmin.jsp">Add Minister</a></li>
				<li><a href="logout.jsp">LogOut</a></li>
			</ul>
		</div>
        </div>
		<!-- end #menu --> 
                
                <div id="page" class="container">
                    <div id="content"> 
                    <div class="title">
                        <h2>Minister Resgistration</h2>     
                    <form action="addmin">
                      <div class="formcontainer">
                      <hr/>
                      <div class="container22">
                          <label for="name"><strong>Name:</strong></label>
                          <br>
                          <input type="text" id="name" placeholder="Enter Name" name="name" required>
                              <br>       
                                 <br>       
                        <label for="user_name"><strong>Username:</strong></label>
                    <br>
                        <input type="text" placeholder="Enter Username" name="user_name" id="user_name"  required>
                        <p><small><i>Note: This will be your username to login</i></small></p>
                          <br>    
                            <label for="user_password"><strong>Password:</strong></label>
                            <br>
                        <input type="password" placeholder="Enter Password" name="user_password" id="user_password" required>
                            <br>
                           <br>  
                                <br>
                                  <label for="dept"><strong>Department:</strong></label>
                           <br>
                          <select id="dept" name="dept">
                               <option selected disabled>Select Department</option>
                                <option value="health">Health</option>
                                <option value="education">Education</option>
                                <option value="sports">Sports</option>
                                <option value="welfare">Welfare</option>
                                <option value="forest">Forest</option>
                                <option value="food">Food</option>
                                <option value="agriculture">Agriculture</option>
                           </select>   
                              <br>
                              </div>
                      <button type="submit">Register</button>
                      <button type="reset">Reset</button>
                      </div>
                    </form>                   
         
                                
                </div>    
            </div>
	</div>
                
</div>
                    
    
<div id="copyright" class="ccontainer" >
	<p>&copy; Team Apex IEM</p>
</div>
</body>
</html>