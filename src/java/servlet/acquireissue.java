/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;
import connection.Usermanager;
import javax.servlet.annotation.WebServlet;



public class acquireissue extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    try (PrintWriter out = response.getWriter()) {
    int k = 0;
    HttpSession session=request.getSession();  
    String id = request.getParameter("issue_id");
    String ui = (String)session.getAttribute("userid");  
    
    if(id != "" )
    {
        int h = Usermanager.acquireissue(id,ui);
        if(h==1){
            response.sendRedirect("acquireissue.jsp?m2=success");    
             }
         else{response.sendRedirect("acquireissue.jsp?m3=failed");
             }}
    else
    {  
    response.sendRedirect("acquireissue.jsp?m4=blank");
    }    
        }
    }

    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
    
    
}
