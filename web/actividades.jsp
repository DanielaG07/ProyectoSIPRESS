 
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Actividad"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.ActividadDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="micss/usuarios.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">     
        <title>JSP Page</title>
    </head>
    <body>
          <div class="w-100">
              <nav class="navbar navbar-dark bg-dark border-bottom">
                  <a style="color:white" ><span></span></a>
                  <div class="dropdown" style="right: 90px;">
                        <a href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false" class="icon ion-md-people mr-2 lead">
                        
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                          <li><a class="dropdown-item" href="#">Action</a></li>
                          <li><a class="dropdown-item" href="#">Another action</a></li>
                          <li><a class="dropdown-item" href="http://localhost:8080/pbootstrap/index.jsp">Salir</a></li>
                        </ul>
                      </div>
                  
              </nav>
          </div>
        
              
            <div id="content">
                <form action="controladorActividades">
                    <section class="py-3">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-9">
                                    <div class="input-group mb-3">
                                      <span class="input-group-text" id="basic-addon1">Nueva Actividad</span>
                                      <input type="text" class="form-control" placeholder="Nombre" name="nombre" aria-label="Username" aria-describedby="basic-addon1">
                                    </div>

                                    <div class="input-group mb-3">
                                      <input type="text" class="form-control" name="correo" placeholder="Email Docente a cargo" aria-label="Recipient's username" aria-describedby="basic-addon2">
                                      <span class="input-group-text" id="basic-addon2">example@example.com</span>
                                    </div>

                                    <div class="mb-3">
                                         <label for="formFileMultiple" class="form-label">Elija una imagen</label>
                                         <input class="form-control" type="file" id="formFileMultiple" multiple>
                                       </div>

                                    <div class="input-group">
                                      <span class="input-group-text">Descripcion</span>
                                      <textarea class="form-control" name="descripcion" aria-label="With textarea"></textarea>
                                    </div>

                                    <div class="col-auto">
                                        <button type="submit" class="btn btn-primary" name="accion" value="Agregar">Agregar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </form>
            </div>
        
                        
                   <section>
                     <div class="container">
                        <div class="row row-cols-1 row-cols-md-2 g-4">
                            <%
                              ActividadDAO dao=new ActividadDAO();
                              List<Actividad>list=dao.listar();
                              Iterator<Actividad>iter=list.iterator();
                              Actividad actividad=null;
                              while(iter.hasNext()){
                                  actividad=iter.next();
                            %>
                                <div class="col">
                                  <div class="card">
                                      <img src="images/img3.jpg"  class="card-img-top" alt="...">
                                    <div class="card-body">
                                      <h5 class="card-title"><%= actividad.getNombre()%></h5>
                                      <p class="card-text"><%= actividad.getDescripcion()%></p>
                                      <p class="card-text">Docente encargado: <%= actividad.getCorreo()%></p>
                                      <a class="btn btn-primary" href="controladorActividades?accion=Eliminar&id=<%= actividad.getid()%>">Eliminar</a>
                                      <a class="btn btn-primary" href="controladorActividades?accion=editar&id=<%= actividad.getid()%>" class="olvide1">Editar</a>
                                    </div>
                                  </div>
                                </div>
                             <%}%>
                        </div>
                     </div>
                    </section>
                   
                  
        
                  <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center">
                      <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                      </li>
                      <li class="page-item"><a class="page-link" href="#">1</a></li>
                      <li class="page-item"><a class="page-link" href="#">2</a></li>
                      <li class="page-item"><a class="page-link" href="#">3</a></li>
                      <li class="page-item">
                        <a class="page-link" href="#">Next</a>
                      </li>
                    </ul>
                  </nav>
                   
                   
             
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="./js/bootstrap.min.js"></script> 
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" crossorigin="anonymous"></script>
    </body>
</html>
