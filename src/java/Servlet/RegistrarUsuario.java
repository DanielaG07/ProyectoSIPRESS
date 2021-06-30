/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import controlador.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
@WebServlet(name = "RegistrarUsuario", urlPatterns = {"/registeruser"})
public class RegistrarUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();

            String Nombre = request.getParameter("Nombre");
            String Correo = request.getParameter("Correo");
            String Contrasena = request.getParameter("Contrasena");
            String Telefono = request.getParameter("Telefono");
            String Tusuario = request.getParameter("Tusuario");
            String ciudad = request.getParameter("ciudad");

            Consultas co = new Consultas();
       
       if (co.registrar(Nombre, Correo, Contrasena, Telefono, Tusuario, ciudad)){
           response.sendRedirect("index.jsp");
       }
            
        }
    }

