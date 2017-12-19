<%-- 
    Document   : Home
    Created on : Dec 13, 2017, 2:15:56 AM
    Author     : Tuan Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
    <head>
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
  


  <div class="container">

  <!--Carousel
  ==================================================-->

  <div id="myCarousel" class="carousel slide">
    <div class="carousel-inner">

      <div class="active item">
        <div class="container">
          <div class="row">
            
              <div class="span6">

                <div class="carousel-caption">
                      <h1>Hướng dẫn học Toeic</h1>
                      <p class="lead">Chúng tôi cung cấp cho bạn những phương pháp học tốt nhất</p>
                      <a class="btn btn-large btn-primary" href="#">Đăng kí ngay bây giờ</a>
                </div>

              </div>

              <div class="span6"> <img src="Template/Fontend/img/slide/slide1_1.jpg" height="350" width="350"></div>

          </div>
        </div>
      </div>

        <c:forEach items="${listSlide}" var="list" >
      <div class="item">
       
        <div class="container">
          <div class="row">
            
              <div class="span6">

                <div class="carousel-caption">
                      <h1>${list.slidename}</h1>
                      <p class="lead">${list.slidecontent}</p>
                      <a class="btn btn-large btn-primary" href="#">Đăng kí ngay bây giờ</a>
                </div>

              </div>

                      <div class="span6"> <img src="Template/Fontend/img/slide/${list.slideimage}" height="350px" width="350px"></div>

          </div>
        </div>

      </div>
       </c:forEach>
     



    </div>
       <!-- Carousel nav -->
      <a class="carousel-control left " href="#myCarousel" data-slide="prev"><i class="icon-chevron-left"></i></a>
      <a class="carousel-control right" href="#myCarousel" data-slide="next"><i class="icon-chevron-right"></i></a>
        <!-- /.Carousel nav -->

  </div>
    <!-- /Carousel -->



<!-- Feature 
  ==============================================-->


  <div class="row feature-box">
      <div class="span12 cnt-title">
       <h1>At vero eos et accusamus et iusto odio dignissimos</h1> 
        <span>Contrary to popular belief, Lorem Ipsum is not simply random text.</span>        
      </div>

      <div class="span4">
        <img src="Template/Fontend/img/icon3.png">
        <h2>Feature A</h2>
        <p>
            Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. 
        </p>

        <a href="#">Read More &rarr;</a>

      </div>

      <div class="span4">
        <img src="Template/Fontend/img/icon2.png">
        <h2>Feature B</h2>
        <p>
            Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna 
            aliqua. 
        </p>   
          <a href="#">Read More &rarr;</a>    
      </div>

      <div class="span4">
        <img src="Template/Fontend/img/icon1.png">
        <h2>Feature C</h2>
        <p>
            Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. 
        </p>
          <a href="#">Read More &rarr;</a>
      </div>
  </div>


<!-- /.Feature -->

  <div class="hr-divider"></div>

<!-- Row View -->


    <div class="row">
        <div class="span6"><img src="Template/Fontend/img/responsive.png"></div>

        <div class="span6">
          <img class="hidden-phone" src="Template/Fontend/img/icon4.png" alt="">
          <h1>Fully Responsive</h1>
            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
             <a href="#">Read More &rarr;</a>
        </div>
    </div>

    
</div>


<!-- /.Row View -->



<!--Footer
==========================-->

<jsp:include page="Footer.jsp" />
<!--/.Footer-->

    </body>
</html>
