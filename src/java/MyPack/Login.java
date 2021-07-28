/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MyPack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sy290
 */
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");            
            out.println("</head>");
            out.println("<body>");
            
            String name = request.getParameter("uname");
          
            String bhu = request.getParameter("bhu");
           
            String pass = request.getParameter("pass");
           
            MyDb db = new MyDb();
            Connection con =db.getCon();
            Statement stmt = con.createStatement();
            HttpSession session=request.getSession(); 
            String n;
           //out.println("hiii");
            if(bhu.equals("user")) 
            {
                ResultSet rs = stmt.executeQuery("select uid,email,pass from uregister where email = '"+name+"' and pass = '"+pass+"'"); 
                rs.next();
                n = rs.getString("uid");
                session.setAttribute("uid",n);
                session.setAttribute("uname",n);
                String redirectedPage = "/parentPage";
                response.sendRedirect("index.jsp");
            }
        
            if(bhu.equals("b"))
            {
                ResultSet rs1 = stmt.executeQuery("select bid,email,password from bregister where email = '"+name+"' and password = '"+pass+"'"); 
                rs1.next();
                 n = rs1.getString("bid");
                  
                session.setAttribute("uname",n);
                response.sendRedirect("index.jsp");
            }
       
            if(bhu.equals("h"))
            {
                ResultSet rs2 = stmt.executeQuery("select hid,email,pass from hregister where email = '"+name+"' and pass = '"+pass+"'"); 
                rs2.next();
                n = rs2.getString("hid");
                 
                session.setAttribute("uname",n);
                response.sendRedirect("index.jsp");
            }
          
            out.println("</body>");
            out.println("</html>");
        }
            catch(SQLException ex) 
            {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
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
