package dao;

import bean.GrammarGuide;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Tuan Anh
 */
public class GrammarGuideDao {

    public static List<GrammarGuide> getGrammarGuide(Connection connection) {
        List<GrammarGuide> list = new ArrayList<GrammarGuide>();
        String query = "select * from grammarguideline ; ";
        ResultSet rs;
        Statement st;

        try {
            st = connection.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {

                int idgrammarguideline = rs.getInt("idgrammarguideline");
                String grammarname = rs.getString("grammarname");
                String grammarimage = rs.getString("grammarimage");
                String context = rs.getString("context");

                GrammarGuide grammarGuide = new GrammarGuide(idgrammarguideline, grammarname, grammarimage, context);
                list.add(grammarGuide);

            }
            st.close();
            connection.close();

        } catch (Exception ex) {
        }
        return list;
    }

    public static boolean insertGrammarGuideName(Connection connection, GrammarGuide grammarGuide) {
        boolean isSuceess = false;
        try {
            String query = "insert into grammarguideline(grammarname) values(?) ;";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, grammarGuide.getGrammarname());
            ps.execute();
            isSuceess = true;
            ps.close();
            connection.close();
        } catch (SQLException ex) {
            isSuceess = false;
        }
        return isSuceess;
    }

    public static String  uploadFile(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fileName = "";
        String pathToDestinate = "";
        PrintWriter out = response.getWriter();
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);

        if (!isMultipart) {
            request.setAttribute("error", "loi ");
           
        }
       // final String PATH = "D:\\"  ;
        ServletContext context = request.getServletContext();

        final String PATH = context.getRealPath("/ImageForProject/");

        final int MAX_MEMMORY = 1024 * 1024 * 3;   // 3 MB
        final int MAX_SIZE = 1024 * 1024 * 50;

        DiskFileItemFactory factory = new DiskFileItemFactory();

        // Set factory constraints
        factory.setSizeThreshold(MAX_MEMMORY);

        factory.setRepository(new File("java.io.tmpdir"));

        ServletFileUpload upload = new ServletFileUpload(factory);

        upload.setSizeMax(MAX_SIZE);

        try {
            List<FileItem> items = upload.parseRequest(request);
            Iterator<FileItem> iter = items.iterator();
            while (iter.hasNext()) {
                FileItem item1 = iter.next();

                if (!item1.isFormField()) {

                    fileName = item1.getName();

                    String pathFile = PATH + File.separator + fileName;

                    File uploadedFile = new File(pathFile);
                    
                    boolean checkExist = uploadedFile.exists();
                    try {                         
                            item1.write(uploadedFile);
                            //request.setAttribute("error", "thanh cong");
                            return "ImageForProject/" + fileName;

                        
                    } catch (Exception ex) {
                         request.setAttribute("error", ex.getMessage());
                         
                    }
                } else {
                    request.setAttribute("error", "Up load failed");
                    
                }
            }
        } catch (FileUploadException ex) {
            request.setAttribute("error", ex.getMessage());
             
        }

       return "ImageForProject/" + fileName;

    }

    public static int getIdMaxFromGrammaerGuide(Connection connection){
        int index = 0 ; 
        PreparedStatement ps  = null ;
        String query ="select max(idgrammarguideline) from grammarguideline ;" ;
        try {
            ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                index = rs.getInt(1) ;
            }
            
            ps.close();
            connection.close();
        } catch (SQLException ex) {
           
        }
        return index;
    }
    
    public static boolean insertGrammarGuideImage_Id(Connection connection, GrammarGuide grammarGuide) {
        boolean isSuceess = false;
        int id = grammarGuide.getIdgrammarguideline();
        try {
            String query = "UPDATE grammarguideline set grammarimage = ? where idgrammarguideline = ? ";
            PreparedStatement ps = dbconnector.DBConnector.createConnection().prepareStatement(query);
            ps.setString(1, grammarGuide.getGrammarimage());
            ps.setInt(2, id);
            ps.execute();
            isSuceess = true;
            ps.close();
            connection.close();
        } catch (SQLException ex) {
            isSuceess = false;
        }
        return isSuceess;
    }
    
    public static boolean deleteGrammarGuide(Connection connection, int id ){
      boolean isSuceess = false;
        try {
            String query = "delete from grammarguideline where idgrammarguideline = ? ;";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            isSuceess = ps.execute();
            ps.close();
            connection.close();
        } catch (SQLException ex) {
            isSuceess = false;
        }
        return isSuceess;
    }
    
    public static boolean updateGrammarGuideContent(Connection connection, GrammarGuide grammarGuide) {
        boolean isSuceess = false;
        try {
            String query = "update grammarguideline set context =  ? where  idgrammarguideline = ? ";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, grammarGuide.getContext());
            ps.setInt(2, grammarGuide.getIdgrammarguideline());
            ps.execute();
            isSuceess = true;
            ps.close();
            connection.close();
        } catch (SQLException ex) {
            isSuceess = false;
        }
        return isSuceess;
    }

    public static boolean checkValidateGrammarGuide(Connection connection, String grammarName){
        boolean isTrue = false ; 
        // kiem tra xem ten do co ton tai hay khong 
        
        String query = "select * from grammarguideline where grammarname =  ? " ;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, grammarName);
            ResultSet rs = ps.executeQuery();
            
            isTrue = rs.isBeforeFirst() ; 
            ps.close();
            connection.close();
        } catch (SQLException ex) {
            
        }  
        return isTrue;
    }
    
    public static int countGrammarGuide(Connection connection){
        int count =  0 ; 
        String query = "select count(idgrammarguideline) from grammarguideline ;" ;
        try {
            PreparedStatement ps  = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                count = rs.getInt(1);
            }
         ps.close();
         connection.close();
        } catch (SQLException ex) {
            count = 0  ; 
        }
             
        return count; 
    }
    
    public static List<GrammarGuide> getGrammarGuideByPage(Connection connection, int pageid, int max){
        List<GrammarGuide> list = new ArrayList<GrammarGuide>();
        try {      
            int start = (pageid-1) * max ;
            String query = "select * from grammarguideline  limit ?,?; ";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, start);
            ps.setInt(2, max);
            ResultSet rs= ps.executeQuery();
            
                  while(rs.next()){  
                    int idgrammarguideline = rs.getInt("idgrammarguideline");
                    String grammarname = rs.getString("grammarname");
                    String grammarimage = rs.getString("grammarimage");
                    String context = rs.getString("context");
                    
                    GrammarGuide grammarGuide = new GrammarGuide(idgrammarguideline, grammarname, grammarimage, context);
                    list.add(grammarGuide);
                  }     
        ps.close();
        connection.close();
        } catch (SQLException ex) {
            
        }
        return list ;
    }
    
    public static String getContentGrammarById(Connection connection, int idGrammarGuide){
        String content = "";
        String query = "select context from grammarguideline where idgrammarguideline = ? " ;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, idGrammarGuide);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                content = rs.getString(1);
            }
        ps.close();
        connection.close();
        } catch (SQLException ex) {
            
        }
        
        return content;
    }
    
    public static void main(String[] args) {
        Connection connection
                = dbconnector.DBConnector.createConnection();
        

        System.out.println(GrammarGuideDao.getContentGrammarById(connection, 61));
    }
}
