<%-- 
    Document   : usuarios
    Created on : 28/04/2021, 01:01:44 PM
    Author     : HP
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nuevo cliente registrado</h1>
        <table border="1">
            <tr>
                <th>Usuario</th>
                <th>
                    <%= "nombre: " +request.getParameter("nombre")%> 
                    <%= "contraseña: " +request.getParameter("contraseña")%>
                    <%= "telefono: " +request.getParameter("telefono")%>
                    <% String txtCorreo= request.getParameter("correo");%>
                       <%= "correo: "+ txtCorreo  %>
                </th>
           <tr>
                <td>ciudad
                    <% String[] vectorCiudades= request.getParameterValues("ciudad");%>
                    <%= vectorCiudades [0] %>
                </td
                <td>usuario
                    <% String[] vectorTipo= request.getParameterValues("usuario");%>
                    <%= vectorTipo [0] %>
                </td>
            </tr>
            </tr>
        </table>
    </body>
</html>
