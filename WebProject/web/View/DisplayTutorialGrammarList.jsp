
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Hướng dẫn học ngữ pháp </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">


        <link href="Template/Fontend/css/bootstrap.min.css" rel="stylesheet">
        <link href="Template/Fontend/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link href="Template/Fontend/css/style.css" rel="stylesheet">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="js/html5shiv.js"></script>
        <![endif]-->

        <!-- Fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="Template/Fontend/img/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="Template/Fontend/img/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="Template/Fontend/img/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="Template/Fontend/img/apple-touch-icon-57-precomposed.png">
        <link rel="shortcut icon" href="Template/Fontend/img/favicon.png">



        <!-- SCRIPT 
        ============================================================-->  
        <script src="Template/Fontend/js/js-1.js"></script>
        <script src="Template/Fontend/js/bootstrap.min.js"></script>
    </head>

    <body>


        <jsp:include page="Head.jsp" />

        <br/>
        <br/>

        <div class="container">

            <div class="row">
                <div class="span12">
                    <div class="page-header">
                        <h2>
                            <b>Danh sách bài hướng dẫn</b>
                        </h2>
                    </div>
                </div>
            </div>
            <c:forEach items="${listGrammarGuide}" var="list" >
                <div class="row">
                    <div class="span6">
                        <div class="media">
                            <a href="#" class="pull-left"><img src="${list.grammarimage}" class="media-object" alt='' width="80" height="80"/></a>
                            <div class="media-body">

                                <p> <c:out value="${list.grammarname}" />
                                </p>

                                <a href="ShowDetailTutorialGrammarController?idGrammar=${list.idgrammarguideline}" class="btn" type="button">Show</a>

                            </div>
                        </div>
                    </div>			
                </div>
            </c:forEach>              
        </div>


<!--        <div class="span6">
            <div class="pagination">
                <ul>
                    <li>
                        <a href="">Prev</a>
                    </li>
                    <li>
                        <a href="">Next</a>
                    </li>
                </ul>
            </div>	
        </div>-->

        <!-- thuc hien dieu kien if -->

        <c:if test="${currentPage==1}" >

            <div class="span6">
                <div class="pagination">
                    <ul>
                        <li>
                            <a href="DisplayTutorialGrammarController?idpage=${currentPage+1}">Next</a>
                        </li>
                    </ul>
                </div>	
            </div>
        </c:if>
        <c:if test="${currentPage==maxPage}" >

            <div class="span6">
                <div class="pagination">
                    <ul>
                        <li>
                            <a href="DisplayTutorialGrammarController?idpage=${currentPage-1}">Prev</a>
                        </li>
                    </ul>
                </div>	
            </div>
        </c:if>

        <c:if test="${currentPage>1 && maxPage > currentPage}" >

            <div class="span6">
                <div class="pagination">
                    <ul>
                        <li>
                            <a href="DisplayTutorialGrammarController?idpage=${currentPage-1}">Prev</a>
                        </li>
                        <li>
                            <a href="DisplayTutorialGrammarController?idpage=${currentPage+1}">Next</a>
                        </li>
                    </ul>
                </div>	
            </div>
        </c:if>




    </div>

    <!-- pagggin -->

    <!-- pagging -->
</div>


<!--Footer
==========================-->



<!--/.Footer-->

</body>
</html>
