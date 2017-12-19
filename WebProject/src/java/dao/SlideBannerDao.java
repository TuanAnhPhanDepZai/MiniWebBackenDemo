/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.SlideBanner;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Tuan Anh
 */
public class SlideBannerDao {
    
    private static ResultSet rs ;
    private static Statement st ;
    
     public static List<SlideBanner> getListSlideBanner(Connection connection){
        List<SlideBanner> list = new ArrayList<SlideBanner>();
        String query = "select * from slidebanner ; " ;
        ResultSet rs ;
        Statement st ;
        
        try{
            st = connection.createStatement();
            rs = st.executeQuery(query);
            while(rs.next()){
               
                String slidename = rs.getString("slidename");
                String slideContent = rs.getString("slidecontent");
                String slideImage = rs.getString("slideimage");
                SlideBanner slideBanner = new SlideBanner( slidename, slideContent, slideImage);
                list.add(slideBanner);
            }
            
            connection.close();
            st.close();
        }catch(Exception ex){
        }
                return list ;
    }
}
