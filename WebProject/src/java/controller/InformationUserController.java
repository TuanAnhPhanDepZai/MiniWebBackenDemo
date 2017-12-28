/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import bean.Member;
import bean.MemberOpen;
import dao.LoginDao;
import dao.MemBerDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Tuan Anh
 */
public class InformationUserController extends HttpServlet {

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
            out.println("<title>Servlet InformationUserController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InformationUserController at " + request.getContextPath() + "</h1>");
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
        int idmember = Integer.valueOf(request.getParameter("idmember"));
        request.setAttribute("idmember", idmember);
        // thuc hien thao tac lay thong tin user tai day 
        Connection connection = dbconnector.DBConnector.createConnection();
        MemberOpen memberOpen = MemBerDao.getMemmberFromDb(connection, idmember);
        request.setAttribute("bietdanh", memberOpen.getBietdanh());
        request.setAttribute("gmail", memberOpen.getGmail());
        request.setAttribute("noicongtac", memberOpen.getNoicongtac());
        request.setAttribute("nghenghiep",memberOpen.getNghenghiep());
        request.setAttribute("muctieu", memberOpen.getMuctieu());
        
        Connection connection1 = dbconnector.DBConnector.createConnection();
        Member member = MemBerDao.getMemberById(connection, idmember);
        request.setAttribute("username", member.getMembername());
        request.setAttribute("fullname", member.getName());
        request.setAttribute("password", member.getMemberpass());
        request.setAttribute("image", member.getMemberImage());
        RequestDispatcher rd = request.getRequestDispatcher("View/InforUser.jsp");
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
