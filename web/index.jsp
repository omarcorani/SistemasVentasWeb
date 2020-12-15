<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>lOGIN</title>
        <style>
            *{
               margin:0px;
               padding: 0px;
            }
            body{
                background: url(./img/am.jpg);
            }
           
            .entrada{
                width: 320px;
                height: 35px;
                border-radius: 6px;
                font-family: verdana;
                font-weight: 900;
                
            }
            #cuadro{
                position: relative;
                max-width: 500px;
                padding: 40px;
                background: rgba(255,255,255,.2);
                box-shadow: 0 5px 15px rgba(0,0,0,.5);
            }
            #boton{
                width: 305px;
                height: 45px;
                border-radius: 6px;
                background: cadetblue;
                color: #ffffff;
                font-size: 15px;
            }
            #titulo{
                color: white;
                font-size: 25px;
                font-family: sans-serif;
                
            }
            #subtitulo1{
                
                color: white;
                padding-left: 120px; 
                
            }
            #subtitulo2{
                
                color: white;
                padding-left: 105px;
            }
            
        </style>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div id="cuadro" class="card col-sm-10">
                <div class="card-body">
                    <form autocomplete="on" class="form-sign" action="Validar" method="POST">
                        <div class="form-group text-center">
                            <h3 id="titulo">INICIAR SESIÓN</h3>
                            <img src="img/i.png" alt="50" width="150"/><br>
                            <label style="color: white;">BIENVENIDOS A LA TIENDA VIRTUAL</label>
                        </div>
                        <div id="entrada" class="form-group">
                            <label for="txtuser"id="subtitulo1">USUARIO:</label>
                            <input id="txtuser"type="text" name="txtuser" style="background: rgba(255,255,255,.2); color: white;" class="form-control">
                        </div>
                        <div id="entrada" class="form-group">
                            <label for="password"id="subtitulo2">CONTRASEÑA:</label>
                            <input id="password"type="password" name="txtpass" style="background: rgba(255,255,255,.2); color: white;" class="form-control">
                        </div>
                        <input id="boton" type="submit" name="accion" value="Ingresar" class="btn btn-primary btn-block" >
                    </form>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>