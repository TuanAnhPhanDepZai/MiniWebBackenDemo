
package dao;

import static dao.MemBerDao.checkUserValidate;
import dbconnector.DBConnector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.spi.DirStateFactory;
import javax.swing.JOptionPane;

/**
 *
 * @author Tuan Anh
 */
public class LoginDao {
    
    public static boolean authenicationMember(Connection connection,String username,String password){
        boolean  isTrue = false ;
       
       String query ="select * from member1 ; " ;
       
         try {
             PreparedStatement ps = connection.prepareStatement(query);
             ResultSet rs = ps.executeQuery();
             while(rs.next()){
                 String usernameMember = rs.getString("membername");
                 String passwordMember = rs .getString("memberpass");
                 
                 if(username.equals(usernameMember) && passwordMember.equals(password)){
                     isTrue = true ; 
                     break ;
                 }
             }
             
          ps.close();
          connection.close();
         } catch (SQLException ex) {
          //   request.setAttribute("msgRegister", ex.getMessage());
             isTrue = false;
         }
        
         
        return isTrue;
    }
    
    public static int authornicationMember(Connection connection, String username , String password) {
        int categoryMember = 0 ; 
        if (authenicationMember(connection, username, password)){
           String query ="select catgorymemberid from member1 where membername = ? and memberpass = ? "  ;
            try {
                Connection connection1 = DBConnector.createConnection();
                PreparedStatement pd = connection1.prepareStatement(query);
                pd.setString(1, username);
                pd.setString(2, password);
                ResultSet rs= pd.executeQuery();
                
                while(rs.next()){
                    categoryMember = rs.getInt("catgorymemberid");
                    
                }
                
            pd.close();
            connection1.close();
            
            } catch (SQLException ex) {
               categoryMember = 1 ; 
               
            }
        }
        return categoryMember;
    }
    
    public static String getNameMember(Connection connection,String username ,String password){
       String nameMember ="";
       if(authenicationMember(connection, username, password)){
       String query ="select fullname from member1 where membername = ? and memberpass = ? " ; 
        Connection connection1 = DBConnector.createConnection();
         try {
             PreparedStatement ps = connection1.prepareStatement(query);
             ps.setString(1,username);
             ps.setString(2, password);
             ResultSet rs = ps.executeQuery();
             while(rs.next()){
                nameMember = rs.getString(1);
             }
             
          ps.close();
          connection.close();
         } catch (SQLException ex) {
          //   request.setAttribute("msgRegister", ex.getMessage());
            
         }}
       return nameMember;
    }
    
    public static void main(String[] args) {
        Connection connection = DBConnector.createConnection();
        
        System.out.println(LoginDao.authornicationMember(connection,"admin","1234567" ));
    }
}
