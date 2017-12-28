/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.Member;
import bean.MemberOpen;
import bean.SlideBanner;
import dbconnector.DBConnector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import jdk.internal.org.objectweb.asm.util.CheckClassAdapter;

/**
 *
 * @author Tuan Anh
 */
public class MemBerDao {
    
    
     public static boolean checkUserValidate(Connection connection, Member member){
             boolean isTrue = false ;
             String username = member.getMembername();
             int count  = 0 ;
             String query = "select count(*) from member1 where membername = ?" ;
         try {
             PreparedStatement ps = connection.prepareStatement(query);
             ps.setString(1,username);
             ResultSet rs = ps.executeQuery();
             count  = rs.getInt(0);
             if (count > 0 ) isTrue = true ;
             else isTrue = false;
             ps.close();
             connection.close();
         } catch (SQLException ex) {
             isTrue = false;
         }
        
             return isTrue;
     }
     
     public static boolean insertMember(HttpServletRequest request,Connection connection,Member member){
       boolean  isTrue = false ;
       String name = member.getName();
       String username = member.getMembername();
       String password = member.getMemberpass();
       int categoryMemberID = 1 ; 
       if(checkUserValidate(connection, member) == false) return false;
       String query ="insert into member1(membername,memberpass,catgorymemberid,fullname) values(?,?,?,?); " ;
       
         try {
             PreparedStatement ps = connection.prepareStatement(query);
             ps.setString(1,username);
             ps.setString(2, password);
             ps.setInt(3, categoryMemberID);
             ps.setString(4, name);
             
             int t  = ps.executeUpdate();
             if (t != 0) isTrue=true;
             else isTrue = false;
         } catch (SQLException ex) {
             request.setAttribute("msgRegister", ex.getMessage());
             isTrue = false;
         }
        
         
        return isTrue;
    }

    public static MemberOpen getMemmberFromDb(Connection connection ,int idmember){
        MemberOpen memberOpen = new MemberOpen();
        String query = "select * from  informember where idinformember = ? " ; 
         try {
             PreparedStatement ps = connection.prepareStatement(query);
             ps.setInt(1, idmember);
             ResultSet rs  = ps.executeQuery();
             while(rs.next()){
                 int id = rs.getInt("idinformember");
                 String bietdanh = rs.getString("bietdanh");
                 String gmail = rs.getString("gmail");
                 String noicongtac = rs.getString("noicongtac");
                 String nghenghiep  = rs.getString("nghenghiep");
                 String muctieu = rs.getString("muctieu");
                 
                 memberOpen.setIdmember(idmember);
                 memberOpen.setBietdanh(bietdanh);
                 memberOpen.setGmail(gmail);
                 memberOpen.setNoicongtac(noicongtac);
                 memberOpen.setNghenghiep(nghenghiep);
                 memberOpen.setMuctieu(muctieu);
             }
         } catch (SQLException ex) {
             
         }
        return memberOpen;
    }
    
    public static Member getMemberById(Connection connection, int id){
        Member member = new Member();
        String query = "select * from member1 where idmember = ? " ;
         try {
             PreparedStatement ps = connection.prepareStatement(query) ;
             ps.setInt(1, id);
             ResultSet rs = ps.executeQuery();
             while(rs.next()){
                 member.setIdmember(id);
                 member.setMembername(rs.getString("membername"));
                 member.setMemberpass(rs.getString("memberpass"));
                 member.setName(rs.getString("fullname"));
                 member.setMemberImage(rs.getString("memberimage"));
             }
         } catch (SQLException ex) {
             
         }
        
        return member;
    }
     public static void main(String[] args) {
        Connection connection = DBConnector.createConnection();
        
         System.out.println(getMemberById(connection, 1).getMemberImage());
    }
}
