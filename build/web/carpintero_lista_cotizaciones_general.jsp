<%-- 
    Document   : carpintero_lista_cotizaciones_general
    Created on : 08/07/2019, 07:57:34 PM
    Author     : Rafael Livise
--%>

<%@page import="Bean.PedidoMuebleDTO"%>
<%@page import="Bean.ClienteDTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@ include file="master_head_1.jsp" %> 
    </head>
    <body class="building_version" data-spy="scroll" data-target=".header">

        <%@ include file="carpintero_nav_principal.jsp" %> 
        
        
        <div id="home" class="parallax first-section" data-stellar-background-ratio="0.4" style="background-image:url('images/fondo.jpg'); padding: 9em 0 !important;">
             <div class="container ">
                    <div class="row">
                        <div class="col-md-12" style="text-align:center;padding: 3em;">
                            <button class="button-coti" ><a href="ServletAccCarpintero?accion=listarCotizacionesGeneral"  >General</a></button>
                            <button class="button-coti"><a href="ServletAccCarpintero?accion=listarCotizacionesTipo&tipo=1" >Mesas</a></button>
                            <button class="button-coti"><a href="ServletAccCarpintero?accion=listarCotizacionesTipo&tipo=2">Roperos</a></button>
                            <button class="button-coti"><a href="ServletAccCarpintero?accion=listarCotizacionesTipo&tipo=3" >Sillas</a></button>
                            <button class="button-coti"><a href="ServletAccCarpintero?accion=listarCotizacionesTipo&tipo=4">Sofas</a></button>
                            
                        </div>
                        
                    </div>
                </div>
          
          
          
                <div class="container">

                    <%
                        List<PedidoMuebleDTO> ped = (List<PedidoMuebleDTO>) request.getAttribute("cotizaciones");
                        if (ped != null) {
                            for (PedidoMuebleDTO aux : ped) {

                                String TipoTexto = "";

                                switch (aux.getTipo()) {

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

                    <div class="row">
                        <div class="col-md-2" ></div>
                        <div class="col-md-8">
                            <table class="table bg-warning text-dark text-center border-table ">
                                <thead class="border-table">
                                    <tr class="border-table" >
                                        <th class="text-center text-uppercase border-table" colspan="2"><h3><%= TipoTexto%></h3></th>  
                                    </tr>
                                </thead>
                                <tbody class="border-table">
                                    <tr class="text-justify p-2 ">

                                        <td class="text-capitalize p-2 ">
                                            <h3><b><%= aux.getTitulo()%></b></h3>
                                            <h4><%= aux.getDescripcion()%></h4>
                                        </td>
                                        <td class="text-capitalize p-2 " width="150">
                                            <%
                                                if (aux.getImagen11()!= null) {
                                            %>
                                            <img src="ServletImagen?id=<%= aux.getId_mueble()%>&num=1" width="150">
                                            <%
                                                } else {
                                                    out.print("No disponible");
                                                }
                                            %>
                                        </td>

                                    </tr>

                                    <tr class="text-justify ">
                                        <td class="text-right" colspan="2">
                                            <a href="ServletAccCarpintero?accion=mostrarCotizacionEspecifico&ID=<%=aux.getId_mueble()%>" class="btn btn-primary">Proponer</a>
                                        </td>
                                    </tr>


                                </tbody>


                            </table>
                        </div>
                    </div>
                    


                    <%      }
                        }%>	  
                </div>
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
