/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class PersonaDAORegister implements ValidarRegister{
    Connection con;
    Conexion cn=new Conexion();
    PreparedStatement ps; 
    ResultSet rs;
    
    
    public int ValidarRegister(PersonaRegister per) {
        int r=0;
        String sql="insert into register (Nombre, Correo, Contraseña, Telefono, Tusuario, ciudad) values (?, ?, ?, ?, ?, ?);";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, per.getNombre());
            ps.setString(2, per.getCorreo());
            ps.setString(3, per.getContraseña());
            ps.setString(4, per.getTelefono());
            ps.setString(5, per.getUsuario());
            ps.setString(6, per.getCiudad());
            
            rs=ps.executeQuery();
                 
        } catch (Exception e) {
            System.out.print(e);
        }
        
        return 1;
    }

    
}


