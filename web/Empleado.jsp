<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Empleado</title>
        <style>
            *{
               margin:0px;
               padding: 0px;
            }
            #cuadro{
                position: relative;
                max-width: 800px;
                padding: 45px;
                background: rgba(255,255,255,.2);
                box-shadow: 0 5px 15px rgba(0,0,0,.5);
            }
            #cuadra{
                position: relative;
                max-width: 870px;
                padding: 45px;
                background: rgba(255,255,255,.2);
                box-shadow: 0 5px 15px rgba(0,0,0,.5);
            }
            
        </style>
    </head>
    <body> 
        <div style="font-size: 25px; font-family: sans-serif;" class="d-flex col-sm-5 ml-auto"><h1>Empleados</h1></div>
        <div class="d-flex">
            <div class="col-sm-4">
                <div class="card">
                    <div id="cuadro" class="card-body">
                        <form autocomplete="off" action="Controlador?menu=Empleado" method="POST">
                            <div class="form-group">
                                <label for="dn">Ci</label>
                                <input id="dn" type="text" value="${empleado.getDni()}" name="txtDni" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="n">Nombres</label>
                                <input id="n"type="text" value="${empleado.getNom()}" name="txtNombres" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="e">Telefono</label>
                                <input id="e" type="text" value="${empleado.getTel()}" name="txtTel" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="es">Estado</label>
                                <input id="es"type="text" value="${empleado.getEstado()}" name="txtEstado" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="u">Usuario</label>
                                <input id="u" type="text" value="${empleado.getUser()}" name="txtUser" class="form-control">
                            </div>
                            <input type="submit" name="accion" value="Agregar" class="btn btn-primary">
                            <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                        </form>
                    </div>                         
                </div>
            </div>                     
            <div class="col-sm-8">
                <div class="card">
                    <div class="card-body">
                        <table id="cuadra" class="table table-hover text-center">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>CI</th>
                                    <th>NOMBRES</th>
                                    <th>TELEFONO</th>
                                    <th>ESTADO</th>
                                    <th>USER</th>
                                    <th>ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody> 
                                <c:forEach var="em" items="${empleados}">
                                    <tr>
                                        <td>${em.getId()}</td>
                                        <td>${em.getDni()}</td>
                                        <td>${em.getNom()}</td>
                                        <td>${em.getTel()}</td>
                                        <td>${em.getEstado()}</td>
                                        <td>${em.getUser()}</td>
                                        <td>
                                            <a class="btn btn-outline-light" href="Controlador?menu=Empleado&accion=Editar&id=${em.getId()}"><img src="img/editar1.png" alt="" width=""/></a>
                                            <a class="btn btn-outline-light" href="Controlador?menu=Empleado&accion=Delete&id=${em.getId()}"><img src="img/Eliminar.png" alt=""/></a>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>      
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
