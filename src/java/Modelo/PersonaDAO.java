
package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PersonaDAO {
    Connection con;
    Conexion cn=new Conexion();
    PreparedStatement ps; 
    ResultSet rs;
    
    
    
    public int Validar(Persona per) {
        int r=0;
        
        String sql="Select * from register where correo=? and contraseña=?";
        String Tusuario="";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, per.getCorreo());
            ps.setString(2, per.getContraseña());
            
            
            rs=ps.executeQuery();
           
            while(rs.next()){
                r=r+1;
                per.setCorreo(rs.getString("correo"));
                per.setContraseña(rs.getString("contraseña"));
                Tusuario=rs.getString("Tusuario");
            }
            
            if(r==1){
                System.out.println(Tusuario+"FUERA"+Tusuario.getClass().getName());
                if(Tusuario.equals("Aprendiz")){
                   return 2;
                }
                if(Tusuario.equals("Docente")){
                   return 3;
                }
            }
            return 0;
            
        } catch (Exception e) {
            return 0;
        }
    }

    
  
    
}

