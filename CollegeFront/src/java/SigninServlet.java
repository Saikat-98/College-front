
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SigninServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String username=request.getParameter("SName");
        String password=request.getParameter("SPassword");
        try
        {   
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/college?useSSL=false","root","saibbskat1208");
            String sql_query="select * from Registration where Username=? and Password=?";
            PreparedStatement pstmt=conn.prepareStatement(sql_query);
            pstmt.setString(1,username);
            pstmt.setString(2,password);
            ResultSet rs=pstmt.executeQuery();
            String sql_query1="select * from Personaldetails where Username=?";
            PreparedStatement pstmt1=conn.prepareStatement(sql_query1);
            pstmt1.setString(1,username);
            ResultSet rs1=pstmt1.executeQuery();
            if(rs.next()==false)
            {
                request.getSession().invalidate();
                response.sendRedirect("index.html");
            

                request.getSession().invalidate();
                HttpSession session=request.getSession();
                session.setAttribute("Username",username);
                RequestDispatcher rd=request.getRequestDispatcher("personaldetails.jsp");
                rd.forward(request, response);
                
        }
            else
            {
                HttpSession oldSession = request.getSession(false);
                if (oldSession != null)
                    oldSession.invalidate();
                HttpSession session=request.getSession();
                session.setAttribute("Username",username);
                request.setAttribute("Email",rs.getString("Email"));
                session.setMaxInactiveInterval(30*60);
                RequestDispatcher rd=request.getRequestDispatcher("dashboardIndex.jsp");
                rd.forward(request, response);
            }
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
