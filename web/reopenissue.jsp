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
                                    String username = session.getAttribute("username").toString();
                                    ResultSet rs=null;
                                    ResultSet rs1=null;
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
                                        rs1=st.executeQuery("select * from issue where user_id = '"+user_id+"'");
                   
                                         	%>
  <style>
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
                               .radio-inline{
                                   cursor: pointer;
                               }
                        
                               .disable{
                                pointer-events:none;
                                background: #e6e6e6;
                                   }
                    </style>
                    
                    
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
                        
                     <form action="">
                      <div class="formcontainer"> 
                        
                        <br>
                                <label for="issue_id"><strong>Enter Issue ID:</strong></label>
                           <br>
                          
                             <br>
                          <select name="issue_id" id="issue_id" required>
                                        <option class="placeholder" selected disabled value="">Select</option>
                                        <%while(rs1.next()){ %>
                                            <option value="<%=rs1.getString(1)%>"> <%=rs1.getString(1) %> <%=rs1.getString(2) %></option>
                                        <%} %>
                                    </select>    
                               <br>
                                   <p><small><i>Note: You can reopen only resolved issues.</i></small></p>
                          <br>
                        
                        <button type="submit">Reopen Issue</button>   
                        </div>
                    </form>         
                        
                        
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
                    
    
<div id="copyright" class="ccontainer" >
	<p>&copy; Team Apex IEM</p>
</div>
</body>
</html>