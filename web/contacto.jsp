<%-- 
    Document   : contacto
    Created on : 20/05/2021, 06:07:55 PM
    Author     : HP
--%>
<%--
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
   String result = "";
   Properties props = System.getProperties();
   String from = "dannieelagutierrez@gmail.com";
   String pass = "115246680000";
   String[] to = { "lindaandgod@gmail.com" };
   
   String host = "smtp.gmail.com";

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.smtp.ssl.trust", host);
    props.put("mail.smtp.user", from);
    props.put("mail.smtp.password", pass);
    props.put("mail.smtp.port", "587");
    props.put("mail.smtp.auth", "true");


    Session session2 = Session.getDefaultInstance(props);
    MimeMessage message = new MimeMessage(session2);

    try {


        message.setFrom(new InternetAddress(from));
        InternetAddress[] toAddress = new InternetAddress[to.length];

        // To get the array of addresses
        for( int i = 0; i < to.length; i++ ) {
            toAddress[i] = new InternetAddress(to[i]);
        }

        for( int i = 0; i < toAddress.length; i++) {
            message.addRecipient(Message.RecipientType.TO, toAddress[i]);
        }



        message.setSubject("hola");
        message.setText("Hola");


        Transport transport = session2.getTransport("smtp");


        transport.connect(host, from, pass);
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();

    }
    catch (AddressException ae) {
        ae.printStackTrace();
        result = "addr exception";
    }
    catch (MessagingException me) {
        me.printStackTrace();
        result = "msg exception";
    }
%>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <link rel="stylesheet" href="micss/usuarios.css">
           <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
           <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet"> 
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
           <script src="js/script.js"></script>

           <title>Contacto</title>        
    </head>
    <body>
    <div class="w-100">
             
                 <nav class="navbar navbar-dark bg-dark border-bottom">
                     
                     <link href="">
                     
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
        
     <div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="well well-sm">
                <form class="form-horizontal" action="contacto">
                    <fieldset>
                        <legend class="text-center header">Contactanos</legend>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="fname" name="nombre" type="text" placeholder="Nombre" required class="form-control" >
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="lname" name="apellido" type="text" required  placeholder="Apellidos" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="email" name="correo" type="text" required placeholder="Correo" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="phone" name="telefono" type="text" maxlength="10" required placeholder="Telefono" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-pencil-square-o bigicon"></i></span>
                            <div class="col-md-8">
                                <textarea class="form-control" id="message" name="mensaje" required placeholder="Ingrese su mensaje aqui." rows="7"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-12 text-center">
                                <button type="submit" class="btn btn-primary btn-lg" >Enviar</button>
                            </div>
                        </div>
                    
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>
        

  
        
        
            <div id="buttons">
              <div class="facebook button">
                <i class="icon">
                  <i class="fa fa-facebook">
                </i>
              </i>
              <div class="slide">
                <p>
                  facebook
                </p>
              </div>
              <iframe src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Freference%2Fplugins%2Flike&send=false&layout=button_count&width=80&show_faces=false&font&colorscheme=light&action=like&height=20&appId=568581339861351" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:80px; height:20px;" allowTransparency="true">
              </iframe>
              </div>

              

              <div class="google button">
                <i class="icon">
                  <i class="fa fa-google-plus">
                </i>
              </i>
              <div class="slide">
                <p>
                  google+
                </p>
              </div>
              <!-- Place this tag where you want the +1 button to render. -->
              <div class="g-plusone" data-size="medium">
              </div>

              <!-- Place this tag after the last +1 button tag. -->
              <script type="text/javascript">
                (function() {
                  var po = document.createElement('script');
                  po.type = 'text/javascript';
                  po.async = true;
                  po.src = 'https://apis.google.com/js/plusone.js';
                  var s = document.getElementsByTagName('script')[0];
                  s.parentNode.insertBefore(po, s);
                }
                )();
              </script>
              </div>
            </div>


       

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/sharer.js/latest/sharer.min.js"></script>
    </body>
</html>
