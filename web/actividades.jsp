
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="micss/usuarios.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">        <title>JSP Page</title>
    </head>
    <body>
          <div class="w-100">
              <nav class="navbar navbar-dark bg-dark border-bottom">
                  <button type="button" class="btn btn-primary">
                        Notifications <span class="badge bg-secondary">4</span>
                  </button>
                  <a style="color:white" ><span></span></a>
                  <div class="dropdown">
                        <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                          DANIELA GUTIERREZ
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                          <li><a class="dropdown-item" href="#">Action</a></li>
                          <li><a class="dropdown-item" href="#">Another action</a></li>
                          <li><a class="dropdown-item" href="http://localhost:8080/pbootstrap/index.jsp">Salir</a></li>
                        </ul>
                      </div>
                
              </nav>
              <div id="content">
          
               <section class="py-3">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9">
                            <div class="input-group mb-3">
                              <span class="input-group-text" id="basic-addon1">Nueva Actividad</span>
                              <input type="text" class="form-control" placeholder="Nombre" aria-label="Username" aria-describedby="basic-addon1">
                            </div>

                            <div class="input-group mb-3">
                              <input type="text" class="form-control" placeholder="Email Docente a cargo" aria-label="Recipient's username" aria-describedby="basic-addon2">
                              <span class="input-group-text" id="basic-addon2">example@example.com</span>
                            </div>


                            <div class="input-group">
                              <span class="input-group-text">Descripcion</span>
                              <textarea class="form-control" aria-label="With textarea"></textarea>
                            </div>
                            
                            <div class="mb-3">
                              <input type="file" class="form-control"  aria-label="file example" required>
                              <div class="invalid-feedback">Example invalid form file feedback</div>
                            </div>

                            <div class="col-auto">
                                <button type="submit" class="btn btn-primary">Agregar</button>
                             </div>
                            </div>
                                </div>
                                   </div>  
                            </section>
                  <section>  
                  <div class="container">
                      
                            <div class="row row-cols-1 row-cols-md-2 g-4">
                                <div class="col">
                                  <div class="card">
                                      <img src="images/img3.jpg"  class="card-img-top" alt="...">
                                    <div class="card-body">
                                      <h5 class="card-title">Card title</h5>
                                      <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                      <a href="#" class="btn btn-primary">Eliminar</a>
                                      <a href="#" class="btn btn-primary">editar</a>
                                    </div>
                                  </div>
                                </div>
                                <div class="col">
                                  <div class="card">
                                    <img src="images/img3.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                      <h5 class="card-title">Card title</h5>
                                      <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                      <a href="#" class="btn btn-primary">Eliminar</a>
                                      <a href="#" class="btn btn-primary">editar</a>                                    </div>
                                  </div>
                                </div>
                                <div class="col">
                                  <div class="card">
                                    <img src="images/img3.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                      <h5 class="card-title">Card title</h5>
                                      <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
                                      <a href="#" class="btn btn-primary">Eliminar</a>
                                      <a href="#" class="btn btn-primary">editar</a>                                    </div>
                                  </div>
                                </div>
                                <div class="col">
                                  <div class="card">
                                    <img src="images/img3.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                      <h5 class="card-title">Card title</h5>
                                      <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                      <a href="#" class="btn btn-primary">Eliminar</a>
                                      <a href="#" class="btn btn-primary">editar</a>                                    </div>
                                  </div>
                                </div>
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
                   
                   
             

                          
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" crossorigin="anonymous"></script>
    </body>
</html>
