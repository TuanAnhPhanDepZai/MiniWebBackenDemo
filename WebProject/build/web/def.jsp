<%-- 
    Document   : đef
    Created on : Dec 19, 2017, 6:34:11 PM
    Author     : Tuan Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <c:set var="chuoi" value="<h1> hello cac anh em</h1>" />
        
        <c:out value="${chuoi}"  escapeXml="false"/>
        
  
     </body>   
    
</html>
