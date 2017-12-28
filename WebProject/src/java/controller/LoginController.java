/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import bean.Member;
import dao.LoginDao;
import dbconnector.DBConnector;
import java.io.IOException;
import java.sql.Connection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Tuan Anh
 */
public class LoginController extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("View/Login.jsp");
        rd.forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String username = request.getParameter("username");
         String password = request.getParameter("password");
         
         Connection connection = DBConnector.createConnection();
        
         int catMem = LoginDao.authornicationMember(connection, username, password);
         if (catMem == 0 ) {
             request.setAttribute("msgLogin","Ten dang nhap hoac tai khoan khong dung");
              RequestDispatcher rd = request.getRequestDispatcher("View/Login.jsp");
             rd.forward(request, response);
         }
         else if (catMem == 1){ 
             
             // String nameMember = LoginDao.getNameMember(DBConnector.createConnection(), username, password);
             
             Member member = LoginDao.getMember(DBConnector.createConnection(), username, password);
             String nameMember = member.getName();
             String imageMember = member.getMemberImage();
             HttpSession session = request.getSession(true);
              session.setAttribute("sessionuser",nameMember);
              request.setAttribute("msgLogin","username");
              request.setAttribute("imageMember",imageMember );
              request.setAttribute("idmember", member.getIdmember());
              request.setAttribute("password", member.getMemberpass());
             RequestDispatcher rd = request.getRequestDispatcher("View/Home.jsp");
             rd.forward(request, response);
             
         }else if (catMem == 2 ){
             request.setAttribute("msgLogin","admin");
             String nameMember = LoginDao.getNameMember(DBConnector.createConnection(), username, password);
             HttpSession session = request.getSession(true);
             session.setAttribute("sessionadmin",nameMember);
             RequestDispatcher rd = request.getRequestDispatcher("View/Admin/HomeAdmin.jsp");
             rd.forward(request, response);
         }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
