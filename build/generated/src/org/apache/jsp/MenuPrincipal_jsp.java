package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class MenuPrincipal_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!doctype html>\n");
      out.write("<html lang=''>\n");
      out.write("    <head>\n");
      out.write("        <meta charset='utf-8'>\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles.css\">\n");
      out.write("        <script src=\"http://code.jquery.com/jquery-latest.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"script.js\"></script>\n");
      out.write("        <title>Menu Principal</title>\n");
      out.write("    </head>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        window.history.forward(1);\n");
      out.write("    </script>\n");
      out.write("    <body background=\"imagenes/fondo.jpg\">\n");
      out.write("\n");
      out.write("        <div id='cssmenu'>\n");
      out.write("            <ul>\n");
      out.write("                <li><a><span></span></a></li>\n");
      out.write("                <li><a><span></span></a></li>\n");
      out.write("                <li><a><span></span></a></li>\n");
      out.write("                <li><a><span></span></a></li>\n");
      out.write("                <li><a><span></span></a></li>\n");
      out.write("                <li><a><span></span></a></li>\n");
      out.write("                <li><a><span></span></a></li>\n");
      out.write("                <li><a><span></span></a></li>\n");
      out.write("                <li><a href='#'><span>Movimientos</span></a>\n");
      out.write("                    <ul>\n");
      out.write("                       \n");
      out.write("                        <li class='has-sub'><a href='Facturas.jsp'><span>Facturas</span></a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                ");

               /* <li><a href='#'><span>Movimientos</span></a>
                    <ul>
                        <li class='has-sub'><a href='AgendaMedica_mantener.jsp'><span>Agenda Medica</span></a></li>
                        <li class='has-sub'><a href='AgendaPaciente_mantener.jsp'><span>Agenda Paciente</span></a></li>
                        <li class='has-sub'><a href='Tratamientos_mantener.jsp'><span>Tratamientos</span></a></li>
                    </ul>
                </li> */
                
      out.write("\n");
      out.write("                <li><a href='#'><span>Reportes</span></a>\n");
      out.write("                    <ul>\n");
      out.write("                        <li class='has-sub'><a href='Listado_Servicios.jsp'><span>Listado de Servicios</span></a></li>\n");
      out.write("                        <li class='has-sub'><a href='Listado_Estadia.jsp'><span>Listado de Estadias</span></a></li>\n");
      out.write("                        <li class='has-sub'><a href='Listado_Reserva.jsp'><span>Listado de Reserva</span></a></li>\n");
      out.write("                        <li class='has-sub'><a href='Listado_Facturas.jsp'><span>Listado de Facturas</span></a></li>\n");
      out.write("                        <li class='has-sub'><a href='Listado_Cobros.jsp'><span>Listado de Cobros</span></a></li>\n");
      out.write(" \n");
      out.write("                      \n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li><a href='ayuda.htm' target=\"_blank\">Ayuda</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("    <html>\n");
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
