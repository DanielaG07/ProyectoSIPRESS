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
    <link rel="stylesheet" type="text/css" href="">
    
 

    <title>SIPRESS</title>
  </head>
  
      <header>
        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
            <div class="container-fluid" style="color: #f1f1f1" >
              <a class="nav-link active"><strong>SIPRESS</strong></a>
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
                          <h1 class="text-light">INICIAR SESIÓN</h1>
                      </div>
                      <div class="form-group mx-sm-4 pt-3 pb-3">
                          <input type="email" class="form-control" name="txtcorreo" placeholder="Ingrese correo">
                      </div>
                      <div class="form-group mx-sm-4 pb-3">
                          <input type="password" class="form-control" name="txtcontrasena" placeholder="Ingrese su contraseña">
                      </div>
                      <div class="form-group mx-sm-4 pb-2" >
                          <div style="background-color: whitesmoke" >
                          <input type="submit" name="accion" class="btn btn-block Ingresar" value="Ingresar">
                      </div>
                          </div>
                      
           
                      <div class="form-group mx-sm-4 pt-2 pb-3 text-right">
                          <span class=""><a href="#" class="olvide">Olvide mi contraseña</a></span>
                      </div>
                      <div class="form-group mx-sm-4  pb-3 text-center">
                          <span><a  href="#openModal" class="olvide1">Registrarse</a></span>
                      </div>
                      </div>
               </div>
          </div>
      </form> 
                    <div id="openModal" class="modalDialog">
                    <div>
                        <a href="#close" title="Close" class="close">X</a>
                        
                     <form id="formulario" name="formulario" method="" action="registeruser"> 
                        <h4>Formulario de Registro</h4>
                            <label for="nombre"><input name="Nombre" class="controls" type="text" placeholder="Nombre completo" size= "30" max="12" />
                        </label><br>
                            <label for="correo"><input name="Correo" class="controls" type="email" id="correo" placeholder="Ingrese correo" size="30" max="12"/>
                            </label><br>
                            <label for="contraseña"><input class="controls"  name="Contrasena" id="Contrasena"  type="password"  placeholder="Ingrese contraseña" size="30" max="12"/></label><br>
                            <label for="telefono"><input name="Telefono" class="controls" type="text" pattern="[0-9]+" placeholder="Numero Movil" size= "30" max="12" />
                      </label><br>

                      <p>     
                            <select class="usuario" name="Tusuario">   
                            <option>Tipo de Usuario</option>
                            <option value="Docente">Docente</option>
                            <option value="Aprendiz">Aprendiz</option>
                          </select>
                      </p>
                      <p>      
                        <select name="ciudad" class="ciudad">
                          <option placeholder="">Seleccione ciudad</option>
                          <option value="medellin">Medellín</option>
                            <option value="bogota">Bogotá</option>
                            <option value="barranquilla">Barranquilla</option>
                            <option value="cali">Cali</option>
                          </select>
                      </p>
                      
                    <p><input type="checkbox" name="terminos" > Estoy de acurdo con <a href="">terminos y condiciones</a></p>
                    <input type="submit" class="botons"  name="" value="Registrarse">
                    </form> 
                    </div>
                    </div> 
                        
                        
                  <script type="text/javascript">
                  (function(){
                    var formulario= document.getElementsByName("formulario")[0];
                    var elementos = formulario.elements;
                    var boton = document.getElementsByName("Registrarse");

                    var validarNombre=function(e){
                      if (formulario.nombre.value == 0){
                        alert("Debe ingresar el nombre");
                        e.preventDefault(e);
                      }
                    };
                    var ValidarContraseña=function(e){
                      if(formulario.contraseña.value == 0){
                        alert("Ingrese la contraseña");
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
                      ValidarContraseña(e);
                      validarTelefono(e);
                    };
                    formulario.addEventListener("submit", validar);
                    }())

                  </script>
           
              <footer class="text-center text-white" style="background-color: #f1f1f1;">
            
              <!-- Grid container -->

              <!-- Copyright -->
              <div class="text-center text-dark p-3" style="background-color: rgba(0, 0, 0, 0.2); height: 40px;">
                ? 2020 Copyright:
                <a class="text-dark" href="https://mdbootstrap.com/">MDBootstrap.com</a>
              </div>
              <!-- Copyright -->
            </footer>
   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="./js/bootstrap.min.js"></script> 
    </body> 
</html>
