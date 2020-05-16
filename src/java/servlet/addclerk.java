/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;


import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;
import connection.RegistrationManager;
import javax.servlet.annotation.WebServlet;


/**
 *
 * @author mayuk
 */
public class addclerk extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    int k = 0;
    String un = request.getParameter("user_name");
    String n = request.getParameter("name");
    String p = request.getParameter("user_password");
    
    if(un != "" || p != "" || n != "")
    {
        int h =	RegistrationManager.registerClerk(un,n,p);            
                if(h>0){
                response.sendRedirect("addclerk.jsp?m1=success");    
                        }

                else    {
                response.sendRedirect("addclerk.jsp?m2=Failed");
                        }
     }
    else
    {
        
        response.sendRedirect("addclerk.jsp");
    }
    }
}
