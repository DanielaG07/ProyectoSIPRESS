
package Intefaces;

import Modelo.Actividad;
import java.util.List;


public interface CRUD {
    public List listar();
    public Actividad list(int id);
    public boolean add(Actividad actividad);
    public boolean edit(Actividad per);
    public boolean eliminar(int id);
}
