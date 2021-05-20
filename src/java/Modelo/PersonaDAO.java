
package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PersonaDAO implements Validar{
    Connection con;
    Conexion cn=new Conexion();
    PreparedStatement ps; 
    ResultSet rs;
    
    
    @Override
    public int Validar(Persona per) {
        int r=0;
        String sql="Select * from login where correo=? and contraseña=?";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, per.getCorreo());
            ps.setString(2, per.getContraseña());
            
            rs=ps.executeQuery();
            System.out.println("Holam");
            while(rs.next()){
                r=r+1;
                per.setCorreo(rs.getString("correo"));
                per.setContraseña(rs.getString("contraseña"));
                
            }
            if(r==1){
                return 1;
                
            }else{
                return 0;
            }
            
        } catch (Exception e) {
            return 0;
        }
    }
    
}

