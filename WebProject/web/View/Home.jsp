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
                    <h1>Sau khóa học này, bạn sẽ có được những trải nghiệm thú vị</h1> 
                    <span>Let's go</span>        
                </div>

                <div class="span4">
                    <img src="Template/Fontend/img/hoc.png" width="250" height="250">
                    <h2>Cùng học ngữ pháp và từ vựng nhé</h2>
                    <p>
                        Hãy cùng  bắt đầu với những bài học ngữ pháp- từ vựng đơn giản nhất nhé.
                    </p>

                    <!--        <a href="#">Read More &rarr;</a>-->
                    <a href="" data-toggle="modal" data-target="#myModal">Chi tiết &rarr;</a>

                </div>

                <div class="span4">
                    <img src="Template/Fontend/img/baitap.jpg" width="250" height="250">
                    <h2>Bài tập phần nghe và đọc </h2>
                    <p>
                        Sau khi học xong những lí thuyết cơ bản, hãy cùng thử sức với 1 số bài tập đơn giản này nhé.
                    </p>   
                    <a href="#" >Chi tiết &rarr;</a>    
                </div>

                <div class="span4">
                    <img src="Template/Fontend/img/thi.jpg" width="250" height="250">
                    <h2>1 Số bài thi thử sức</h2>
                    <p>
                        Còn chần chờ gì nữa, làm bài thi thử nào 
                    </p>
                    <a href="#">Chi tiết &rarr;</a>
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
                    <a href="#">Chi tiết &rarr;</a>
                </div>
            </div>


        </div>


        <!-- /.Row View -->



        <!--Footer
        ==========================-->

        <jsp:include page="Footer.jsp" />
        <!--/.Footer-->

        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Chọn phần hướng dẫn bạn muốn học </h4>
                    </div>
                    <div class="modal-body">
                        <div class="span6">
                            <div class="media">
                                <a href="DisplayTutorialListeningController" class="pull-left"><img src="Template/Fontend/img/nghe.png" class="media-object" alt=''alt=''width="80" height="80" /></a>
                                <div class="media-body">
                                    </br>
                                    <h4 class="media-heading">
                                        Bài hướng dẫn phần nghe
                                    </h4> 
                                </div>
                            </div>
                        </div>	


                        <div class="span6">
                            <div class="media">
                                <a href="DisplayTutorialGrammarController?idpage=1" class="pull-left"><img src="Template/Fontend/img/doc.png" class="media-object" alt=''alt=''width="80" height="80" /></a>
                                <div class="media-body">
                                    </br>
                                    <h4 class="media-heading">
                                        Bài hướng dẫn phần ngu phap
                                    </h4> 
                                </div>
                            </div>
                        </div>	


                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Thoát</button>
                    </div>
                </div>

            </div>
        </div>
    </body>
</html>
