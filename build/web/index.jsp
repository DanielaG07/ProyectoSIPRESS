<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Mi estilos CSS -->
    <link rel="stylesheet" href="micss/estilos.css">
    <link rel="stylesheet" type="text/css" href="css2/formularioregister.css">
    
 

    <title>SIPRESS</title>
  </head>
  
      <header>
        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
          <div class="container-fluid">
            <img src="images/logo1.jpg " class="navbar-bran">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
              <ul class="navbar-nav me-auto mb-2 mb-md-0">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#">Sobre Nosotros</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="http://localhost:8080/pbootstrap/contacto.jsp">Contactenos</a>
                </li>
              </ul>
              <form class="d-flex"> 
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
              </form>
            </div>
          </div>
        </nav>
      </header>
  
  

  <body>

      <div class="" style="z-index: 0!important; position:fixed;">
          <div class="row">
              <div class="col-sm-12">
                  <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        
                      <div class="carousel-item active">
                          <img src="images/img.jpg" class="d-block w-100" alt="..." width="660" height="600">
                      </div>
                      <div class="carousel-item">
                        <img src="images/img2.png" class="d-block w-100" alt="..." width="660" height="600">
                      </div>
                      <div class="carousel-item">
                        <img src="images/img1.jpg" class="d-block w-100" alt="..." width="660" height="600">
                      </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                      <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                      <span class="visually-hidden">Next</span>
                    </button>
                  </div>
              </div>
          </div>
      </div>
      
      <div class="container">
          <div class="row justify-content-center pt-5 mt-5 mr-1">
              <div class="col-md-4 login">
                  <form action="controller">
                      <div class="form-group text-center">
                          <h1 class="text-light">INICIAR SESI�N</h1>
                      </div>
                      <div class="form-group mx-sm-4 pt-3 pb-3">
                          <input type="email" class="form-control" name="txtcorreo" placeholder="Ingrese correo">
                      </div>
                      <div class="form-group mx-sm-4 pb-3">
                          <input type="password" class="form-control" name="txtcontrase�a" placeholder="Ingrese su Contrase�a">
                      </div>
                      <div class="form-group mx-sm-4 pb-2">
                          <input type="submit" name="accion" class="btn btn-block Ingresar" value="Ingresar">
                      </div>
                  </form> 
                      <div class="form-group mx-sm-4 pt-2 pb-3 text-right">
                          <span class=""><a href="#" class="olvide">Olvide mi contrase�a</a></span>
                      </div>
                      <div class="form-group mx-sm-4  pb-3 text-center">
                          <span><a  href="#openModal" class="olvide1">Registrarse</a></span>
                      </div>
                      </div>
               </div>
          </div>
                    <div id="openModal" class="modalDialog">
                    <div>
                        <a href="#close" title="Close" class="close">X</a>
                        
                     <form id="formulario" name="formulario" method="post" action="usuarios.jsp">
                        <h4>Formulario de Registro</h4>
                            <label for="nombre"><input name="nombre" class="controls" type="text" placeholder="Nombre completo" size= "30" max="12" />
                        </label><br>
                            <label for="correo"><input name="correo" class="controls" type="email" id="correo" placeholder="Ingrese correo" size="30" max="12"/>
                            </label><br>
                            <label for="contrase�a"><input class="controls" id="contrase�a" type="password" id="contrase�a" placeholder="Ingrese contrase�a" size="30" max="12"/></label><br>
                            <label for="telefono"><input name="telefono" class="controls" type="text" pattern="[0-9]+" placeholder="Numero Movil" size= "30" max="12" />
                      </label><br>

                      <p>     
                          <select class="usuario" name="usuario">   
                            <option>Tipo de Usuario</option>
                            <option value="Docente">Docente</option>
                            <option value="Aprendiz">Aprendiz</option>
                          </select>
                      </p>
                      <p>      
                        <select name="ciudad" class="ciudad">
                          <option placeholder="">Seleccione ciudad</option>
                          <option value="Medellin">Medell�n</option>
                            <option value="Bogot�">Bogot�</option>
                            <option value="Barranquilla">Barranquilla</option>
                            <option value="Cali">Cali</option>
                          </select>
                      </p>
                    <p><input type="checkbox" name="terminos" > Estoy de acurdo con <a href="">terminos y condiciones</a></p>
                    <input type="submit" class="botons" name="btn" value="Registrarse">
                     

                  <script type="text/javascript">
                  (function(){
                    var formulario= document.getElementsByName("formulario")[0];
                    var elementos = formulario.elements;
                    var boton = document.getElementsByName("Registrar");

                    var validarNombre=function(e){
                      if (formulario.nombre.value == 0){
                        alert("Debe ingresar el nombre");
                        e.preventDefault(e);
                      }
                    };
                    var ValidarContrase�a=function(e){
                      if(formulario.contrase�a.value == 0){
                        alert("Ingrese la contrase�a");
                            e.preventDefault(e);
                      }
                    };
                    var validarCorreo=function(e){
                      if(formulario.correo.value == 0){
                        alert("Ingrese el correo");
                        e.preventDefault(e);

                      }
                    };
                    var validarTelefono=function(e){
                      if(formulario.telefono.value == 0){
                        alert("Ingrese el telefono");
                        e.preventDefault(e);

                      }
                    };

                    var validarTerminos =function(){
                      if(formulario.terminos.checked==false){
                        alert("Debe aceptar terminos y condiciones");
                        e.preventDefault(e);
                      }
                    }
                    var validar = function(e){
                      validarNombre(e);
                      validarTerminos(e);
                      validarCorreo(e);
                      ValidarContrase�a(e);
                      validarTelefono(e);
                    };
                    formulario.addEventListener("submit", validar);
                    }())

                  </script>
                    </div>
                    </div>
      </

             
      

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
   
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="./js/bootstrap.min.js"></script> 
    </body>
</html>
