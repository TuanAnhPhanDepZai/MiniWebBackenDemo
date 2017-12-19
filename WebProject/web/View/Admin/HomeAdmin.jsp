<%-- 
    Document   : HomeAdmin
    Created on : Dec 15, 2017, 8:49:26 PM
    Author     : Tuan Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Gallery - Ace Admin</title>

		<meta name="description" content="responsive photo gallery using colorbox" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="Template/Backend/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="Template/Backend/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="Template/Backend/assets/css/colorbox.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="Template/Backend/assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="Template/Backend/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="Template/Backend/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="Template/Backend/assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="Template/Backend/assets/js/ace-extra.min.js"></script>
                <style type="text/css" >
                    .fix_image{
                        padding-top:  100px ;
                    }
                </style>
    </head>
    <body class="no-skin">
        
        <jsp:include page="HeadAdmin.jsp" />
        
        <div class="main-container ace-save-state" id="main-container">
            <script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
	    </script>
            <div id="sidebar" class="sidebar                  responsive                    ace-save-state">
                <script type="text/javascript">
					try{ace.settings.loadState('sidebar')}catch(e){}
		</script>
                <div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-success">
							<i class="ace-icon fa fa-signal"></i>
						</button>

						<button class="btn btn-info">
							<i class="ace-icon fa fa-pencil"></i>
						</button>

						<button class="btn btn-warning">
							<i class="ace-icon fa fa-users"></i>
						</button>

						<button class="btn btn-danger">
							<i class="ace-icon fa fa-cogs"></i>
						</button>
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>

						<span class="btn btn-info"></span>

						<span class="btn btn-warning"></span>

						<span class="btn btn-danger"></span>
					</div>
		</div><!-- /.sidebar-shortcuts -->
            
                <!-- ----------- Begin Menu -->
                <jsp:include page="Menuadmin.jsp" />
                <!-- end of menu  -->
                
            <div class="main-content">
                <div class="main-content-inner">
                    <div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="AdminForward">Home</a>
							</li>
							
						</ul><!-- /.breadcrumb -->

						
		    </div>
                    
                    <div class="page-content">
                        <div class="page-header">							
			</div><!-- /.page-header -->
                        <div class="row">
			    <div class="col-xs-12">
                                <div>
<!--                                    <ul class="ace-thumbnails clearfix">
                                            <li>
                                                    <a href="Template/Backend/assets/images/gallery/image-1.jpg" title="Photo Title" data-rel="colorbox">
                                                            <img width="150" height="150" alt="150x150" src="Template/Backend/assets/images/gallery/thumb-1.jpg" />
                                                    </a>
                                            </li>
                                    </ul>-->
                                
                                </div>
                                
                                <center class="fix_image">
                                                    <a href="Template/Backend/assets/images/gallery/image-1.jpg" title="Photo Title" data-rel="colorbox">
                                                            <img width="400" height="250" alt="" src="Template/Backend/assets/images/home.jpg" />
                                                    </a>
                                </center>
                            </div>
                        </div>
                </div>
            </div>

        </div>
        
        
        
        
        <script src="Template/Backend/assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='Template/Backend/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="Template/Backend/assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="Template/Backend/assets/js/jquery.colorbox.min.js"></script>

		<!-- ace scripts -->
		<script src="Template/Backend/assets/js/ace-elements.min.js"></script>
		<script src="Template/Backend/assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
	var $overflow = '';
	var colorbox_params = {
		rel: 'colorbox',
		reposition:true,
		scalePhotos:true,
		scrolling:false,
		previous:'<i class="ace-icon fa fa-arrow-left"></i>',
		next:'<i class="ace-icon fa fa-arrow-right"></i>',
		close:'&times;',
		current:'{current} of {total}',
		maxWidth:'100%',
		maxHeight:'100%',
		onOpen:function(){
			$overflow = document.body.style.overflow;
			document.body.style.overflow = 'hidden';
		},
		onClosed:function(){
			document.body.style.overflow = $overflow;
		},
		onComplete:function(){
			$.colorbox.resize();
		}
	};

	$('.ace-thumbnails [data-rel="colorbox"]').colorbox(colorbox_params);
	$("#cboxLoadingGraphic").html("<i class='ace-icon fa fa-spinner orange fa-spin'></i>");//let's add a custom loading icon
	
	
	$(document).one('ajaxloadstart.page', function(e) {
		$('#colorbox, #cboxOverlay').remove();
   });
})
		</script>
    </body>
</html>
