/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.util.*; 
import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;
import connection.Issue;
import connection.Usermanager;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.text.SimpleDateFormat;
import javax.servlet.annotation.WebServlet;


public class createuserissue extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
        List<Integer> ids = new ArrayList<Integer>();
        List <Issue> list = Issue.get_issue();
        for (Issue i:list)
            {
                ids.add(Integer.parseInt(i.getissue_id()));
            }
                        k = Collections.max(ids,null);
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
    {   try{
        int[] arr = Usermanager.user_create_issue(issue);
                if(arr[0]>=0){
                    k=arr[1];
                response.sendRedirect("createIssue.jsp?m1="+k);    
                }

                else    {
                    
                response.sendRedirect("createIssue.jsp?m2=failed");
                    
                        }
    }
    catch(Exception ex){
       Logger.getLogger(Usermanager.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    else
    {
        
        response.sendRedirect("createissue.jsp");
    }
    }

}
