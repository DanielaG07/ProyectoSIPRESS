package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("    <!-- Mi estilos CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"micss/estilos.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"\">\n");
      out.write("    \n");
      out.write(" \n");
      out.write("\n");
      out.write("    <title>SIPRESS</title>\n");
      out.write("  </head>\n");
      out.write("  \n");
      out.write("      <header>\n");
      out.write("        <nav class=\"navbar navbar-expand-md navbar-dark fixed-top bg-dark\">\n");
      out.write("          <div class=\"container-fluid\">\n");
      out.write("            <img src=\"images/logo1.jpg \" class=\"navbar-bran\">\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarCollapse\" aria-controls=\"navbarCollapse\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("              <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("            </button>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarCollapse\">\n");
      out.write("              <ul class=\"navbar-nav me-auto mb-2 mb-md-0\">\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                  <a class=\"nav-link active\" aria-current=\"page\" href=\"#\">Sobre Nosotros</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                  <a class=\"nav-link\" href=\"http://localhost:8080/pbootstrap/contacto.jsp\">Contactenos</a>\n");
      out.write("                </li>\n");
      out.write("              </ul>\n");
      out.write("              <form class=\"d-flex\"> \n");
      out.write("                <input class=\"form-control me-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\n");
      out.write("                <button class=\"btn btn-outline-success\" type=\"submit\">Search</button>\n");
      out.write("              </form>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </nav>\n");
      out.write("      </header>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("\n");
      out.write("  <body>\n");
      out.write("\n");
      out.write("      <div class=\"\" style=\"z-index: 0!important; position:fixed;\">\n");
      out.write("          <div class=\"row\">\n");
      out.write("              <div class=\"col-sm-12\">\n");
      out.write("                  <div id=\"carouselExampleControls\" class=\"carousel slide\" data-bs-ride=\"carousel\">\n");
      out.write("                    <div class=\"carousel-inner\">\n");
      out.write("                        \n");
      out.write("                      <div class=\"carousel-item active\">\n");
      out.write("                          <img src=\"images/img.jpg\" class=\"d-block w-100\" alt=\"...\" width=\"660\" height=\"600\">\n");
      out.write("                      </div>\n");
      out.write("                     \n");
      out.write("                    </div>\n");
      out.write("                    <button class=\"carousel-control-prev\" type=\"button\" data-bs-target=\"#carouselExampleControls\" data-bs-slide=\"prev\">\n");
      out.write("                      <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                      <span class=\"visually-hidden\">Previous</span>\n");
      out.write("                    </button>\n");
      out.write("                    <button class=\"carousel-control-next\" type=\"button\" data-bs-target=\"#carouselExampleControls\" data-bs-slide=\"next\">\n");
      out.write("                      <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                      <span class=\"visually-hidden\">Next</span>\n");
      out.write("                    </button>\n");
      out.write("                  </div>\n");
      out.write("              </div>\n");
      out.write("          </div>\n");
      out.write("      </div>\n");
      out.write("      \n");
      out.write("      <div class=\"container\">\n");
      out.write("          <div class=\"row justify-content-center pt-5 mt-5 mr-1\">\n");
      out.write("              <div class=\"col-md-4 login\">\n");
      out.write("                  <form action=\"controller\">\n");
      out.write("                      <div class=\"form-group text-center\">\n");
      out.write("                          <h1 class=\"text-light\">INICIAR SESIÓN</h1>\n");
      out.write("                      </div>\n");
      out.write("                      <div class=\"form-group mx-sm-4 pt-3 pb-3\">\n");
      out.write("                          <input type=\"email\" class=\"form-control\" name=\"txtcorreo\" placeholder=\"Ingrese correo\">\n");
      out.write("                      </div>\n");
      out.write("                      <div class=\"form-group mx-sm-4 pb-3\">\n");
      out.write("                          <input type=\"password\" class=\"form-control\" name=\"txtcontraseña\" placeholder=\"Ingrese su Contraseña\">\n");
      out.write("                      </div>\n");
      out.write("                      <div class=\"form-group mx-sm-4 pb-2\">\n");
      out.write("                          <input type=\"submit\" name=\"accion\" class=\"btn btn-block Ingresar\" value=\"Ingresar\">\n");
      out.write("                      </div>\n");
      out.write("                      \n");
      out.write("           \n");
      out.write("                      <div class=\"form-group mx-sm-4 pt-2 pb-3 text-right\">\n");
      out.write("                          <span class=\"\"><a href=\"#\" class=\"olvide\">Olvide mi contraseña</a></span>\n");
      out.write("                      </div>\n");
      out.write("                      <div class=\"form-group mx-sm-4  pb-3 text-center\">\n");
      out.write("                          <span><a  href=\"#openModal\" class=\"olvide1\">Registrarse</a></span>\n");
      out.write("                      </div>\n");
      out.write("                      </div>\n");
      out.write("               </div>\n");
      out.write("          </div>\n");
      out.write("      </form> \n");
      out.write("                    <div id=\"openModal\" class=\"modalDialog\">\n");
      out.write("                    <div>\n");
      out.write("                        <a href=\"#close\" title=\"Close\" class=\"close\">X</a>\n");
      out.write("                        \n");
      out.write("                     <form id=\"formulario\" name=\"formulario\" method=\"post\" action=\"nuevousuario\"> \n");
      out.write("                        <h4>Formulario de Registro</h4>\n");
      out.write("                            <label for=\"nombre\"><input name=\"Nombre\" class=\"controls\" type=\"text\" placeholder=\"Nombre completo\" size= \"30\" max=\"12\" />\n");
      out.write("                        </label><br>\n");
      out.write("                            <label for=\"correo\"><input name=\"Correo\" class=\"controls\" type=\"email\" id=\"correo\" placeholder=\"Ingrese correo\" size=\"30\" max=\"12\"/>\n");
      out.write("                            </label><br>\n");
      out.write("                            <label for=\"contraseña\"><input class=\"controls\"  name=\"Contrasena\" id=\"Contrasena\"  type=\"password\"  placeholder=\"Ingrese contraseña\" size=\"30\" max=\"12\"/></label><br>\n");
      out.write("                            <label for=\"telefono\"><input name=\"Telefono\" class=\"controls\" type=\"text\" pattern=\"[0-9]+\" placeholder=\"Numero Movil\" size= \"30\" max=\"12\" />\n");
      out.write("                      </label><br>\n");
      out.write("\n");
      out.write("                      <p>     \n");
      out.write("                            <select class=\"usuario\" name=\"Tusuario\">   \n");
      out.write("                            <option>Tipo de Usuario</option>\n");
      out.write("                            <option value=\"Docente\">Docente</option>\n");
      out.write("                            <option value=\"Aprendiz\">Aprendiz</option>\n");
      out.write("                          </select>\n");
      out.write("                      </p>\n");
      out.write("                      <p>      \n");
      out.write("                        <select name=\"ciudad\" class=\"ciudad\">\n");
      out.write("                          <option placeholder=\"\">Seleccione ciudad</option>\n");
      out.write("                          <option value=\"medellin\">Medellín</option>\n");
      out.write("                            <option value=\"bogota\">Bogotá</option>\n");
      out.write("                            <option value=\"barranquilla\">Barranquilla</option>\n");
      out.write("                            <option value=\"cali\">Cali</option>\n");
      out.write("                          </select>\n");
      out.write("                      </p>\n");
      out.write("                      \n");
      out.write("                    <p><input type=\"checkbox\" name=\"terminos\" > Estoy de acurdo con <a href=\"\">terminos y condiciones</a></p>\n");
      out.write("                    <input type=\"submit\" class=\"botons\"  name=\"\" value=\"Registrarse\">\n");
      out.write("+                    </form> \n");
      out.write("                    </div>\n");
      out.write("                    </div> \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                  <script type=\"text/javascript\">\n");
      out.write("                  (function(){\n");
      out.write("                    var formulario= document.getElementsByName(\"formulario\")[0];\n");
      out.write("                    var elementos = formulario.elements;\n");
      out.write("                    var boton = document.getElementsByName(\"Registrar\");\n");
      out.write("\n");
      out.write("                    var validarNombre=function(e){\n");
      out.write("                      if (formulario.nombre.value == 0){\n");
      out.write("                        alert(\"Debe ingresar el nombre\");\n");
      out.write("                        e.preventDefault(e);\n");
      out.write("                      }\n");
      out.write("                    };\n");
      out.write("                    var ValidarContraseña=function(e){\n");
      out.write("                      if(formulario.contraseña.value == 0){\n");
      out.write("                        alert(\"Ingrese la contraseña\");\n");
      out.write("                            e.preventDefault(e);\n");
      out.write("                      }\n");
      out.write("                    };\n");
      out.write("                    var validarCorreo=function(e){\n");
      out.write("                      if(formulario.correo.value == 0){\n");
      out.write("                        alert(\"Ingrese el correo\");\n");
      out.write("                        e.preventDefault(e);\n");
      out.write("\n");
      out.write("                      }\n");
      out.write("                    };\n");
      out.write("                    var validarTelefono=function(e){\n");
      out.write("                      if(formulario.telefono.value == 0){\n");
      out.write("                        alert(\"Ingrese el telefono\");\n");
      out.write("                        e.preventDefault(e);\n");
      out.write("\n");
      out.write("                      }\n");
      out.write("                    };\n");
      out.write("\n");
      out.write("                    var validarTerminos =function(){\n");
      out.write("                      if(formulario.terminos.checked==false){\n");
      out.write("                        alert(\"Debe aceptar terminos y condiciones\");\n");
      out.write("                        e.preventDefault(e);\n");
      out.write("                      }\n");
      out.write("                    }\n");
      out.write("                    var validar = function(e){\n");
      out.write("                      validarNombre(e);\n");
      out.write("                      validarTerminos(e);\n");
      out.write("                      validarCorreo(e);\n");
      out.write("                      ValidarContraseña(e);\n");
      out.write("                      validarTelefono(e);\n");
      out.write("                    };\n");
      out.write("                    formulario.addEventListener(\"submit\", validar);\n");
      out.write("                    }())\n");
      out.write("\n");
      out.write("                  </script>\n");
      out.write("                    </div>\n");
      out.write("                    </div>\n");
      out.write("      </\n");
      out.write("\n");
      out.write("             \n");
      out.write("      \n");
      out.write("\n");
      out.write("    <!-- Optional JavaScript; choose one of the two! -->\n");
      out.write("\n");
      out.write("    <!-- Option 1: Bootstrap Bundle with Popper -->\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("    <!-- Option 2: Separate Popper and Bootstrap JS -->\n");
      out.write("   \n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js\" integrity=\"sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"./js/bootstrap.min.js\"></script> \n");
      out.write("    </body> \n");
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
