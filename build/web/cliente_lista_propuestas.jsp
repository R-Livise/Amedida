<%-- 
    Document   : cliente_lista_propuestas
    Created on : 09/07/2019, 11:54:36 AM
    Author     : Rafael Livise
--%>

<%@page import="Bean.PropuestaCarpinteroDTO"%>
<%@page import="java.util.List"%>
<%@page import="Bean.PedidoMuebleDTO"%>
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
                    PedidoMuebleDTO ped = (PedidoMuebleDTO)request.getAttribute("pedidoMueble");
                    
                        String TipoTexto = "";
                            
                            switch(ped.getTipo()){
                                
                                case 1:
                                    TipoTexto = "Mesa";
                                    break;
                                case 2:
                                    TipoTexto = "Sofa";
                                    break;
                                case 3:
                                    TipoTexto = "Ropero";
                                    break;
                                case 4:
                                    TipoTexto = "Silla";
                                    break;
                                default:
                                    TipoTexto = "no tiene selecion";
                            }
                                                       
                                                           
		%>	  

                        <table class="table  bg-warning text-dark text-center " >
                            <thead>
                            <tr>
                            <th class="text-center"><%= TipoTexto%></th>
                            </tr>
                            
                             </thead>
                             <tbody>
                                 <tr class="card-body">
                                     <td>Titulo</td>
                                <td class="card-title"><%= ped.getTitulo()%></td>
                                 </tr>
                                 <tr>
                                     <td>Descripcion</td>
                                <td class="card-text"><%= ped.getDescripcion()%></td>
                                </tr>
                             </tbody>
                            
                           
                        </table>
                        </br>
		<%  
                     	
                    List<PropuestaCarpinteroDTO> pro = (List<PropuestaCarpinteroDTO>)request.getAttribute("listaPropuestas");
                    
                    if(pro!= null && pro.size()!=0)
                    {
                %>
                  <table class="table  bg-warning text-dark text-center ">
                        <tr>
                            <th>Carpintero</th><th>Precio</th><th>Estrellas</th><th>Recomedacions</th><th>Mesaje</th><th colspan="2">Acciones</th>
                        </tr>
                <%
                        for(PropuestaCarpinteroDTO aux: pro){
                %>
                
                        <tr>
                                        <td>aux.Carpintero</td>
                                        <td><%= aux.getPrecio()%></td>
                                        <td>NEstrellas </td>
                                        <td>recomedaciones</td>
                                        <td><%= aux.getMensaje()%></td>
                                        <td colspan="2" align="center">
                                            <a href="ServletCliente?accion=buscar&ID=">
                                            <img alt="Responder" title="Responder" src="images\edit.jpg" width="30px" height="30px"></a>
                                            <br>
                                            <a href="ServletCliente?accion=eliminar&ID=">
                                            <img alt="Ver Perfil" title="Ver Perfil" src="images\delete.jpg"  width="30px" height="30px"></a>
                                        </td>
                                
                                </tr>
                  </table>
                
		<%      
                        }
                    }

                    if(pro.size()==0){
        
                %>
                <h1>No tiene propuestas por ahora.</h1> 
		<%      
                    }
                    
                %>
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
