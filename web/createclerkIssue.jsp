<%@ page session="true" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="clerkcreateissue.css" rel="stylesheet" type="text/css" media="all" />
</head>
 <% if (request.getParameter("m1") != null) {
    String m1 = request.getParameter("m1");%>
<script>var m1 = <%=m1%> ;
alert('Issue Created Successfully. ISSUE ID:- '+m1 );</script>
<%}else if(request.getParameter("m2") != null) 
{%>
<script>alert('Failed');</script>
<%}%>
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
            <li class="current_page_item"><a href="createclerkIssue.jsp">Create Issue</a></li>
            <li><a href="logout.jsp">LogOut</a></li>
        </ul>
    </div>
</div>

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
                <h2>Create Issue</h2>
            </div>
            <div class="formcontainer">
                <form action="createclerkissue">
                        <hr />
                        <div class="container22">
                            <label for="name"><strong>Name of Complainer:</strong></label>
                            <br />
                            <input type="text" id="name" name="name" required />
                            <br />
                            <br />
                            <label for="user_email"><strong>Email:</strong></label>
                            <br />
                            <input type="email" id="user_email" name="user_email" required />
                            <br />
                            <br />
                            <label for="phn"><strong>Phone Number:</strong></label>
                            <br />
                            <input type="number" id="phn" max="99999999999" min="1000000000" placeholder="Enter Phone Number" name="phn" required />
                            <br />
                            <br />
                            <label for="location"><strong>Location:</strong></label>
                            <br />
                            <input type="text" id="location" name="location" required />
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
<script type="text/javascript"> 
phn.oninput = function () {
if (this.value.length > 10)
this.value = this.value.slice(0,10); }
</script>
</body>
</html>