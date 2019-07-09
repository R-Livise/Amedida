package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Bean.ClienteDTO;

public final class cliente_005fmenu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/master_head_1.jsp");
    _jspx_dependants.add("/cliente_verificacion_sesion.jsp");
  }

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
      out.write("        <title>cliente_menu</title>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- Basic -->\n");
      out.write("   <meta charset=\"utf-8\">\n");
      out.write("   <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("   <!-- Mobile Metas -->\n");
      out.write("   <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("   <meta name=\"viewport\" content=\"initial-scale=1, maximum-scale=1\">\n");
      out.write("   <!-- Site Metas -->\n");
      out.write("   <meta name=\"keywords\" content=\"\">\n");
      out.write("   <meta name=\"description\" content=\"\">\n");
      out.write("   <meta name=\"author\" content=\"\">\n");
      out.write("   <!-- Site Icons -->\n");
      out.write("   <link rel=\"shortcut icon\" href=\"images/fevicon.ico.png\" type=\"image/x-icon\" />\n");
      out.write("   <!-- Bootstrap CSS -->\n");
      out.write("   <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("   <!-- Site CSS -->\n");
      out.write("   <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("   <!-- Colors CSS -->\n");
      out.write("   <link rel=\"stylesheet\" href=\"css/colors.css\">\n");
      out.write("   <!-- ALL VERSION CSS -->\n");
      out.write("   <link rel=\"stylesheet\" href=\"css/versions.css\">\n");
      out.write("   <!-- Responsive CSS -->\n");
      out.write("   <link rel=\"stylesheet\" href=\"css/responsive.css\">\n");
      out.write("   <!-- building CSS -->\n");
      out.write("   <link rel=\"stylesheet\" href=\"css/building.css\">");
      out.write(" \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("        \n");
      out.write("        ");
 
            if (request.getAttribute("clienteSesion")!=null && request.getAttribute("codigoVerificacion").equals("cliente")){
            
                ClienteDTO cliente = (ClienteDTO) request.getAttribute("clienteSesion");
                String Codigo = (String)request.getAttribute("codigoVerificacion");
        
      out.write("\n");
      out.write("        ");
      JavaBean.ClienteBean clienteBean1 = null;
      synchronized (session) {
        clienteBean1 = (JavaBean.ClienteBean) _jspx_page_context.getAttribute("clienteBean1", PageContext.SESSION_SCOPE);
        if (clienteBean1 == null){
          clienteBean1 = new JavaBean.ClienteBean();
          _jspx_page_context.setAttribute("clienteBean1", clienteBean1, PageContext.SESSION_SCOPE);
        }
      }
      out.write("\n");
      out.write("        \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("clienteBean1"), "id_cliente",
cliente.getId_cliente());
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("clienteBean1"), "nombres",
cliente.getNombres());
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("clienteBean1"), "apellidos",
cliente.getApellidos() );
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("clienteBean1"), "usuario",
cliente.getUsuario() );
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("clienteBean1"), "codigoVerificacion",
Codigo);
      out.write("\n");
      out.write("     \n");
      out.write("        <h2 class=\"usuario\" >  ");
      out.write(org.apache.jasper.runtime.JspRuntimeLibrary.toString((((JavaBean.ClienteBean)_jspx_page_context.findAttribute("clienteBean1")).getUsuario())));
      out.write(" </h2>\n");
      out.write("        \n");
      out.write("        ");
 
            }
                if(session.getAttribute("clienteBean1") == null){
                response.sendRedirect("index.jsp");     
            }

        
      out.write("\n");
      out.write("        \n");
      out.write(" \n");
      out.write("        <div class=\"container\" >\n");
      out.write("            <h1>cliente menu</h1>\n");
      out.write("            <div class=\"row \" >\n");
      out.write("                    \n");
      out.write("                    <div class=\"col-md-2\" >\n");
      out.write("                            <a class=\"effect-1\" href=\"index.jsp\"  >Inicio</a>\n");
      out.write("                            <br>\n");
      out.write("                            <a class=\"effect-1\" href=\"cliente_form_registrar.jsp\" >Registrar</a>\n");
      out.write("                            <br>\n");
      out.write("                            <a class=\"effect-1\" href=\"ServletCliente?accion=listar\" >Listar</a>\n");
      out.write("                            <br>\n");
      out.write("                            <a class=\"effect-1\" href=\"cliente_form_cotizacion.jsp\" >Cotizar</a>\n");
      out.write("                            <br>    \n");
      out.write("                            <a class=\"effect-1\" href=\"index.jsp\"  >Salir</a>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                <div class=\"col-md-4 \">\n");
      out.write("                    ");

                        String x=(String) request.getAttribute("mensaje");
                        if(x!=null){

                            
      out.write(" \n");
      out.write("\n");
      out.write("                            <h2>");
      out.print(x );
      out.write("</h2>    \n");
      out.write("                     ");
  
                        }
                     
      out.write(" \n");
      out.write("                </div>\n");
      out.write("            </div>    \n");
      out.write("        </div>\n");
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
