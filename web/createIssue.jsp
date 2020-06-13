<%@ page session="true" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="user.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript">
var Msg ='<%=request.getParameter("m1")%>';
if (Msg !== "null") {
function alertName(){
alert("Issue Created Successfully ID " +Msg);
} }</script> 
</head>
<%String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12;   
s1 = session.getAttribute("email").toString();
s2 = session.getAttribute("username").toString();
s4 = session.getAttribute("name").toString();
s5 = session.getAttribute("userid").toString();
s6 = session.getAttribute("phn").toString();
s7 = session.getAttribute("location").toString(); %>             
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
                <h2><%=s4%></h2>
                <h2>Create Issue</h2>
            </div>
            <div id="text1">
                <form action="createuserissue">
                    <div class="formcontainer">
                        <hr />
                        <div class="container22">
                            <label for="username"><strong>UserId: </strong></label>
                            <br />
                            <input type="text" id="user_id" name="user_id" value="<%=s5%>" class="disable" />
                            <br />
                            <br />
                            <label for="name"><strong>Name:</strong></label>
                            <br />
                            <input type="text" id="name" value=" <%=s4%>" name="name" class="disable" />
                            <br />

                            <br />
                            <label for="email"><strong>Email:</strong></label>
                            <br />
                            <input type="email" id="email" value="<%=s1%>" name="user_email" class="disable" />
                            <br />
                            <br />
                            <label for="phn"><strong>Phone Number:</strong></label>
                            <br />
                            <input type="text" id="phn" value="<%=s6%>" name="phn" class="disable" />
                            <br />
                            <br />
                            <label for="location"><strong>Location:</strong></label>
                            <br />
                            <input type="text" id="location" value=" <%=s7%>" name="location" class="disable" />
                            <br />
                            <br />
                            <label for="dept"><strong>Department:</strong></label>
                            <br />
                            <select id="dept" name="dept">
                                <option value="" selected disabled>Select Department</option>
                                <option value="Education">Education</option>
                                <option value="Development">Development</option>
                                <option value="Municipal Affairs">Municipal Affairs</option>
                                <option value="Public Works and Sports">Public Works and Sports</option>
                                <option value="Tourism">Tourism</option>
                                <option value="Food and Supplies">Food and Supplies</option>
                                <option value="Transport and Water Resource">Transport and Water Resource</option>
                                <option value="Technical education and skill development">Technical education and skill development</option>
                                <option value="Fisheries">Fisheries</option>
                                <option value="Law and Judicial">Law and Judicial</option>
                                <option value="Public Health">Public Health</option>
                                <option value="Forest">Forest</option>
                                <option value="Agriculture">Agriculture</option>
                                <option value="IT and Electronics">IT and Electronics</option>
                                <option value="Others">Others</option>
                            </select>
                            <br />
                            <br />
                            <label for="subject"><strong>Issue Subject:</strong></label>
                            <br />
                            <input type="text" id="subject" placeholder="Enter Subject(within 50 chars)" name="subject" required />
                            <br />
                            <br />
                            <label for="decrip"><strong>Issue Description:</strong></label>
                            <br />
                            <textarea id="descrip" rows="4" cols="50" name="descrip" placeholder="Enter Description (within 300 chars)" required></textarea>
                            <br />
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
<div id="copyright" class="ccontainer">
<p>&copy; Team Apex IEM</p>
</div>
</body>
<script type="text/javascript"> window.onload = alertName; </script>                            
</html>