<%-- 
    Document   : Head
    Created on : Dec 15, 2017, 2:12:46 AM
    Author     : Tuan Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>

        <%
            if (session.getAttribute("sessionuser") == null) {
        %>

        <div id="header-row">
            <div class="container">
                <div class="row">
                    <!--LOGO-->
                    <div class="span3"><a class="brand" href="HomeForward"><img src="Template/Fontend/img/luyenthi.png" width="80" height="80"/></a></div>
                    <!-- /LOGO -->

                    <!-- MAIN NAVIGATION -->  
                    <div class="span9">
                        <div class="navbar  pull-right">
                            <div class="navbar-inner">
                                <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a>
                                <div class="nav-collapse collapse navbar-responsive-collapse">
                                    <ul class="nav">
                                        <li class="active"><a href="HomeForward">Home</a></li>



                                        <li><a href="LoginController">Đăng nhập</a></li>
                                        <li><a href="RegisterForward">Đăng kí</a></li>

                                    </ul>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- MAIN NAVIGATION -->  
                </div>
            </div>
        </div>
        <%
        } else {
        %>
        <div id="header-row">
            <div class="container">
                <div class="row">
                    <!--LOGO-->
                    <div class="span3"><a class="brand" href="HomeForward"><img src="Template/Fontend/img/luyenthi.png" width="80" height="80"/></a></div>
                    <!-- /LOGO -->

                    <!-- MAIN NAVIGATION -->  
                    <div class="span9">
                        <div class="navbar  pull-right">
                            <div class="navbar-inner">
                                <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a>
                                <div class="nav-collapse collapse navbar-responsive-collapse">
                                    <ul class="nav">
                                        <li> <img src="${imageMember}" width="40" height="40" />
                                        
                                        <li><a href="InformationUserController?idmember=${idmember}">Thông tin tài khoản</a></li> 

                                    </ul>
                                    <ul class="nav">
                                        <li><a href="LogoutController">Thoat</a></li>
                                    </ul>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- MAIN NAVIGATION -->  
                </div>
            </div>
        </div>
        <%
            }
        %>
        <!-- /HEADER ROW -->
    </body>
</html>
