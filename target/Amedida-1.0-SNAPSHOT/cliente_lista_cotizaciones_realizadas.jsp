<%-- 
    Document   : cliente_lista_cotizaciones_realizadas
    Created on : 09/07/2019, 11:16:49 AM
    Author     : Rafael Livise
--%>

<%@page import="com.amedida.Bean.PedidoMuebleDTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@ include file="master_head_1.jsp" %> 
        <%@ include file="cliente_verificacion_sesion.jsp" %> 
    </head>
    <body class="building_version" data-spy="scroll" data-target=".header">
        <%@ include file="cliente_nav_principal.jsp" %> 
        <div id="home" class="parallax first-section" data-stellar-background-ratio="0.4" style="background-image:url('images/fondo.jpg');">
            <div class="container">
                <%
                    List<PedidoMuebleDTO> ped = (List<PedidoMuebleDTO>) request.getAttribute("listaPedidosPersonal");
                    if (ped != null) {
                        for (PedidoMuebleDTO aux : ped) {

                            String TipoTexto = "";

                            switch (aux.getTipo()) {

                                case 1:
                                    TipoTexto = "mesa";
                                    break;
                                case 2:
                                    TipoTexto = "sofa";
                                    break;
                                case 3:
                                    TipoTexto = "ropero";
                                    break;
                                case 4:
                                    TipoTexto = "silla";
                                    break;
                                default:
                                    TipoTexto = "no tiene selecion";
                            }


                %>	  

                <div class="row">
                    <div class="col-md-2" ></div>
                    <div class="col-md-8">
                        <table class="table bg-warning text-dark text-center border-table ">
                            <thead class="border-table">
                                <tr class="border-table">
                                    <th class="text-center text-uppercase border-table"><h3><%= TipoTexto%></h3></th>  
                                </tr>
                            </thead>
                            <tbody class="border-table">
                                <tr class="text-justify p-2 ">
                                    
                                    <td class="text-capitalize p-2 ">
                                        <h3><b><%= aux.getTitulo()%></b></h3>
                                        <h4><%= aux.getDescripcion()%></h4>
                                    </td>
                                    
                                </tr>

                                <tr class="text-justify ">
                                    <td class="text-right">
                                    <a href="ServletAccCliente?accion=mostrarPropuestas&idPedidoMueble=<%=aux.getId_mueble()%>" class="btn btn-primary">Revisar</a>  
                                    </td>
                                </tr>


                            </tbody>


                        </table>
                    </div>
                </div>
                
                
                </br>
                <%      }
            }%>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>


        <!--fin modelboostrap--> 


        <!--fin modelboostrap--> 


        <!--fin modelboostrap-->


        <!--fin modelboostrap-->


        <!--fin modelboostrap-->


        <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
        <!-- ALL JS FILES -->
        <script src="js/all.js"></script>
        <!-- ALL PLUGINS -->
        <script src="js/custom.js"></script>
        <script src="js/portfolio.js"></script>
        <script src="js/hoverdir.js"></script> 


    </body>
</html>
