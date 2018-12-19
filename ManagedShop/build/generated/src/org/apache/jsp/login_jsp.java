package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!-- ?ÀO MINH HI?N -->\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"utf-8\">\n");
      out.write("\t<title>Phái M?nh Shop</title>\n");
      out.write("        <link rel=\"icon\" href=\"images/logo_ao.png\" type=\"image/gif\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"form.css\">\n");
      out.write("\t<script type=\"text/JavaScript\" src=\"form.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<div class=\"login-wrap\">\n");
      out.write("\t<div class=\"login-html\">\n");
      out.write("\t\t<div class=\"login-form\">\n");
      out.write("\t\t\t<form id=\"form1\" method=\"POST\"  class=\"sign-in-htm\" action=\"\">\n");
      out.write("\t\t\t\t<div class=\"group\">\n");
      out.write("\t\t\t\t\t<label  for=\"ten_dang_nhap\" class=\"label\">Tên ??ng nh?p</label>\n");
      out.write("\t\t\t\t\t<input id=\"ten_dang_nhap\" placeholder=\"Nh?p email ho?c s? ?i?n tho?i\" type=\"text\" class=\"input\"><span class=\"span\" id=\"loi_ten_dang_nhap\"></span>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"group\">\n");
      out.write("\t\t\t\t\t<label  class=\"label\">M?t kh?u</label>\n");
      out.write("\t\t\t\t\t<input id=\"mat_khau_dang_nhap\" placeholder=\"M?t kh?u\" type=\"password\" class=\"input\" data-type=\"password\" ><span class=\"span\" id=\"loi_mat_khau_dang_nhap\"></span>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"group\">\n");
      out.write("\t\t\t\t\t<input id=\"check\" type=\"checkbox\" class=\"check\" checked>\n");
      out.write("\t\t\t\t\t<label><span class=\"icon\"></span>Nh? m?t kh?u</label>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"group\">\n");
      out.write("\t\t\t\t\t<input type=\"button\" class=\"button\" value=\"??ng nh?p\" onclick=\"return check1()\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"hr\"></div>\n");
      out.write("\t\t\t\t<div class=\"foot-lnk\">\n");
      out.write("\t\t\t\t\t<a href=\"#forgot\">Quên m?t kh?u ?</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</form><!-- end form -->\n");
      out.write("\t\t</div><!--  end login-form -->\n");
      out.write("\t</div> <!-- end login-html -->\n");
      out.write("</div> <!-- end login-wrap -->\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
