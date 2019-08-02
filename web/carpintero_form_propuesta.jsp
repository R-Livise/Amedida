<%-- 
    Document   : carpintero_form_propuesta
    Created on : 08/07/2019, 06:20:14 PM
    Author     : Rafael Livise
--%>

<%@page import="Bean.PedidoMuebleDTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@ include file="master_head_1.jsp" %> 
    </head>
    <body>
        <%@ include file="carpintero_verificacion_sesion.jsp" %> 

        <%            
            PedidoMuebleDTO pedido = (PedidoMuebleDTO)request.getAttribute("cotizacion");
            
                    String TipoTexto = "";

                                switch (pedido.getTipo()) {

                                    case 1:
                                        TipoTexto = "mesa";
                                        break;
                                    case 2:
                                        TipoTexto = "ropero";
                                        break;
                                    case 3:
                                        TipoTexto = "silla";
                                        break;
                                    case 4:
                                        TipoTexto = "sofa";
                                        break;
                                    default:
                                        TipoTexto = "no tiene selecion";
                                }
        %>

    <body class="building_version" data-spy="scroll" data-target=".header">

        <%@ include file="carpintero_nav_principal.jsp" %> 
        <div id="home" class="parallax first-section" data-stellar-background-ratio="0.4" style="background-image:url('images/fondo.jpg');">
           
                
                <div class="container">
                    
                    <div class="row">
                        <div class="col-md-1" ></div>
                        <div class="col-md-5">
                            <table class="table bg-warning text-dark text-center border-table ">
                                <thead class="border-table">
                                    <tr class="border-table" >
                                        <th class="text-center text-uppercase border-table" colspan="2">
                                            <h3><b><%=TipoTexto%></b></h3>
                                        </th>  
                                    </tr>
                                </thead>
                                <tbody class="border-table">
                                    <tr class="text-justify p-2 " >

                                        <td class="text-capitalize p-2" colspan="2">
                                            <h3><b><%= pedido.getTitulo()%></b></h3>
                                            <h4><%= pedido.getDescripcion()%></h4>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-capitalize p-2 " width="150">
                                            <%
                                                if (pedido.getImagen11()!= null) {
                                            %>
                                            <button type="button" data-toggle="modal" data-target="#modalImagen1" title="imagen 1">
                                                <img src="ServletImagen?id=<%= pedido.getId_mueble()%>&num=1" width="150">
                                            </button>
                                            <%
                                                } else {
                                                    out.print("No disponible");
                                                }
                                            %>
                                        </td>
                                        <td class="text-capitalize p-2 " width="150">
                                            <%
                                                if (pedido.getImagen22()!= null) {
                                            %>
                                            <button type="button" data-toggle="modal" data-target="#modalImagen2" title="iniciar sección">
                                                <img src="ServletImagen?id=<%= pedido.getId_mueble()%>&num=2" width="150">
                                            </button>
                                            <%
                                                } else {
                                                    out.print("No disponible");
                                                }
                                            %>
                                        </td>
                                    </tr>
                                    

                                    


                                </tbody>


                            </table>
                        </div>
                    
                        <div class="col-md-5">
                    
                            <form class="col" action="ServletAccCarpintero">
                                <div class="form-group" style="color:white">
                                    <label for="exampleInputEmail1">Precio</label>
                                    <input type="text"  name="precio" class="form-control" id="precio" aria-describedby="emailHelp" placeholder="Ingrese el precio">
                                </div>
                                <div class="form-group"style="color:white">
                                    <label for="exampleInputPassword1">Mensaje</label>
                                    <textarea type="text" name="mensaje" class="form-control" id="exampleInputPassword1" placeholder="ingrese el lo que desea enviar al cliente">
                                    </textarea>                       
                                </div>
                                <input type="hidden" name="accion" value="proponer">
                                <button type="submit" class="btn btn-warning">Enviar Propuesta</button>
                                <input type="hidden" name="ID_pedido" value="<%=pedido.getId_mueble()%>">
                                <input type="hidden" name="ID_cliente" value="<%=pedido.getCliente().getId_cliente()%>">
                                <input type="hidden" name="ID_carpintero" value="<jsp:getProperty name="carpinteroBean1" property ="id_cliente" />">
                            </form>           
                
                        </div>
                    </div>
                </div>            
            </div>            <!-- end row -->
        </div>
        <!-- end container -->

<div class="modal fade" id="modalImagen1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>                
            </div>
            
            <div class="modal-body">
                <%
                                            if (pedido.getImagen11()!= null) {
                                        %>
                                        <img src="ServletImagen?id=<%= pedido.getId_mueble()%>&num=1" width="100%">
                                        
                                        <%
                                            } else {
                                                out.print("No disponible");
                                            }
                                        %>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
            </div>
            
        </div>
    </div>
</div>

<div class="modal fade" id="modalImagen2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>                
            </div>
            
            <div class="modal-body">
                <%
                                            if (pedido.getImagen11()!= null) {
                                        %>
                                        <img src="ServletImagen?id=<%= pedido.getId_mueble()%>&num=2" width="100%">
                                        
                                        <%
                                            } else {
                                                out.print("No disponible");
                                            }
                                        %>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
            </div>
            
        </div>
    </div>
</div>


        <!--fin modelboostrap-->


        <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
        <!-- ALL JS FILES -->
        <%@ include file="master_script_1.jsp" %> 

    </body>
</html>
