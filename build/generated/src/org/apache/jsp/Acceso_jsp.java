package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Acceso_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>.:: Acceso ::.</title>\n");
      out.write("    </head>\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("        .tg  {border-collapse:collapse;border-spacing:0;border-color:#bbb;}\n");
      out.write("        .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:#bbb;color:#594F4F;background-color:#E0FFEB;border-top-width:1px;border-bottom-width:1px;}\n");
      out.write("        .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:#bbb;color:#493F3F;background-color:#9DE0AD;border-top-width:1px;border-bottom-width:1px;}\n");
      out.write("        .tg .tg-3zgm{background-color:#343434;color:#ffffff}\n");
      out.write("        .tg .tg-1vft{background-color:#efefef;color:#343434}\n");
      out.write("        .myButton {\n");
      out.write("            -moz-box-shadow:inset 0px 1px 0px 0px #343434;\n");
      out.write("            -webkit-box-shadow:inset 0px 1px 0px 0px #343434;\n");
      out.write("            box-shadow:inset 0px 1px 0px 0px #343434;\n");
      out.write("            background-color:transparent;\n");
      out.write("            -moz-border-radius:6px;\n");
      out.write("            -webkit-border-radius:6px;\n");
      out.write("            border-radius:6px;\n");
      out.write("            border:1px solid #343434;\n");
      out.write("            display:inline-block;\n");
      out.write("            cursor:pointer;\n");
      out.write("            color:#666666;\n");
      out.write("            font-family:Arial;\n");
      out.write("            font-size:15px;\n");
      out.write("            font-weight:bold;\n");
      out.write("            padding:4px 20px;\n");
      out.write("            text-decoration:none;\n");
      out.write("            text-shadow:0px 1px 0px #ffffff;\n");
      out.write("        }\n");
      out.write("        .myButton:hover {\n");
      out.write("            background-color:transparent;\n");
      out.write("        }\n");
      out.write("        .myButton:active {\n");
      out.write("            position:relative;\n");
      out.write("            top:1px;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        window.history.forward(1);\n");
      out.write("    </script>\n");
      out.write("    <body background=\"imagenes/fondo.jpg\">\n");
      out.write("    <center>\n");
      out.write("        <h1 style=\"background:#343434;color:#f9faff;width:675px\">.:: Acceso ::.</h1>\n");
      out.write("        <form name=\"frm_acceso\" action=\"Acceso_control.jsp\" method=\"post\">\n");
      out.write("            <table border=\"1\" width=\"50%\" class=\"tg\">\n");
      out.write("                <tr>\n");
      out.write("                    <th class=\"tg-3zgm\">Usuario:</th>\n");
      out.write("                    <td class=\"tg-1vft\">\n");
      out.write("                        <input type=\"text\" maxlength=\"50\" required=\"\" size=\"30\" name=\"usuario\" placeholder=\"Ingrese Usuario\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th class=\"tg-3zgm\">Clave:</th>\n");
      out.write("                    <td class=\"tg-1vft\">\n");
      out.write("                        <input type=\"password\" maxlength=\"50\" required=\"\" size=\"30\" placeholder=\"Ingrese su clave\" name=\"clave\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td class=\"tg-3zgm\"></td>\n");
      out.write("                    <td class=\"tg-1vft\">\n");
      out.write("                        <input type=\"submit\" value=\"Ingresar\" class=\"myButton\">\n");
      out.write("                        &nbsp;\n");
      out.write("                        <input type=\"reset\" value=\"Limpiar Campos\" class=\"myButton\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("    </center>\n");
      out.write("</body>\n");
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
