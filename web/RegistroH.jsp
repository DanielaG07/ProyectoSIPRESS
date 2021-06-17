

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@200;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="micss/usuarios.css">
           <title>RegistroH</title>        
    </head>
    <body>
        <div>
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
                             <li><a class="dropdown-item" href="index.jsp">Salir</a></li>
                           </ul>
                         </div>
                 </nav>    
    </div>
        
        
        <section class="py-3">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9">
                            <div class="input-group mb-3">
                              <span class="input-group-text" id="basic-addon1">fecha</span>
                              <input type="text" class="form-control" placeholder="mm/dd/aa" aria-label="Username" aria-describedby="basic-addon1">
                            </div>
                            
                            <select class="form-select" aria-label="Default select example">
                                
                                <option selected>Horas laboradas</option>
                                <option value="1"> 1 </option>
                                <option value="2"> 2 </option>
                                <option value="3"> 3 </option>
                                <option value="3"> 4 </option>
                                <option value="3"> 5 </option>


                              </select>
                            
                          <div class="input-group">
                              <span class="input-group-text">Observaciones</span>
                              <textarea class="form-control" aria-label="With textarea"></textarea>
                            </div>
                            
                            
                            <div class="col-auto">
                                <button type="submit" class="btn btn-primary">Registrar</button>
                             </div>
                            </div>
                                </div>
                                   </div>  
                            </section>
    
        <section class="py-5" >
                <div class="container">
                        <div class="col-lg-3 d-flex">
                            <button class="btn btn-primary w-100 align-self-center">Descargar reporte</button>
                        </div>
                        </div>
                    </div>
                </div>
        </section>
        
        <section class="py-3">
         <div class="container">
                    <div class="row">
                    <div class="col-lg-9">
            <label for="exampleDataList" class="form-label">Buscar</label>
                    <input class="form-control" list="datalistOptions" id="exampleDataList" placeholder="Type to search...">
                    <datalist id="datalistOptions">
                      <option value="San Francisco">
                      <option value="New York">
                      <option value="Seattle">
                      <option value="Los Angeles">
                      <option value="Chicago">
                    </datalist>
                    </div>
                    </div>
         </section>
        
                <section class="py-3">
                   <div class="container">
                
                <table class="table">
                        <thead>
                          <tr>
                            <th scope="col">#</th>
                            <th scope="col">FECHA</th>
                            <th scope="col">HOTAS LABORADAS</th>
                            <th scope="col">OBSERVACIONES</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                          </tr>
                          <tr>
                            <th scope="row">2</th>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                          </tr>
                          <tr>
                            <th scope="row">3</th>
                            <td colspan="2">Larry the Bird</td>
                            <td>@twitter</td>
                          </tr>
                           <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                          </tr>
                           <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                          </tr>
                           <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                          </tr>
                           <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                          </tr>
                          
                        
                        </tbody>

                    </table>
                        <div class="progress">
              <div class="progress-bar" role="progressbar" style="width: 25%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
            </div>
                </div>
                </section>
            </div>
        
           


        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" crossorigin="anonymous"></script>
 </body>
</html>
