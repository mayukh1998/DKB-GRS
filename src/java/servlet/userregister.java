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


@WebServlet(name = "userregister", urlPatterns = {"/userregister"})
public class userregister extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    int k = 0;
    String un = request.getParameter("user_name");
    String n = request.getParameter("name");
    String p = request.getParameter("user_password");
    String e = request.getParameter("user_email");
    String ph = request.getParameter("phn");
    String l = request.getParameter("location");

    if(un != "" || p != "" || e != "" || ph  != "" || l != "" || n != "")
    {

        int h =	RegistrationManager.registerUser(un,n,p,e,ph,l);
                if(h>0){
                HttpSession session=request.getSession();  
                session.setAttribute("getAlert", "Yes");
                response.sendRedirect("login.jsp?m1=Success");
                        }

                else    {
                response.sendRedirect("userregister.jsp?m2=Failed");
                        }

                }
    else
    {

        response.sendRedirect("userregister.jsp");
    }

    }
}
