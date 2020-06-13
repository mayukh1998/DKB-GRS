
package servlet;

import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;
import connection.RegistrationManager;
import javax.servlet.annotation.WebServlet;



public class addmin extends HttpServlet {
    
      
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int k = 0;
    String un = request.getParameter("user_name");
    String n = request.getParameter("name");
    String p = request.getParameter("user_password");
    String dept = request.getParameter("dept");
    
    if(un != "" || p != "" ||  dept != "" || n != "")
    {
      int h =	RegistrationManager.registerMinister(un,n,p,dept);
         if(h>0){
                response.sendRedirect("addmin.jsp?m1="+h);    
                        }
         else    {
                response.sendRedirect("addmin.jsp?m2=Failed");
                        }
    }
    else
    {
        response.sendRedirect("addmin.jsp");
    }
    }

}