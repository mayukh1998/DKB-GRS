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

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
