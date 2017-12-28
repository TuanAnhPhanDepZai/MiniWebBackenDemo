<%-- 
    Document   : ShowDetailTutorialGrammar
    Created on : Dec 24, 2017, 10:45:29 PM
    Author     : Tuan Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail Tutorial</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang chu</title>
        <!-- Bootstrap -->
        <link href="Template/Fontend/css/bootstrap.css" rel="stylesheet">
        <link href="Template/Fontend/css/bootstrap-responsive.css" rel="stylesheet">
        <link href="Template/Fontend/css/style.css" rel="stylesheet"> 

        <!--Font-->
        <link href="Template/Fontend/font/font.css" rel='stylesheet' type='text/css'>



        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- Fav and touch icons -->
        <link rel="shortcut icon" href="ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">




        <!-- SCRIPT 
        ============================================================-->  
        <script src="Template/Fontend/js/js-1.js"></script>
        <script src="Template/Fontend/js/bootstrap.min.js"></script>


    </head>
    <body>
        <jsp:include page="Head.jsp" />
        <div class="row">
            <div class="span12">
                <div class="page-header">
                    <h1>
                        Chi tiết bài hướng dẫn
                    </h1>
                </div>
            </div>
        </div>


        <div class="span9">
            <div class="blog-post">
                <div class="postmetadata">
                    <ul>
                        <li>
                            <i class="icon-user"></i> <a href="#">Author Name</a>
                        </li>

                        <li>
                            <i class="icon-calendar"></i>September 20th, 2013
                        </li>

                        <li>
                            <i class="icon-comment"></i> <a href="#">100 Comments</a>
                        </li>
                        <li>
                            <i class="icon-tags"></i> <a href="#">Themes</a>, <a href="#">Template</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="span9"> 
        <c:set var="result" value="${fn:replace(content,kituxuongdong,kituhtml)}" />
        <c:out value="${result}" escapeXml="false"/>
        </div>
        <div class="row">
            <span class="span6">
                <form>
                    <fieldset>
                        <h3>Thêm bình luận</h3>
                        <textarea  class="input-xxlarge"  rows="10"  placeholder="Your Message"></textarea>
                        <br>
                        <button type="submit" class="btn">Bình luận</button>
                    </fieldset>
                </form>
            </span>
        </div>
    </body>
</html>
