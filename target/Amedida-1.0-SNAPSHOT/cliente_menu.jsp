<%-- 
    Document   : cliente_menu
    Created on : 29/06/2019, 12:17:31 AM
    Author     : Rafael Livise
--%>

<%@page import="com.amedida.Bean.ClienteDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cliente_menu</title>
        <%@ include file="master_head_1.jsp" %> 
        <%@ include file="cliente_verificacion_sesion.jsp" %> 
    </head>
    <body class="building_version" data-spy="scroll" data-target=".header">
        <%@ include file="cliente_nav_principal.jsp" %> 
        
        

<div id="home" class="parallax first-section" data-stellar-background-ratio="0.4" style="background-image:url('images/fondo.jpg');">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 col-md-offset-2 text-center">
                    <div class="big-tagline">
                        <img class="border-line-img" src="uploads/sep-line-white.png" alt="" />
                        <h2><span class="yellow">muebles</span></h2>
                        <img style="margin-bottom:40px;" class="border-line-img" src="uploads/sep-line-white.png" alt="" />
                        <p class="lead">Realiza tus cotizaciones de manera facil y sencilla</p>
                        <a data-scroll href="#about" class="btn btn-light btn-radius btn-brd">Iniciar Cotización</a>
                    </div>
                </div>
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->
    <div id="about" class="section wb">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                    <div class="message-box">
                        <h2>Iniciar Cotización</h2>

                    </div>
                    <!-- end messagebox -->
                </div>
                <!-- end col -->
                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                    <!---<div class="message-box">

                        <a href="#" class="read-more">Read More</a>
                    </div>
                    <!-- end messagebox -->
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
            <div class="row text-center about-row">
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <div class="row">
                        <div class="service-widget">
                            <div class="post-media wow fadeIn">
                                <a href="uploads/mesa.jpg" data-rel="prettyPhoto[gal]" class="hoverbutton global-radius"><i class="flaticon-unlink"></i></a>
                                <img src="uploads/mesa.jpg" alt="" class="img-thumbnail">
                            </div>
                            <div class="message-box center-block">

                                <a href="#" class="read-more" data-target="#formMesas" data-toggle="modal">Cotizar</a>
                            </div>            
                        </div>
                        <!-- end service -->
                    </div>
                </div>                
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <div class="row">
                        <div class="service-widget">
                            <div class="post-media wow fadeIn">
                                <a href="uploads/ropero.jpg" data-rel="prettyPhoto[gal]" class="hoverbutton global-radius"><i class="flaticon-unlink"></i></a>
                                <img src="uploads/ropero.jpg" alt="" class="rounded float-left">
                            </div>
                            <div class="message-box center-block">

                                <a href="#" class="read-more" data-target="#formRoperos" data-toggle="modal">Cotizar</a>
                            </div>                            
                        </div>
                        <!-- end service -->
                    </div>
                </div>
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <div class="row">
                        <div class="service-widget">
                            <div class="post-media wow fadeIn">
                                <a href="uploads/silla.jpg" data-rel="prettyPhoto[gal]" class="hoverbutton global-radius"><i class="flaticon-unlink"></i></a>
                                <img src="uploads/silla.jpg" alt="" class="rounded float-left">
                            </div>
                            <div class="message-box center-block">

                                <a href="#" class="read-more" data-target="#formSillas" data-toggle="modal">Cotizar</a>
                            </div>
                        </div>
                        <!-- end service -->
                    </div>
                </div>
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <div class="row">
                        <div class="service-widget">
                            <div class="post-media wow fadeIn">
                                <a href="uploads/sofa.jpg" data-rel="prettyPhoto[gal]" class="hoverbutton global-radius"><i class="flaticon-unlink"></i></a>
                                <img src="uploads/sofa.jpg" alt="" class="img-responsive img-rounded">
                            </div>
                            <div class="message-box center-block">

                                <a href="#" class="read-more" data-target="#formSofas" data-toggle="modal">Cotizar</a>
                            </div>
                        </div>
                        <!-- end service -->
                    </div>
                </div>
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
        <div class="sep1"></div>
    </div>
    <!-- end section -->
   
        <!--fin modelboostrap-->

        <%@include file="cliente_forrm_cotizacion_modal.jsp" %>
        <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
        <%@include file="master_script_1.jsp" %>

    </body>
    
</html>
