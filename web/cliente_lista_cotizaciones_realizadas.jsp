<%-- 
    Document   : cliente_lista_cotizaciones_realizadas
    Created on : 09/07/2019, 11:16:49 AM
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
    <body class="building_version" data-spy="scroll" data-target=".header">
        <div id="preloader">
            <img class="preloader" src="images/loaders/loader-building2.gif" alt="">
        </div>
        <!-- end loader -->
        <!-- END LOADER -->
        <header class="header header_style_01">
            <nav class="megamenu navbar navbar-default" data-spy="affix">
                <div class="top-header">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-hidden">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-hidden">
                                    <div class="gem-contacts-item gem-contacts-phone">
                                    </div>
                                </div>
                                <div class="top-area-block top-area-socials socials-colored-hover">

                                    <div class="socials inline-inside"> 
                                        <a class="socials-item" href="#" target="_blank" title="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                        <a class="socials-item" href="#" target="_blank" title="linkedin"><i class="fa fa-linkedin" aria-hidden="true"></i></a> 
                                        <a class="socials-item" href="#" target="_blank" title="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a> 
                                        <a class="socials-item" href="#" target="_blank" title="instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a> 
                                        <a class="socials-item" href="#" target="_blank" title="pinterest"><i class="fa fa-pinterest" aria-hidden="true"></i></a> 
                                        <a class="socials-item" href="#" target="_blank" title="youtube"><i class="fa fa-youtube" aria-hidden="true"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index.html"><img src="images/logo-icon.png" alt="image"><span>AMEDIDA</span></a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><div class="dropdown">
                                    <button class="btn btn-warning dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Bienvenido <jsp:getProperty name="clienteBean1" property ="usuario" />
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="index.jsp">Inicio</a>
                                        <a class="dropdown-item" href="ServletAccCliente?accion=listarCotizacionPersonal&idCliente=<jsp:getProperty name="clienteBean1" property="id_cliente"/>">Mis cotizaciones</a>
                                        <a class="dropdown-item" href="ServletCarpintero?accion=logout">salir</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>

            </nav>
        </header>
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

                <table class="table  bg-warning text-dark text-center ">
                    <thead>
                        <tr>
                            <th class="text-center"><%= TipoTexto%></th>  
                        </tr>
                    </thead>
                    <tbody>
                    <tr class="card-body">
                        <td>Titulo</td>
                        <td class="card-title"><%= aux.getTitulo()%></td>
                    </tr>
                    <tr>
                        <td>Descripcion</td>
                      <td class="card-text"><%= aux.getDescripcion()%></td>  
                    </tr>
                   
                  
                       <a href="ServletAccCliente?accion=mostrarPropuestas&idPedidoMueble=<%=aux.getId_muebles()%>" class="btn btn-primary">Revisar</a>  
                       
                     
    
                    </tbody>


                </table>
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
