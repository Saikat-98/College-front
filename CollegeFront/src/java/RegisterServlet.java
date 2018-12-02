import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RegisterServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException,ClassNotFoundException, SQLException {
        PrintWriter out=response.getWriter();
        String username=request.getParameter("Name");
        String email=request.getParameter("Email");
        String mobile=request.getParameter("Mobile");
        String city=request.getParameter("City");
        String password=request.getParameter("RPassword");
           try
           {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/college?useSSL=false","root","saibbskat1208");
                String sql_query="insert into Registration values(?,?,?,?,?)";
                PreparedStatement pstmt=conn.prepareStatement(sql_query);
                pstmt.setString(1,username);
                pstmt.setString(2,email);
                pstmt.setString(3,mobile);
                pstmt.setString(4,city);
                pstmt.setString(5,password);
                pstmt.executeUpdate();
                out.println("<html><body>");
                out.println("<script type=\"text/javascript\">");
                out.println("window.alert(\"You have successfully registered! Now please enter your personal details\")");
                out.println("</script>");
                out.println("</body></html>");
                HttpSession session=request.getSession();
                session.setAttribute("Username",username);
                RequestDispatcher rd=request.getRequestDispatcher("personaldetails.jsp");
                rd.forward(request, response);
           }
           catch(SQLIntegrityConstraintViolationException e)
           {
               out.println("<html><body>");
               out.println("<script type=\"text/javascript\">");
               out.println("window.alert(\"You have been already registered! Please Sign In directly to proceed to your dashboaed!\")");
               out.println("window.location.href=\"index.html#exampleModal\"");
               out.println("</script>");
               out.println("</body></html>");
               //response.sendRedirect("index.html");
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
