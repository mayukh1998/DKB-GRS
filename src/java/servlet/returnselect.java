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
import connection.Usermanager;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.text.SimpleDateFormat;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author mayuk
 */
public class returnselect extends HttpServlet {

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int k = 0;
        HttpSession session=request.getSession();  
    String userid = session.getAttribute("userid").toString();
    String iid = request.getParameter("id");
    String wd="";
    if(iid != "")
    {
        try{
        List <Issue> list = Usermanager.user_view_issue(userid);
        for (Issue i:list)
           {
              if(i.getissue_id().equals(iid)){
                  wd = i.getminfeed();
                  response.sendRedirect("givefeedback.jsp?wd="+wd+"&id="+iid);
              }
          }
        }
        catch(Exception ex){
       Logger.getLogger(Usermanager.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    else{
        
        response.sendRedirect("givefeedback.jsp");
    }
    }
}
