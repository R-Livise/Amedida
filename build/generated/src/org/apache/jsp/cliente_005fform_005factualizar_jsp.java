package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Bean.ClienteDTO;

public final class cliente_005fform_005factualizar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Actualizar informcion del cliente</h1>\n");
      out.write("        ");

                    ClienteDTO cl = (ClienteDTO)request.getAttribute("cliente");
                    if(cl!= null)
                    {
		
      out.write("\n");
      out.write("        \n");
      out.write("        <form class=\"col\" action=\"ServletCliente\">\n");
      out.write("                    <h3> Codigo : ");
      out.print(cl.getId_cliente());
      out.write("</h3>\n");
      out.write("                    \n");
      out.write("                    </br>\n");
      out.write("\n");
      out.write("                    <span>Nombre :</span>\n");
      out.write("                    <input type=\"text\" name=\"nombres\" value=\"");
      out.print(cl.getNombres() );
      out.write("\">\n");
      out.write("                    </br>\n");
      out.write("                    <span>Apellido </span>\n");
      out.write("                    <input type=\"text\" name=\"apellidos\" value=\"");
      out.print(cl.getApellidos());
      out.write("\">\n");
      out.write("                    </br>\n");
      out.write("                    <span>Correo</span>\n");
      out.write("                    <input type=\"text\" name=\"correo\" value=\"");
      out.print(cl.getCorreo());
      out.write("\">\n");
      out.write("                    </br>\n");
      out.write("                    <span>Usuario</span>\n");
      out.write("                    <input type=\"text\" name=\"usuario\" value=\"");
      out.print(cl.getUsuario());
      out.write("\" >\n");
      out.write("                    </br>\n");
      out.write("                    <span>Contraseña</span>\n");
      out.write("                    <input type=\"text\" name=\"password\" value=\"");
      out.print(cl.getContrasegna());
      out.write("\">\n");
      out.write("                    </br>\n");
      out.write("                    \n");
      out.write("                    <input type=\"hidden\" name=\"ID\" value=\"");
      out.print(cl.getId_cliente());
      out.write("\">\n");
      out.write("                    <input type=\"hidden\" name=\"accion\" value=\"actualizar\">\n");
      out.write("                \n");
      out.write("                    <input type=\"submit\" value=\"enviar\">\n");
      out.write("                </form>\n");
      out.write("        ");

            }
        
      out.write("\n");
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
