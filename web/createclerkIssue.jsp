<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page session="true" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<link href="http://fonts.googleapis.com/css?family=Chivo:400,900" rel="stylesheet" />
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="clerkcreateissue.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
 <%     
        if (request.getParameter("m1") != null) {
        String m1 = request.getParameter("m1");%>
    <script>
        var m1 = <%=m1%> ;
        alert('Issue Created Successfully. ISSUE ID:- '+m1 );</script>
    <% }
        else if(request.getParameter("m2") != null) 
        {%>
            <script>
           alert('Failed');
           </script>
        <%}
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
				<li><a href="clerkhome.jsp">Home</a></li>
				<li><a href="viewclerkissues.jsp">All Issues</a></li>
				<li  class="current_page_item"><a href="createclerkIssue.jsp">Create Issue</a></li>
				<li><a href="logout.jsp">LogOut</a></li>
			</ul>
		</div>
        </div>
		<!-- end #menu --> 
                
                <div id="page" class="container">
                    <div id="content">
                        <div id="left-pane">
                         
                        <ul class="style2">
					    <li><a href="createclerkIssue.jsp">Register Complaint or Issue</a></li>
					<li><a href="viewclerkissues.jsp">View all issues</a></li>
					<li><a href="logout.jsp">Logout</a></li>
                        </ul>
                        </div>
                        <div id="right-pane">
                            <div class="title">
                                <h2> Create Issue</h2>
                            </div>
                            <div id="text1">
                    <form action="createclerkissue" >
                               <div class="formcontainer">
                               <hr/>
                               <div class="container22">
                                   <label for="name"><strong>Name of Complainer:</strong></label>
                                   <br>
                                   <input type="text" id="name" name="name" required>
                                       <br>       
                                    <br>  
                                  <label for="user_email"><strong>Email:</strong></label>
                                  <br>
                                   <input type="email" id="user_email"  name="user_email" required>    
                                     <br>
                                         <br>
                                      <label for="phn"><strong>Phone Number:</strong></label>
                                      <br>
                                   <input type="number" id="phn"  name="phn" required>  
                                    <br>
                                        <br>
                                    <label for="location"><strong>Location:</strong></label>
                                    <br>
                                   <input type="text" id="location"  name="location" required>    
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
                     </div>
                </div>
	</div>            
    
<div id="copyright" class="ccontainer" >
	<p>&copy; Team Apex IEM</p>
</div>
</body>
</html>