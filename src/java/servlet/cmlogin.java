/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;
import connection.LoginManager;

/**
 *
 * @author mayuk
 */
public class cmlogin extends HttpServlet {

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        HttpSession session=request.getSession();  
        session.setAttribute("username",username);
        String password = request.getParameter("password");
        boolean h = LoginManager.CMLogin(username,password);
        if(h)
        {
            session.setAttribute("cmname",username);
            response.sendRedirect("cmhome.jsp?m1=success");
        }
        else{
            response.sendRedirect("cmLogin.jsp?s=fail");
        }
    }

}
