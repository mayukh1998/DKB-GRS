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
import connection.Issuemanager;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.text.SimpleDateFormat;
import javax.servlet.annotation.WebServlet;



public class assignissue extends HttpServlet {

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    int k = 0;
    String stat = request.getParameter("stt");
    String prior = request.getParameter("prior");
    String id = request.getParameter("iid");
    String dept = request.getParameter("dep");
    String pr = "low";
    String sta = "assigned";
    String open= "open";
    String verified= "verified";
    String ret;
    if(stat.equals(open))
    {
        ret = Issuemanager.assignissue(prior,dept,sta,id);
        response.sendRedirect("viewcmissues.jsp?m1="+ret);    
    }
    else if(stat.equals(verified))
    {
        response.sendRedirect("viewcmissues.jsp?m2="+id);  
    }
    else{
        response.sendRedirect("viewcmissues.jsp?m2=failed");  
    }
    }
}