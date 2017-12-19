package org.apache.jsp.View.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class HomeAdmin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\" />\n");
      out.write("\t\t<meta charset=\"utf-8\" />\n");
      out.write("\t\t<title>Gallery - Ace Admin</title>\n");
      out.write("\n");
      out.write("\t\t<meta name=\"description\" content=\"responsive photo gallery using colorbox\" />\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\" />\n");
      out.write("\n");
      out.write("\t\t<!-- bootstrap & fontawesome -->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"Template/Backend/assets/css/bootstrap.min.css\" />\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"Template/Backend/assets/font-awesome/4.5.0/css/font-awesome.min.css\" />\n");
      out.write("\n");
      out.write("\t\t<!-- page specific plugin styles -->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"Template/Backend/assets/css/colorbox.min.css\" />\n");
      out.write("\n");
      out.write("\t\t<!-- text fonts -->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"Template/Backend/assets/css/fonts.googleapis.com.css\" />\n");
      out.write("\n");
      out.write("\t\t<!-- ace styles -->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"Template/Backend/assets/css/ace.min.css\" class=\"ace-main-stylesheet\" id=\"main-ace-style\" />\n");
      out.write("\n");
      out.write("\t\t<!--[if lte IE 9]>\n");
      out.write("\t\t\t<link rel=\"stylesheet\" href=\"assets/css/ace-part2.min.css\" class=\"ace-main-stylesheet\" />\n");
      out.write("\t\t<![endif]-->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"Template/Backend/assets/css/ace-skins.min.css\" />\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"Template/Backend/assets/css/ace-rtl.min.css\" />\n");
      out.write("\n");
      out.write("\t\t<!--[if lte IE 9]>\n");
      out.write("\t\t  <link rel=\"stylesheet\" href=\"assets/css/ace-ie.min.css\" />\n");
      out.write("\t\t<![endif]-->\n");
      out.write("\n");
      out.write("\t\t<!-- inline styles related to this page -->\n");
      out.write("\n");
      out.write("\t\t<!-- ace settings handler -->\n");
      out.write("\t\t<script src=\"Template/Backend/assets/js/ace-extra.min.js\"></script>\n");
      out.write("\n");
      out.write("\t\t<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->\n");
      out.write("\n");
      out.write("\t\t<!--[if lte IE 8]>\n");
      out.write("\t\t<script src=\"assets/js/html5shiv.min.js\"></script>\n");
      out.write("\t\t<script src=\"assets/js/respond.min.js\"></script>\n");
      out.write("\t\t<![endif]-->\n");
      out.write("    </head>\n");
      out.write("    <body class=\"no-skin\">\n");
      out.write("        \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "HeadAdmin.jsp", out, false);
      out.write("\n");
      out.write("        \n");
      out.write("        <div class=\"main-container ace-save-state\" id=\"main-container\">\n");
      out.write("            <script type=\"text/javascript\">\n");
      out.write("\t\t\t\ttry{ace.settings.loadState('main-container')}catch(e){}\n");
      out.write("\t    </script>\n");
      out.write("            <div id=\"sidebar\" class=\"sidebar                  responsive                    ace-save-state\">\n");
      out.write("                <script type=\"text/javascript\">\n");
      out.write("\t\t\t\t\ttry{ace.settings.loadState('sidebar')}catch(e){}\n");
      out.write("\t\t</script>\n");
      out.write("                <div class=\"sidebar-shortcuts\" id=\"sidebar-shortcuts\">\n");
      out.write("\t\t\t\t\t<div class=\"sidebar-shortcuts-large\" id=\"sidebar-shortcuts-large\">\n");
      out.write("\t\t\t\t\t\t<button class=\"btn btn-success\">\n");
      out.write("\t\t\t\t\t\t\t<i class=\"ace-icon fa fa-signal\"></i>\n");
      out.write("\t\t\t\t\t\t</button>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<button class=\"btn btn-info\">\n");
      out.write("\t\t\t\t\t\t\t<i class=\"ace-icon fa fa-pencil\"></i>\n");
      out.write("\t\t\t\t\t\t</button>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<button class=\"btn btn-warning\">\n");
      out.write("\t\t\t\t\t\t\t<i class=\"ace-icon fa fa-users\"></i>\n");
      out.write("\t\t\t\t\t\t</button>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<button class=\"btn btn-danger\">\n");
      out.write("\t\t\t\t\t\t\t<i class=\"ace-icon fa fa-cogs\"></i>\n");
      out.write("\t\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"sidebar-shortcuts-mini\" id=\"sidebar-shortcuts-mini\">\n");
      out.write("\t\t\t\t\t\t<span class=\"btn btn-success\"></span>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<span class=\"btn btn-info\"></span>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<span class=\"btn btn-warning\"></span>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<span class=\"btn btn-danger\"></span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t</div><!-- /.sidebar-shortcuts -->\n");
      out.write("            \n");
      out.write("                <!-- ----------- -->\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Menuadmin.jsp", out, false);
      out.write("\n");
      out.write("            <div class=\"main-content\">\n");
      out.write("                <div class=\"main-content-inner\">\n");
      out.write("                    <div class=\"breadcrumbs ace-save-state\" id=\"breadcrumbs\">\n");
      out.write("\t\t\t\t\t\t<ul class=\"breadcrumb\">\n");
      out.write("\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"ace-icon fa fa-home home-icon\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"#\">Home</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"active\">Gallery</li>\n");
      out.write("\t\t\t\t\t\t</ul><!-- /.breadcrumb -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<div class=\"nav-search\" id=\"nav-search\">\n");
      out.write("\t\t\t\t\t\t\t<form class=\"form-search\">\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"input-icon\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" placeholder=\"Search ...\" class=\"nav-search-input\" id=\"nav-search-input\" autocomplete=\"off\" />\n");
      out.write("\t\t\t\t\t\t\t\t\t<i class=\"ace-icon fa fa-search nav-search-icon\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t\t</div><!-- /.nav-search -->\n");
      out.write("\t\t    </div>\n");
      out.write("                    \n");
      out.write("                    <div class=\"page-content\">\n");
      out.write("                        <div class=\"page-header\">\n");
      out.write("\t\t\t\t\t\t\t<h1>\n");
      out.write("\t\t\t\t\t\t\t\tGallery\n");
      out.write("\t\t\t\t\t\t\t\t<small>\n");
      out.write("\t\t\t\t\t\t\t\t\t<i class=\"ace-icon fa fa-angle-double-right\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t\tresponsive photo gallery using colorbox\n");
      out.write("\t\t\t\t\t\t\t\t</small>\n");
      out.write("\t\t\t\t\t\t\t</h1>\n");
      out.write("\t\t\t</div><!-- /.page-header -->\n");
      out.write("                        <div class=\"row\">\n");
      out.write("\t\t\t    <div class=\"col-xs-12\">\n");
      out.write("                                <div>\n");
      out.write("                                    <ul class=\"ace-thumbnails clearfix\">\n");
      out.write("                                            <li>\n");
      out.write("                                                    <a href=\"Template/Backend/assets/images/gallery/image-1.jpg\" title=\"Photo Title\" data-rel=\"colorbox\">\n");
      out.write("                                                            <img width=\"150\" height=\"150\" alt=\"150x150\" src=\"Template/Backend/assets/images/gallery/thumb-1.jpg\" />\n");
      out.write("                                                    </a>\n");
      out.write("                                            </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <script src=\"Template/Backend/assets/js/jquery-2.1.4.min.js\"></script>\n");
      out.write("\n");
      out.write("\t\t<!-- <![endif]-->\n");
      out.write("\n");
      out.write("\t\t<!--[if IE]>\n");
      out.write("<script src=\"assets/js/jquery-1.11.3.min.js\"></script>\n");
      out.write("<![endif]-->\n");
      out.write("\t\t<script type=\"text/javascript\">\n");
      out.write("\t\t\tif('ontouchstart' in document.documentElement) document.write(\"<script src='Template/Backend/assets/js/jquery.mobile.custom.min.js'>\"+\"<\"+\"/script>\");\n");
      out.write("\t\t</script>\n");
      out.write("\t\t<script src=\"Template/Backend/assets/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("\t\t<!-- page specific plugin scripts -->\n");
      out.write("\t\t<script src=\"Template/Backend/assets/js/jquery.colorbox.min.js\"></script>\n");
      out.write("\n");
      out.write("\t\t<!-- ace scripts -->\n");
      out.write("\t\t<script src=\"Template/Backend/assets/js/ace-elements.min.js\"></script>\n");
      out.write("\t\t<script src=\"Template/Backend/assets/js/ace.min.js\"></script>\n");
      out.write("\n");
      out.write("\t\t<!-- inline scripts related to this page -->\n");
      out.write("\t\t<script type=\"text/javascript\">\n");
      out.write("\t\t\tjQuery(function($) {\n");
      out.write("\tvar $overflow = '';\n");
      out.write("\tvar colorbox_params = {\n");
      out.write("\t\trel: 'colorbox',\n");
      out.write("\t\treposition:true,\n");
      out.write("\t\tscalePhotos:true,\n");
      out.write("\t\tscrolling:false,\n");
      out.write("\t\tprevious:'<i class=\"ace-icon fa fa-arrow-left\"></i>',\n");
      out.write("\t\tnext:'<i class=\"ace-icon fa fa-arrow-right\"></i>',\n");
      out.write("\t\tclose:'&times;',\n");
      out.write("\t\tcurrent:'{current} of {total}',\n");
      out.write("\t\tmaxWidth:'100%',\n");
      out.write("\t\tmaxHeight:'100%',\n");
      out.write("\t\tonOpen:function(){\n");
      out.write("\t\t\t$overflow = document.body.style.overflow;\n");
      out.write("\t\t\tdocument.body.style.overflow = 'hidden';\n");
      out.write("\t\t},\n");
      out.write("\t\tonClosed:function(){\n");
      out.write("\t\t\tdocument.body.style.overflow = $overflow;\n");
      out.write("\t\t},\n");
      out.write("\t\tonComplete:function(){\n");
      out.write("\t\t\t$.colorbox.resize();\n");
      out.write("\t\t}\n");
      out.write("\t};\n");
      out.write("\n");
      out.write("\t$('.ace-thumbnails [data-rel=\"colorbox\"]').colorbox(colorbox_params);\n");
      out.write("\t$(\"#cboxLoadingGraphic\").html(\"<i class='ace-icon fa fa-spinner orange fa-spin'></i>\");//let's add a custom loading icon\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\t$(document).one('ajaxloadstart.page', function(e) {\n");
      out.write("\t\t$('#colorbox, #cboxOverlay').remove();\n");
      out.write("   });\n");
      out.write("})\n");
      out.write("\t\t</script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
