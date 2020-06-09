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


public class minlogin extends HttpServlet {

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        HttpSession session=request.getSession();  
        session.setAttribute("username",username);
        String password = request.getParameter("password");
        String login="";
        login = LoginManager.MinisterLogin(username,password);
        if(login!="fail")
        {
            session.setAttribute("minid",login);
            session.setAttribute("minname",username);
            response.sendRedirect("minhome.jsp?m1=success");
        }
        else{
            response.sendRedirect("minLogin.jsp?s=fail");
        }
    }

}
