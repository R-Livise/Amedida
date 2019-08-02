<%-- 
    Document   : carpintero_nav_principal
    Created on : 16/07/2019, 04:06:55 PM
    Author     : Rafael Livise
--%>

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
                        <a class="navbar-brand" href="index.jsp"><img src="images/logo-icon.png" alt="image"><span>AMEDIDA</span></a>   
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><div class="dropdown">
                                    <button class="btn btn-warning dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Bienvenido <jsp:getProperty name="carpinteroBean1" property ="usuario" />
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="index.jsp">Inicio</a>
                                        <a class="dropdown-item" href="ServletAccCarpintero?accion=listarCotizacionesGeneral">Lista Cotizaciones</a>
                                        <a class="dropdown-item" href="ServletCarpintero?accion=logout">salir</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>

                </div>

            </nav>
        </header>