import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PersonalDetailsServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        HttpSession session = request.getSession(false);
        String username=(String) session.getAttribute("Username");
        String fathername=request.getParameter("Fname");
        String mothername=request.getParameter("Mname");
        String foccupation=request.getParameter("Foccupation");
        String moccupation=request.getParameter("Moccupation");
        String fathermobile=request.getParameter("Fmobilenumber");
        String mothermobile=request.getParameter("Mmobilenumber");
        String income=request.getParameter("income");
        String grade1=request.getParameter("grade1");
        double grade11=Double.parseDouble(grade1);
        String grade2=request.getParameter("grade2");
        double grade22=Double.parseDouble(grade2);
           try
           {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/college?useSSL=false","root","saibbskat1208");
                String sql_query="insert into Personaldetails values(?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement pstmt=conn.prepareStatement(sql_query);
                pstmt.setString(1,username);
                pstmt.setString(2,fathername);
                pstmt.setString(3,mothername);
                pstmt.setString(4,foccupation);
                pstmt.setString(5,moccupation);
                pstmt.setString(6,fathermobile);
                pstmt.setString(7,mothermobile);
                pstmt.setString(8,income);
                pstmt.setDouble(9,grade11);
                pstmt.setDouble(10,grade22);
                pstmt.executeUpdate();
                out.println("<html><body>");
                out.println("<script type=\"text/javascript\">");
                out.println("window.alert(\"You have successfully entered your details! Now please login with your useraname and password to procced to your dashboard\")");
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
