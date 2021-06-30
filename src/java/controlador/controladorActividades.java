/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import Modelo.Actividad;
import Modelo.ActividadDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
@WebServlet(name = "controladorActividades", urlPatterns = {"/controladorActividades"})
public class controladorActividades extends HttpServlet {
    String listar="./actividades.jsp";
    String add="./actividades.jsp";
    String edit="./editarActividad.jsp";
    Actividad a=new Actividad();
    ActividadDAO dao=new ActividadDAO();
    int id;
     
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            System.out.println("HOLA YA ");
            String acceso="";
            String action=request.getParameter("accion");
            
    
           
        if(action.equalsIgnoreCase("Agregar")){
            System.out.println("dentro");
            String nombre=request.getParameter("nombre");
            String correo=request.getParameter("correo");
            String descripcion=request.getParameter("descripcion");
            a.setNombre(nombre);
            a.setCorreo(correo);
            a.setDescripcion(descripcion);

            dao.add(a);
            acceso=listar;
        }
            else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("id",request.getParameter("id"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
            String nombre=request.getParameter("nombre");
            String correo=request.getParameter("correo");
            String descripcion=request.getParameter("descripcion");
            String id=request.getParameter("id");

            a.setNombre(nombre);
            a.setCorreo(correo);
            a.setDescripcion(descripcion);
            a.setid(id);

            dao.edit(a);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("Eliminar")){
         id=Integer.parseInt(request.getParameter("id"));
            dao.eliminar(id);
            
            acceso=listar;
            
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
        
    }

   
     
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
