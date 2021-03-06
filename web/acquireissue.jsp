<%@ page session="true" %>
<html>
<head>
<%if (request.getParameter("m2") != null) {
%>
<script> alert('Issue Acquired Successfully!');</script>
<% }else if(request.getParameter("m3") != null) 
{%>
<script> alert('Failed! Give the ID correctly ');</script>
<%} else if(request.getParameter("m4") != null) 
{%>
<script> alert('Enter Issue ID');</script>
<%}%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DKB Grievance Redressal</title>
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="tempassign.css" rel="stylesheet" type="text/css" media="all" />
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
            <li><a href="givefeedback.jsp">Feedback</a></li>
            <li><a href="logout.jsp">LogOut</a></li>
        </ul>
    </div>
</div>

<div id="page" class="container">
    <h2>Acquire Issue</h2>
    <br />
    <div id="content">
        <form action="acquireissue">
            <div class="formcontainer">
                <hr />
                <div class="container22">
                    <label for="issue_id"><strong>Enter Issue ID</strong></label>
                    <br />
                    <input type="text" placeholder="Enter Issue ID" name="issue_id" required />
                    <br />
                    <br />
                    <button type="submit">Acquire Issue</button>
                </div>
            </div>
        </form>
    </div>
</div>
</div>
<div id="copyright" class="ccontainer" >
<p>&copy; Team Apex IEM</p>
</div>
</body>
</html>