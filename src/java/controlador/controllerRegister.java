 
import Modelo.PersonaDAORegister;
import Modelo.PersonaRegister;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
@WebServlet(name = "controllerRegister", urlPatterns = {"/controllerRegister"})
public class controllerRegister extends HttpServlet {
PersonaDAORegister dao=new PersonaDAORegister();
    PersonaRegister p=new PersonaRegister ();
    int r;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)

        throws ServletException, IOException {
        System.out.println("Holam");
        response.setContentType("text/html;charset=UTF-8");
        String accion =request.getParameter("accion");
        if (accion.equals("Registrarse")){
            String nombre=request.getParameter("nombre");  
            String correo=request.getParameter("correo"); 
            String contraseña=request.getParameter("contraseña"); 
            String telefono=request.getParameter("telefono"); 
            String usuario=request.getParameter("usuario"); 
            String ciudad=request.getParameter("ciudad"); 

            p.setNombre(nombre);
            p.setCorreo(correo);
            p.setContraseña(contraseña);
            p.setUsuario(usuario);
            p.setCiudad(ciudad);
            r=dao.ValidarRegister(p);
             if(r==1){
                 request.getSession().setAttribute("nombre", nombre);
                 request.getSession().setAttribute("correo", correo);
                 request.getSession().setAttribute("telefono", telefono);
                 request.getSession().setAttribute("usuario", usuario);
                 request.getSession().setAttribute("ciudad", ciudad);
             
                 request.getRequestDispatcher("index.jsp").forward(request, response);
                 

             }else{
                 System.out.print(r);
                 request.getRequestDispatcher("index.jsp").forward(request, response);
             }
             
     
        }
    }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
