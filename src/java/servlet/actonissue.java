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


@WebServlet(name = "actonissue", urlPatterns = {"/actonissue"})
public class actonissue extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    String ret;
    String id = request.getParameter("issue_id");
    String wd = request.getParameter("wdi");
    if(wd != "")
    {
        ret = Issuemanager.act_on_issue(wd,id);            
        response.sendRedirect("minhome.jsp?ret="+ret);
                }
   else{
                 response.sendRedirect("minhome.jsp?m3=blank"); 
                 }
    }

}
