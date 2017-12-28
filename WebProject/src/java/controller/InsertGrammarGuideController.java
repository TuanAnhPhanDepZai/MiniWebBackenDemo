/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import bean.GrammarGuide;
import dao.GrammarGuideDao;
import dbconnector.DBConnector;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Tuan Anh
 */
public class InsertGrammarGuideController extends HttpServlet {

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
            out.println("<title>Servlet InsertGrammarGuideController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InsertGrammarGuideController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        
        String name  = (String) request.getParameter("name");
        
         Connection connection  =dbconnector.DBConnector.createConnection();
         
         GrammarGuide grammarGuide = new GrammarGuide(name);
         boolean isSucess = GrammarGuideDao.insertGrammarGuideName(connection, grammarGuide);
         RequestDispatcher rd = request.getRequestDispatcher("View/Admin/InsertImageGrammar.jsp");
            rd.forward(request, response);
        
        
          
    
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
        if (request.getCharacterEncoding()== null){
                request.setCharacterEncoding("UTF-8");
            }
         String name  = (String) request.getParameter("name");
        
         Connection connection  =dbconnector.DBConnector.createConnection();
         
         GrammarGuide grammarGuide = new GrammarGuide(name);
         boolean isSucess = GrammarGuideDao.insertGrammarGuideName(connection, grammarGuide);
         
         forWardToListGrammarGuidePage(request, response);
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

    public void forWardToListGrammarGuidePage(HttpServletRequest request, HttpServletResponse response){
        try {
            
            Connection connection = DBConnector.createConnection();
            
            List<GrammarGuide> list = GrammarGuideDao.getGrammarGuide(connection);
            
            request.setAttribute("listGramarGuide", list);
            request.setAttribute("tuananh", "deptrai");
            
            RequestDispatcher rd = request.getRequestDispatcher("View/Admin/InsertImageGrammar.jsp");
            rd.forward(request, response);
        } catch (ServletException ex) {
            Logger.getLogger(InsertGrammarGuideController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(InsertGrammarGuideController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
