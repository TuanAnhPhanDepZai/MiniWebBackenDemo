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
           if ( session.getAttribute("sessionuser") == null){
            %>
         
        <div id="header-row">
    <div class="container">
      <div class="row">
              <!--LOGO-->
              <div class="span3"><a class="brand" href="HomeForward"><img src="Template/Fontend/img/logo_2.png"/></a></div>
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
              <div class="span3"><a class="brand" href="HomeForward"><img src="Template/Fontend/img/logo_2.png"/></a></div>
              <!-- /LOGO -->

            <!-- MAIN NAVIGATION -->  
              <div class="span9">
                <div class="navbar  pull-right">
                  <div class="navbar-inner">
                    <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a>
                    <div class="nav-collapse collapse navbar-responsive-collapse">
                    <ul class="nav">
                        <li class="active"><a href="HomeForward">Home</a></li>
                        
                       
                        <li><a href="HomeForward">Welcome: ${sessionuser}</a></li>
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
