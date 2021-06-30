<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Actividad"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.ActividadDAO"%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@200;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="micss/usuarios.css">
    
    
    
    
    <title>Hello, world!</title>
  </head>
  <body>
      <div class="d-flex">
          <div id="sidebar-container" class="bg-primary">
              <div class="logo">
                  <h4 class="text-light font-weight-bold">SIPRESS</h4>
              </div>
              <div class="menu">
                  
                  <a href="http://localhost:8080/pbootstrap/Proceso.jsp" class="d-block text-light p-3"><i class="icon ion-md-stats mr-2 lead"></i>Mi proceso</a>
                  <a href="#" class="d-block text-light p-3"><i class="icon ion-md-apps mr-2 lead"></i>Agenda</a> 
                  <a href="#" class="d-block text-light p-3"><i class="icon ion-md-people mr-2 lead"></i>Usuarios</a>
                  <a href="http://localhost:8080/pbootstrap/Calendario.jsp" class="d-block text-light p-3"><i class="icon ion-md-calendar mr-2 lead"></i>Calendario</a>
                  <a href="#" class="d-block text-light p-3"><i class="icon ion-md-settings mr-2 lead"></i>Configuración</a>
              </div>
          </div>
          <div class="w-100">
              <nav class="navbar navbar-dark bg-dark border-bottom">
                
                  <a style="color:white" ><span></span></a>
                  <div class="dropdown" style="right: 90px;">
                        <a  href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false" class="icon ion-md-people mr-2 lead">
                         
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                          <li><a class="dropdown-item" href="#">Calendario</a></li
                          <li><a class="dropdown-item" href="index.jsp">Salir</a></li>
                        </ul>
                      </div>
                
              </nav>
          <!--    <nav class="navbar navbar-dark navbar-light bg-light border-bottom ">
                  <div class="container">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                  <form class="form-inline position-relative my-2 d-inline-block">
                    <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Buscar">
                    <button class="btn btn-search position-absolute" type="submit"><i class="icon ion-md-search"></i></button>
                  </form>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav ml-auto">
                    
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="false" aria-expanded="false">
                          <img src="images/dani.jpeg" class="img-fluit rounded-circle avatar mr-2">
                          Daniela Gutierrez
                        
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Mi perfil</a>
                        <a class="dropdown-item" href="#">Suscripciones</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Cerrar sesión</a>
                      </div>
                    </li>
                  </ul>
                </div>
               </div>
              </nav>-->
              
              <div id="content">
                  <section class="py-3">
                      <div class="container">
                          <div class="row">
                              <div class="col-lg-9">
                                  <h1 class="font-weight-bold mb-0">Bienvenida... <strong>${Correo} </strong></h1>
                                  <p class="lead text-muted">Revisa la información</p>
                              </div>
                          </div>
                      </div>
                  </section>
                  
                                  <section class="bg-grey">
                                      <div class="container">
                                          <div class="row">
                                              <div class="col-lg-8 my-3">
                                                  <div class="card rounded-0">
                                                      <div class="card-header bg-light">
                                                          <h6 class="font-weight-bold mb-0"><strong>Aqui podras encontrar todas las actividades disponibles para realizar tu alfabetizacion ¡Aplica ahora!</strong></h6>
                                                      </div>

                                                      
                                                  </div>
                                              </div>
                                              <div class="col-lg-4 my-3" >
                                                   
                                              </div>
                                              
                                          </div>
                                             
                                          
                                      </div>
                                  </section>
                                  
                             
                      
                                  
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
                                      
                                        <!-- Button trigger modal -->
                                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                  Aplicar
                                                </button>

                                                <!-- Modal -->
                                                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                  <div class="modal-dialog">
                                                    <div class="modal-content">
                                                      <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">Importante</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                      </div>
                                                      <div class="modal-body">
                                                        El plan de estudios del establecimiento educativo programa una intensidad mínima de ochenta (80) horas de prestación del servicio social estudiantil obligatorio en un proyecto pedagógico, durante el tiempo de formación en los grados 100.
                                                        Leer muy bien el documento de Detalles.
                                                      </div>
                                                      <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                        <button  type="button" class="btn btn-primary" onclick="alert('¡Felicidades! has aplicado correctamente, en maximo dos días habiles recibiras un correo de respuesta');" >Continuar</button>
                                                      
                                                           
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                      <a href="#" class="btn btn-primary"> Detalles</a>
                                    </div>
                                  </div>
                                </div>
                                <%}%>
                           
                              </div>
                        </div>
                   </section>
                  
              </div>
          </div>
      </div>
      
       <footer class="text-center text-white" style="background-color: #f1f1f1;">
            
              <!-- Grid container -->

              <!-- Copyright -->
              <div class="text-center text-dark p-3" style="background-color: rgba(0, 0, 0, 0.2); height: 40px;">
                © 2020:
                <a class="text-dark" href="https://mdbootstrap.com/">SIPRESS</a>
              </div>
              <!-- Copyright -->
            </footer>
 
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
-->
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/chart.js@3.3.2/dist/chart.min.js" integrity="sha256-qoN08nWXsFH+S9CtIq99e5yzYHioRHtNB9t2qy1MSmc=" crossorigin="anonymous"></script>

  </body>
</html>