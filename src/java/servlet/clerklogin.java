
package servlet;

import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;
import connection.LoginManager;


public class clerklogin extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        HttpSession session=request.getSession();  
        session.setAttribute("username",username);
        String password = request.getParameter("password");
        String login="";
        login = LoginManager.ClerkLogin(username,password);
        if(login!="fail")
        {
            session.setAttribute("clerkname",username);
            session.setAttribute("clerkid",login);
            response.sendRedirect("clerkhome.jsp?m1=success");
        }
        else{
            response.sendRedirect("clerkLogin.jsp?s=fail");
        }
    }
    

}
