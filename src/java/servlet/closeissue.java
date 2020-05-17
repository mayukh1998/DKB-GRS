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


public class closeissue extends HttpServlet {


    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    String id = request.getParameter("issue_id");
    String status = Issuemanager.closeissue(id);
    
    if (status.equals("closed")) {
        response.sendRedirect("viewcmissues.jsp?m3=" + status);
        }else {
        response.sendRedirect("viewcmissues.jsp?m4=" + status);
        }
    }
}
