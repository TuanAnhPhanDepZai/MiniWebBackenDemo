/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbconnector;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Tuan Anh
 */
public class DBConnector {
    
    private static final String classname = "com.mysql.jdbc.Driver";
    private static final String url = "jdbc:mysql://localhost:3306/toeic";
    private static String user = "root";
    private static String pass = "phantuananh123";
    private static Connection connection;
    
     public static Connection createConnection() {
        try {
            Class.forName(classname);

            try {
                connection = DriverManager.getConnection(url, user, pass);
                
            } catch (SQLException ex) {
                
            }
        } catch (ClassNotFoundException ex) {
           
        }
        return connection;
    }

}
