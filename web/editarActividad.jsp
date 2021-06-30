<%@page import="Modelo.Actividad"%>
<%@page import="Modelo.ActividadDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="micss/usuarios.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar actividad</title>
    </head>
    <body>
        <%
              ActividadDAO dao=new ActividadDAO();
              int id=Integer.parseInt((String)request.getAttribute("id"));
              Actividad p=(Actividad)dao.getOne(id);
         %>
        
        <div id="openModal" class="modalDialog">
            <div>
                <a href="#close" title="Close" class="close">X</a>
                <form action="controladorActividades">
                    <section class="py-3">
                        <div class="container">
                             <div class="row">
                                 <div class="col-lg-9">
                                     <div class="input-group mb-3">
                                       <span class="input-group-text" id="basic-addon1">Modificar actividad</span>
                                       <input type="text" class="form-control" placeholder="Nombre" name="nombre" aria-label="Username" aria-describedby="basic-addon1" value="<%= p.getNombre()%>">
                                     </div>

                                     <div class="input-group mb-3">
                                       <input type="text" class="form-control" name="correo" placeholder="Email Docente a cargo" aria-label="Recipient's username" aria-describedby="basic-addon2" value="<%= p.getCorreo()%>">
                                       <span class="input-group-text" id="basic-addon2" >example@example.com</span>
                                     </div>

                                     <div class="mb-3">
                                         <label for="formFileMultiple" class="form-label">Elija una imagen</label>
                                         <input class="form-control" type="file" id="formFileMultiple" multiple>
                                       </div>


                                     <div class="input-group">
                                       <span class="input-group-text">Descripcion</span>
                                       <textarea class="form-control" name="descripcion" aria-label="With textarea"><%= p.getDescripcion()%></textarea>
                                     </div>
                                     
                                     <input class="form-control" type="hidden" name="id" value="<%= p.getid()%>" id="formFileMultiple" multiple>
                                     <div class="col-auto">

                                          <button type="submit" class="btn btn-primary" name="accion" value="Actualizar">Modificar</button>
                                     </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </form>
            </div>
        </div> 
        
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="./js/bootstrap.min.js"></script> 
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" crossorigin="anonymous"></script>
    </body>
</html>
