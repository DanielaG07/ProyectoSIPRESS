

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
                  <a href="http://localhost:8080/pbootstrap/actividades.jsp" class="d-block text-light p-3"><i class="icon ion-md-apps mr-2 lead"></i>Tareas activas</a> 
                  <a href="#" class="d-block text-light p-3"><i class="icon ion-md-people mr-2 lead"></i>Usuarios Activos</a>
                  <a href="#" class="d-block text-light p-3"><i class="icon ion-md-stats mr-2 lead"></i>Estadisticas</a>
                  <a href="http://localhost:8080/pbootstrap/Calendario.jsp" class="d-block text-light p-3"><i class="icon ion-md-calendar mr-2 lead"></i>Calendario</a>
                  <a href="#" class="d-block text-light p-3"><i class="icon ion-md-settings mr-2 lead"></i>Configuración de cuenta</a>
              </div>
          </div>
          <div class="w-100">
              <nav class="navbar navbar-dark bg-dark border-bottom">
                 
                  <a style="color:white" ><span></span></a>
                  <div class="dropdown" style="right: 90px;">
                        <a  href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false" class="icon ion-md-people mr-2 lead"></a>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                          <li><a class="dropdown-item" href="index.jsp">Calendario</a></li
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
                                  <h1 class="font-weight-bold mb-0">Bienvenid@ <strong>${Correo} </strong></h1>
                                  <p class="lead text-muted">Revisa la información</p>
                              </div>
                              <div class="col-lg-3 d-flex">
                                  <button class="btn btn-primary w-100 align-self-center">Descargar reporte</button>
                                    
                              </div>
                          </div>
                      </div>
                  </section>
               
              </div>
          </div>
      </div>
      
      
               
    
      
        
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/chart.js@3.3.2/dist/chart.min.js" integrity="sha256-qoN08nWXsFH+S9CtIq99e5yzYHioRHtNB9t2qy1MSmc=" crossorigin="anonymous"></script>
  
          <script>
              var ctx = document.getElementById('myChart').getContext('2d');
              var Chart = new Chart(ctx, {
                  type: 'line',
                  data: {
                      lebels: ['Jenuary', '', '', 'February', 'March', 'April', 'May', 'June'. 'July'],
                      datasets:[{
                              lebel: 'my firts datasets',
                              backgroundColor: 'rgb(255, 99, 123)',
                              borderColor: 'rgb(255, 99, 123)',
                              data: [0, 10, 5, 2, 2o, 30, 45]
                      }]
                  },
                  options:{}
              });
         </script>
  </body>
</html>