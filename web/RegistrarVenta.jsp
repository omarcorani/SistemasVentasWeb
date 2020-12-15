<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>VENTAS</title>
        <style>
            @media print{
                .parte01,img, .btn, .accion{
                    display: none;
                }
            }
            *{
               margin:0px;
               padding: 0px;
            }
            #cuadro{
                position: relative;
                max-width: 900px;
                padding: 45px;
                background: rgba(255,255,255,.2);
                box-shadow: 0 5px 15px rgba(0,0,0,.5);
            }
            #cuadra{
                position: relative;
                max-width: 900px;
                padding: 45px;
                background: rgba(255,255,255,.2);
                box-shadow: 0 5px 15px rgba(0,0,0,.5);
            }
            #cuadrx{
                position: relative;
                max-width: 800px;
                padding: 10px;
                background: rgba(255,255,255,.2);
                box-shadow: 0 5px 15px rgba(0,0,0,.5);
            }
        </style>
       
    </head>
    <body>
        <div class="d-flex">
            <div class="col-lg-5 parte01">
                <div id="cuadro" class="card">
                    <form  autocomplete="off" action="Controlador?menu=NuevaVenta" method="POST">
                        <div class="card-body">
                            <!--DATOS DEL PRODUCTO-->
                            <div class="form-group">
                                <label>Datos del Cliente</label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="codigocliente" value="${c.getDni()}" class="form-control" placeholder="Codigo">
                                    <button type="submit" name="accion" value="BuscarCliente" class="btn btn-outline-info"><img src="img/buscar.png" alt=""/> Buscar</button>
                                </div>                           
                                <div class="col-sm-7">
                                    <input type="text" name="nombrescliente" value="${c.getNom()}" placeholder="Datos Cliente" class="form-control">
                                </div>                           
                            </div>
                            <!--DATOS DEL PRODUCTO-->
                            <div class="form-group">
                                <label>Datos Producto</label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="codigoproducto" value="${producto.getId()}" class="form-control" placeholder="Codigo">
                                    <button type="submit" name="accion" value="BuscarProducto" class="btn btn-outline-info"><img src="img/buscar.png" alt=""/>Buscar</button>
                                </div>                           
                                <div class="col-sm-7">
                                    <input type="text" name="nomproducto" value="${producto.getNom()}" placeholder="Datos Producto" class="form-control">
                                </div>  
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="precio" value="${producto.getPre()}" class="form-control" placeholder="S/.0.00">                                
                                </div>                           
                                <div class="col-sm-3">
                                    <input type="number" value="1" name="cant" placeholder="" class="form-control">
                                </div>  
                                <div class="col-sm-3">
                                    <input type="text" name="stock" value="${producto.getStock()}" placeholder="Stock" class="form-control">
                                </div>  
                            </div>
                            <!--BOTON AGREGAR PRODUCTO AL REGISTRO-->
                            <div class="form-group"><br>
                                <div class="form-group text-center">
                                    <button type="submit" name="accion" value="Agregar" class="btn btn-outline-info">Agregar Producto</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-sm-7">
                <div class="card parte02">                    
                    <div class="card-body">
                        <div class="d-flex ml-auto col-sm-5">
                            <label class="text-right mt-2 col-sm-6">NRO. SERIE</label>
                            <input readonly="" type="text" name="numeroserie" class="form-control text-center" readonly disabled value="${nserie}" style="font-weight: bold;font-size: 18px;">
                        </div>                      
                        <br>
                        <table  id="cuadra" class="table table-hover text-center">
                            <thead>
                                <tr class="text-center">
                                    <th>N°</th>
                                    <th>ID</th>
                                    <th>PRODUCTO</th>
                                    <th>PRECIO</th>
                                    <th>CANTIDAD</th>
                                    <th>SUBTOTAL</th>                                    
                                    <th class="accion">ACCION</th>                                    
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="list" items="${lista}">
                                    <tr class="text-center">
                                        <td>${list.getItem()}</td>
                                        <td>${list.getIdproducto()}</td>
                                        <td>${list.getDescripcionP()}</td>
                                        <td>${list.getPrecio()}</td>
                                        <td>${list.getCantidad()}</td>
                                        <td>${list.getSubtotal()}</td>
                                        <td class="d-flex">
                                            
                                            <a href="#" class="btn btn-outline-light" style="margin-left: 5px"><img src="img/Eliminar.png" alt=""/></a>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer" >
                        <div class="row">
                            <div class="col-sm-6">
                                <a href="Controlador?menu=NuevaVenta&accion=GenerarVenta" onclick="print()" class="btn btn-info">Generar Venta</a>
                                <a href="Controlador?menu=NuevaVenta&accion=default" class="btn btn-danger">Cancelar</a>
                            </div>
                            <div class="col-sm-3 ml-auto text-center ">                                
                                <label >Total a Pagar</label>                                                       
                                <input type="text" name="txtTotal" value="S/.${totalpagar}0"  readonly disabled class="form-control text-center font-weight-bold" style="font-size: 18px;">
                            </div>
                        </div>                        
                    </div>
                </div>

            </div>
        </div>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
