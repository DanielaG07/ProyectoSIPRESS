/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Intefaces.CRUD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ActividadDAO implements CRUD{
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Actividad p=new Actividad();

    
    public List listar() {
        ArrayList<Actividad>list=new ArrayList<>();
        String sql="select * from actividades";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Actividad per=new Actividad();
                per.setid(rs.getString("id"));
                per.setNombre(rs.getString("nombre"));
                per.setCorreo(rs.getString("correo"));
                per.setDescripcion(rs.getString("descripcion"));

                list.add(per);
            }
        } catch (Exception e) {
        }
        return list;
    }

    
    public Actividad getOne(int id) {
        String sql="select * from actividades where id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                p.setid(rs.getString("id"));
                p.setNombre(rs.getString("nombre"));
                p.setCorreo(rs.getString("correo"));
                p.setDescripcion(rs.getString("descripcion"));

                
            }
        } catch (Exception e) {
            System.out.print(e);
        }
        return p;
    }

    public boolean add(Actividad actividad) {
       String sql="insert into actividades (nombre, correo, descripcion, idDocente) values(?, ?, ?, 2);";
       
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, actividad.getNombre());
            ps.setString(2, actividad.getCorreo());
            ps.setString(3, actividad.getDescripcion());
            ps.executeUpdate();
        } catch (Exception e) {
          System.out.println(e);

        }
       return false;
    }

    public boolean edit(Actividad actividad) {
        String sql = "update actividades set nombre = ?, descripcion=?, correo=? where id = ?";
        try {
            System.out.println("LLEGUE A EDITAR"+sql);
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, actividad.getNombre());
            ps.setString(2, actividad.getDescripcion());
            ps.setString(3, actividad.getCorreo());
            ps.setString(4, actividad.getid());
            ps.executeUpdate();
        } catch (Exception e) {
          System.out.println(e);

        }
        return false;
    }

    public boolean eliminar(int id) {
        String sql="delete from actividades where id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    
    }

    @Override
    public Actividad list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}

