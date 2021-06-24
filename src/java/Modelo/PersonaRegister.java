/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

public class PersonaRegister {
    
    String nombre;
    String correo;
    String contraseña;
    String telefono;
    String usuario;
    String ciudad;

    public PersonaRegister() {
    }

    public PersonaRegister(String nombre, String correo, String contraseña, String telefono, String usuario, String ciudad){
        this.nombre = nombre;
        this.correo = correo;
        this.contraseña = contraseña;
        this.telefono = telefono;
        this.usuario = usuario;
        this.ciudad = ciudad;
    }

    public String getNombre() {
        return nombre;
    }
     
    public void setNombre(String nombre) {
    this.nombre = nombre;
    }
    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }
    
    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    
    
    public String getUsuario() {
    return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getCiudad() {
    return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }
    
  
    } 

    

