/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import bean.Member;
import dao.MemBerDao;
import dbconnector.DBConnector;
import java.io.IOException;
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
public class RegisterController extends HttpServlet {

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
       
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Connection connection = DBConnector.createConnection();
        
        String nameMember = request.getParameter("name");
        String usernameMember = request.getParameter("username");
        String passwordMember = request.getParameter("password");
        int catgorymemberId = 1 ;
        
        Member member = new Member(usernameMember,passwordMember,catgorymemberId,nameMember);
        
        boolean isTrue = MemBerDao.insertMember(request, connection, member);
        
        if (isTrue == true ){
            request.setAttribute("msgRegister", "Dang ki thanh cong");
        }else{
            request.setAttribute("msgRegister", "Dang ki that bai");
        }
        
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("View/Register.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
