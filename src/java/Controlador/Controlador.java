
package Controlador;

import Modelo.Persona;
import Modelo.PersonaDAO;
import java.io.IOException;
import java.io.PrintWriter; 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Controlador extends HttpServlet {
    PersonaDAO dao=new PersonaDAO();
    Persona p=new Persona ();
    int r;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)

        throws ServletException, IOException {
        System.out.println("Holam");
        response.setContentType("text/html;charset=UTF-8");
        String accion =request.getParameter("accion");
        if (accion.equals("Ingresar")){
            String correo=request.getParameter("txtcorreo");  
            
            String contraseña=request.getParameter("txtcontraseña"); 
            p.setCorreo(correo);
            p.setContraseña(contraseña);
            r=dao.Validar(p);
             if(r==1){
                 request.getSession().setAttribute("correo", correo);
                 request.getRequestDispatcher("usuario.jsp").forward(request, response);
             }else{
                 request.getRequestDispatcher("index.jsp").forward(request, response);
             }
     
        }else{
    
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
 }

