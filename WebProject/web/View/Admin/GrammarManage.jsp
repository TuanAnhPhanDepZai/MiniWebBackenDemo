<%-- 
    Document   : GrammarManage
    Created on : Dec 16, 2017, 11:17:57 AM
    Author     : Tuan Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quan li huong dan ngu phap</title>
        <link rel="stylesheet" href="Template/Backend/assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="Template/Backend/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

        <!-- page specific plugin styles -->
        <link rel="stylesheet" href="Template/Backend/assets/css/jquery-ui.custom.min.css" />

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

        <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

        <!--[if lte IE 8]>
        <script src="assets/js/html5shiv.min.js"></script>
        <script src="assets/js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div id="navbar" class="navbar navbar-default          ace-save-state">
            <div class="navbar-container ace-save-state" id="navbar-container">

                <!-- Begin header --> 
                <jsp:include page="HeadAdmin.jsp" />
                <!-- End of header -->

            </div><!-- /.navbar-container -->
        </div>

        <div class="main-container ace-save-state" id="main-container">
            <script type="text/javascript">
                try {
                    ace.settings.loadState('main-container')
                } catch (e) {
                }
            </script>

            <div id="sidebar" class="sidebar                  responsive                    ace-save-state">
                <script type="text/javascript">
                    try {
                        ace.settings.loadState('sidebar')
                    } catch (e) {
                    }
                </script>


                <ul class="nav nav-list">

                    <li class="">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-list"></i>
                            <span class="menu-text"> Quan li </span>

                            <b class="arrow fa fa-angle-down"></b>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">
                            <li class="">
                                <a href="GrammarManage">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Ngu phap
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="jqgrid.html">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Tu Vung
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>


                </ul><!-- /.nav-list -->
            </div>

            <div class="main-content">
                <div class="main-content-inner">
                    <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                        <ul class="breadcrumb">
                            <li>
                                <i class="ace-icon fa fa-home home-icon"></i>
                                <a href="#">Trang chu</a>
                            </li>

                            <li>
                                <a href="">Quan li Ngu phap</a>
                            </li>
                            <li class="active">Hoc ngu phap</li>
                        </ul>  


                    </div>

                    <div class="page-content">

                        <div class="row">
                            <div class="col-xs-12">
                                <div class="row">
                                    <form action="InsertGrammarGuideContentController?id=<%=request.getAttribute("id")%>" method="post" >
                                        <div class="widget-body">
                                            <div class="widget-main no-padding">
                                                <textarea name="content" data-provide="markdown" data-iconlibrary="fa" rows="10">
                                                </textarea>
                                            </div>

                                            <div class="widget-toolbox padding-4 clearfix">
                                                <div class="btn-group pull-left">
                                                    <button class="btn btn-sm btn-info">
                                                        <i class="ace-icon fa fa-times bigger-125"></i>
                                                        Cancel
                                                    </button>
                                                </div>

                                                <div class="btn-group pull-right">
                                                    <button class="btn btn-sm btn-purple" type ="submit">
                                                        <i class="ace-icon fa fa-floppy-o bigger-125"></i>
                                                        Save
                                                    </button>
                                                </div>
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>

                        <!-- PAGE CONTENT ENDS -->
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->


    <!--
                            <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
                                    <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
                            </a>-->
</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script src="Template/Backend/assets/js/jquery-2.1.4.min.js"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
<script type="text/javascript">
                    if ('ontouchstart' in document.documentElement)
                        document.write("<script src='Template/Backend/assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="Template/Backend/assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->
<script src="vassets/js/jquery-ui.custom.min.js"></script>
<script src="vassets/js/jquery.ui.touch-punch.min.js"></script>
<script src="Template/Backend/assets/js/markdown.min.js"></script>
<script src="Template/Backend/assets/js/bootstrap-markdown.min.js"></script>
<script src="Template/Backend/assets/js/jquery.hotkeys.index.min.js"></script>
<script src="Template/Backend/assets/js/bootstrap-wysiwyg.min.js"></script>
<script src="Template/Backend/assets/js/bootbox.js"></script>

<!-- ace scripts -->
<script src="Template/Backend/assets/js/ace-elements.min.js"></script>
<script src="Template/Backend/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
                    jQuery(function ($) {

                        $('textarea[data-provide="markdown"]').each(function () {
                            var $this = $(this);

                            if ($this.data('markdown')) {
                                $this.data('markdown').showEditor();
                            } else
                                $this.markdown()

                            $this.parent().find('.btn').addClass('btn-white');
                        })



                        function showErrorAlert(reason, detail) {
                            var msg = '';
                            if (reason === 'unsupported-file-type') {
                                msg = "Unsupported format " + detail;
                            } else {
                                //console.log("error uploading file", reason, detail);
                            }
                            $('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>' +
                                    '<strong>File upload error</strong> ' + msg + ' </div>').prependTo('#alerts');
                        }

//$('#editor1').ace_wysiwyg();//this will create the default editor will all buttons

//but we want to change a few buttons colors for the third style
                        $('#editor1').ace_wysiwyg({
                            toolbar:
                                    [
                                        'font',
                                        null,
                                        'fontSize',
                                        null,
                                        {name: 'bold', className: 'btn-info'},
                                        {name: 'italic', className: 'btn-info'},
                                        {name: 'strikethrough', className: 'btn-info'},
                                        {name: 'underline', className: 'btn-info'},
                                        null,
                                        {name: 'insertunorderedlist', className: 'btn-success'},
                                        {name: 'insertorderedlist', className: 'btn-success'},
                                        {name: 'outdent', className: 'btn-purple'},
                                        {name: 'indent', className: 'btn-purple'},
                                        null,
                                        {name: 'justifyleft', className: 'btn-primary'},
                                        {name: 'justifycenter', className: 'btn-primary'},
                                        {name: 'justifyright', className: 'btn-primary'},
                                        {name: 'justifyfull', className: 'btn-inverse'},
                                        null,
                                        {name: 'createLink', className: 'btn-pink'},
                                        {name: 'unlink', className: 'btn-pink'},
                                        null,
                                        {name: 'insertImage', className: 'btn-success'},
                                        null,
                                        'foreColor',
                                        null,
                                        {name: 'undo', className: 'btn-grey'},
                                        {name: 'redo', className: 'btn-grey'}
                                    ],
                            'wysiwyg': {
                                fileUploadError: showErrorAlert
                            }
                        }).prev().addClass('wysiwyg-style2');


                        /**
                         //make the editor have all the available height
                         $(window).on('resize.editor', function() {
                         var offset = $('#editor1').parent().offset();
                         var winHeight =  $(this).height();
                         
                         $('#editor1').css({'height':winHeight - offset.top - 10, 'max-height': 'none'});
                         }).triggerHandler('resize.editor');
                         */


                        $('#editor2').css({'height': '200px'}).ace_wysiwyg({
                            toolbar_place: function (toolbar) {
                                return $(this).closest('.widget-box')
                                        .find('.widget-header').prepend(toolbar)
                                        .find('.wysiwyg-toolbar').addClass('inline');
                            },
                            toolbar:
                                    [
                                        'bold',
                                        {name: 'italic', title: 'Change Title!', icon: 'ace-icon fa fa-leaf'},
                                        'strikethrough',
                                        null,
                                        'insertunorderedlist',
                                        'insertorderedlist',
                                        null,
                                        'justifyleft',
                                        'justifycenter',
                                        'justifyright'
                                    ],
                            speech_button: false
                        });




                        $('[data-toggle="buttons"] .btn').on('click', function (e) {
                            var target = $(this).find('input[type=radio]');
                            var which = parseInt(target.val());
                            var toolbar = $('#editor1').prev().get(0);
                            if (which >= 1 && which <= 4) {
                                toolbar.className = toolbar.className.replace(/wysiwyg\-style(1|2)/g, '');
                                if (which == 1)
                                    $(toolbar).addClass('wysiwyg-style1');
                                else if (which == 2)
                                    $(toolbar).addClass('wysiwyg-style2');
                                if (which == 4) {
                                    $(toolbar).find('.btn-group > .btn').addClass('btn-white btn-round');
                                } else
                                    $(toolbar).find('.btn-group > .btn-white').removeClass('btn-white btn-round');
                            }
                        });




//RESIZE IMAGE

//Add Image Resize Functionality to Chrome and Safari
//webkit browsers don't have image resize functionality when content is editable
//so let's add something using jQuery UI resizable
//another option would be opening a dialog for user to enter dimensions.
                        if (typeof jQuery.ui !== 'undefined' && ace.vars['webkit']) {

                            var lastResizableImg = null;
                            function destroyResizable() {
                                if (lastResizableImg == null)
                                    return;
                                lastResizableImg.resizable("destroy");
                                lastResizableImg.removeData('resizable');
                                lastResizableImg = null;
                            }

                            var enableImageResize = function () {
                                $('.wysiwyg-editor')
                                        .on('mousedown', function (e) {
                                            var target = $(e.target);
                                            if (e.target instanceof HTMLImageElement) {
                                                if (!target.data('resizable')) {
                                                    target.resizable({
                                                        aspectRatio: e.target.width / e.target.height,
                                                    });
                                                    target.data('resizable', true);

                                                    if (lastResizableImg != null) {
                                                        //disable previous resizable image
                                                        lastResizableImg.resizable("destroy");
                                                        lastResizableImg.removeData('resizable');
                                                    }
                                                    lastResizableImg = target;
                                                }
                                            }
                                        })
                                        .on('click', function (e) {
                                            if (lastResizableImg != null && !(e.target instanceof HTMLImageElement)) {
                                                destroyResizable();
                                            }
                                        })
                                        .on('keydown', function () {
                                            destroyResizable();
                                        });
                            }

                            enableImageResize();

                            /**
                             //or we can load the jQuery UI dynamically only if needed
                             if (typeof jQuery.ui !== 'undefined') enableImageResize();
                             else {//load jQuery UI if not loaded
                             //in Ace demo ./components will be replaced by correct components path
                             $.getScript("assets/js/jquery-ui.custom.min.js", function(data, textStatus, jqxhr) {
                             enableImageResize()
                             });
                             }
                             */
                        }


                    });
</script>
</body>
</html>
