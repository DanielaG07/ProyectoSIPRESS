/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

/**
 *
 * @author HP
 */
@WebServlet(name = "contacto", urlPatterns = {"/contacto"})
public class contacto extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
      
        String nombre = request.getParameter("nombre");
        String mensaje = request.getParameter("mensaje");
        String to = request.getParameter("correo");
        String telefono = request.getParameter("telefono");


        String mensajeAdmin = "La persona "+nombre+", con correo: "+to+" y telefono: "+telefono+" te envio una solicitud de contacto. Su mensaje fue: "+mensaje;
        String mensajerespuesta = "Gracias por contactarnos "+nombre+", Recibi tu mensaje, en breve me contactare contigo";            
        
    
        Properties props = System.getProperties();
        String from = "dannieelagutierrez@gmail.com";
        String pass = "115246680000";

        String host = "smtp.gmail.com";

         props.put("mail.smtp.starttls.enable", "true");

         props.put("mail.smtp.ssl.trust", host);
         props.put("mail.smtp.user", from);
         props.put("mail.smtp.password", pass);
         props.put("mail.smtp.port", "587");
         props.put("mail.smtp.auth", "true");


         Session session2 = Session.getDefaultInstance(props);
         MimeMessage messageAdmin = new MimeMessage(session2);
         MimeMessage message = new MimeMessage(session2);

         try {
             message.setFrom(new InternetAddress(from));
            
            
             
             InternetAddress toAddressAdmin = new InternetAddress("dannieelagutierrez@gmail.com");
             messageAdmin.addRecipient(Message.RecipientType.TO, toAddressAdmin);
             messageAdmin.setSubject("ADMIN Contacto SIPRESS");
             messageAdmin.setText(mensajeAdmin);
             
             
             InternetAddress toAddress = new InternetAddress(to);
             message.addRecipient(Message.RecipientType.TO, toAddress);
             message.setSubject("¡Gracias por comunicarte con SIPRESS!");
             message.setText(mensajerespuesta);


             Transport transport = session2.getTransport("smtp");


             transport.connect(host, from, pass);
             transport.sendMessage(message, message.getAllRecipients());
             transport.sendMessage(messageAdmin, messageAdmin.getAllRecipients());
             transport.close();

         }
         catch (AddressException ae) {
             ae.printStackTrace();
         }
         catch (MessagingException me) {
             me.printStackTrace();
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
