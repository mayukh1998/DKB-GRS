package servlet;

import connection.Issue;
import connection.Usermanager;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mayuk
 */
public class givefeedback extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
        String k = "";
        String issue_id = request.getParameter("issue_id");
        String feedback_rate = request.getParameter("feedback");
        String feedback = request.getParameter("feed");

        int rt = Integer.parseInt(feedback_rate);
        int h;

        if(feedback != "" || issue_id != "" || feedback_rate != "" )
        {
            Issue issue = new Issue();
            issue.setissue_id(issue_id);
            issue.setfeedback_rate(feedback_rate);
            issue.setfeedback(feedback);

            h = Usermanager.givefeedback(issue);
            if(h>2){
                                response.sendRedirect("givefeedback.jsp?m1=success");    
                                }
                       else {

                                response.sendRedirect("givefeedback.jsp?m3=reopen");

                            }
        }
        else
        {

            response.sendRedirect("givefeedback.jsp?m2=failed");
        }
        }
    catch(Exception ex)
    {
        System.out.println(ex.getMessage());
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
    }// </editor-fold>

}
