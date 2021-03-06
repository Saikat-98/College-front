import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLIntegrityConstraintViolationException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String id=request.getParameter("ID");
        String name=request.getParameter("Name");
        String state=request.getParameter("State");
        String cutoff=request.getParameter("Cutoff");
        String datef=request.getParameter("Datef");
        String datet=request.getParameter("Datet");
        String url=request.getParameter("Url");
        response.setContentType("text/html;charset=UTF-8");
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/college?useSSL=false","root","saibbskat1208");
            String sql_query="update College_List set ID=?,State=?,Cutoff=?,Counselldatef=?,Counselldatet=?,Url=? where Name=?";
            PreparedStatement pstmt=conn.prepareStatement(sql_query);
            pstmt.setString(1,id);
            pstmt.setString(2,state);
            pstmt.setString(3,cutoff);
            pstmt.setString(4,datef);
            pstmt.setString(5,datet);
            pstmt.setString(6,url);
            pstmt.setString(7,name);
            pstmt.executeUpdate();
            request.setAttribute("ID",id);
            request.setAttribute("Name",name);
            request.setAttribute("State",state);
            request.setAttribute("Cutoff",cutoff);
            request.setAttribute("Datef",datef);
            request.setAttribute("Datet",datet);
            request.setAttribute("Url",url);
            RequestDispatcher rd=request.getRequestDispatcher("dashboardAdminIndex.jsp");
            rd.forward(request, response);
        }
        catch(Exception e)
        {
            out.println(e);
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
