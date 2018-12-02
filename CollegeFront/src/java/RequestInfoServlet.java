import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RequestInfoServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        PrintWriter out=response.getWriter();
        String firstname=request.getParameter("FirstName");
        String lastname=request.getParameter("LastName");
        String mobile=request.getParameter("ReqMobile");
        String email=request.getParameter("ReqEmail");
        String message=request.getParameter("ReqMessage");
        try
           {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/college?useSSL=false","root","saibbskat1208");
                String sql_query="insert into Request_Info values(?,?,?,?,?)";
                PreparedStatement pstmt=conn.prepareStatement(sql_query);
                pstmt.setString(1,firstname);
                pstmt.setString(2,lastname);
                pstmt.setString(3,mobile);
                pstmt.setString(4,email);
                pstmt.setString(5,message);
                pstmt.executeUpdate();
                out.println("<html><body>");
                out.println("<script type=\"text/javascript\">");
                out.println("window.alert(\"Your request has been placed successfully.\")");
                out.println("window.location.href=\"index.html\"");
                out.println("</script>");
                out.println("</body></html>");
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
