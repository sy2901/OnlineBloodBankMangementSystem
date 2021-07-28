/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MyPack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sy290
 */
public class Hregister extends HttpServlet {

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
            out.println("<title>Servlet Hregister</title>");            
            out.println("</head>");
            out.println("<body>");
            
            String hid=request.getParameter("hospitalID");
            String hname = request.getParameter("hname");
            String trdate = request.getParameter("trdate");
            String bld = request.getParameter("bld");
            String address = request.getParameter("location");
            String contact=request.getParameter("mobile");
            String pass = request.getParameter("pass");
            String email = request.getParameter("email");
           
            MyDb db = new MyDb();
            Connection con =db.getCon();
            String query="insert into hregister(hid,hname,bld,trdate,contact,email,address,pass)values(?,?,?,?,?,?,?,?)";
            PreparedStatement psmt=con.prepareStatement(query);
           
            psmt.setString(1,hid);
            psmt.setString(2,hname);
            psmt.setString(3,bld);
            psmt.setString(4,trdate);
            psmt.setString(5,contact);
            psmt.setString(6,email);
            psmt.setString(7,address);
            psmt.setString(8,pass);
            psmt.executeUpdate();
            psmt.close();
            con.close();
           
            out.println("register sucess");
            String redirectedPage = "/parentPage";
            response.sendRedirect("registrationsuccess.jsp");
            
            out.println("</body>");
            out.println("</html>");
        }
        catch (SQLException ex) {
            Logger.getLogger(Hregister.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex);
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
