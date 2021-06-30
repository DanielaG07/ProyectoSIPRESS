/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;


import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author HP
 */
 public class Consultas extends Conexion{
     
    
    public boolean registrar(String Nombre, String Correo, String Contraseña, String Telefono, String Tusuario, String ciudad){
        
        PreparedStatement pst= null;
        
        try{
            String consulta ="insert into register (Nombre, Correo, Contraseña, Telefono, Tusuario, ciudad) values(?,?,?,?,?,?)";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, Nombre);
            pst.setString(2, Correo);
            pst.setString(3, Contraseña);
            pst.setString(4, Telefono);
            pst.setString(5, Tusuario);
            pst.setString(6, ciudad);
            
            if(pst.executeUpdate()==1){
                return true;
            }
        }catch (Exception ex){
            System.out.print("ERROR!!" + ex);
        }finally{
            try {
                if(getConexion() != null) getConexion().close();
                if(pst != null) pst.close();
            } catch (Exception e) {
                 System.out.print("ERROR!!" + e);
            }
        }
    return false;
    }
   
    public static void main (String[] args){
        Consultas co = new Consultas();
        co.registrar( "caro", "andresss@gmail.com", "8888", "6666", "docente", "medellin");
    }
    

}
