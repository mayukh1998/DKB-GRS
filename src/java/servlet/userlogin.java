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
public class userlogin extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        HttpSession session=request.getSession();  
        session.setAttribute("username",username);
        String password = request.getParameter("password");
        String login="";
        login  = LoginManager.UserLogin(username,password);
        if(login!="fail")
        {
            session.setAttribute("username",username);
            session.setAttribute("userid",login);
            response.sendRedirect("userhome.jsp?m1=success");
        }
        else{
            response.sendRedirect("retry.jsp");
        }
    }

}
