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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Tuan Anh
 */
public class DisplayTutorialGrammarController extends HttpServlet {

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
            out.println("<title>Servlet DisplayTutorialGrammarController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DisplayTutorialGrammarController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        // lay thong tin cua grammar guide 
        String idpage  = request.getParameter("idpage");
        int idPage = Integer.valueOf(idpage);
        
      
        Connection connection  = DBConnector.createConnection();
          int countGrammar=  GrammarGuideDao.countGrammarGuide(connection) ;
          
        Connection connection1 = DBConnector.createConnection();
        
        List<GrammarGuide> list = GrammarGuideDao.getGrammarGuideByPage(connection1, idPage, 3) ;
        
        int maxPage = countGrammar/3 +1 ;
      
        
        
        request.setAttribute("listGrammarGuide", list);
        request.setAttribute("currentPage",idPage);
        request.setAttribute("maxPage",maxPage);
        
        RequestDispatcher rd  = request.getRequestDispatcher("View/DisplayTutorialGrammarList.jsp") ;
        rd.forward(request, response);
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           
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
