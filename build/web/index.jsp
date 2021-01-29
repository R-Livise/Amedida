<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Bean.ClienteDTO"%>


<!DOCTYPE html>
<html lang="es">
    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- Site Metas -->
    <title>Constructed - Responsive HTML5 Landing Page Template</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/fevicon.ico.png" type="image/x-icon" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Colors CSS -->
    <link rel="stylesheet" href="css/colors.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- building CSS -->
    <link rel="stylesheet" href="css/building.css">
</head>
<body class="building_version" data-spy="scroll" data-target=".header">
    <!-- LOADER -->
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
                                    <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#modalIniciarSession" title="iniciar sección"><i class="fa fa-user" aria-hidden="true"></i></button>
                                    <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#modalRegistrarse" title="registrase"><i class="fa fa-user-plus" aria-hidden="true"></i></button>
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
                        <li class="active"><a data-scroll href="#home">home</a></li>
                        <li><a data-scroll href="#about">Iniciar Cotización</a></li>
                        <li><a data-scroll href="#services">propuestas</a></li>
                        <li><a data-scroll href="#projects">nuestros proyectos</a></li>
                        <li><a data-scroll href="#testimonials">Comentarios</a></li>                     
                        <li><a data-scroll href="#contact">Contacto</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
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
    <div id="services" class="parallax section db parallax-off no-padding-bottom"  >
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-6 col-sm-12 col-xs-12">
                    <div class="message-box">
                        <h2>Propuestas</h2>
                        <h5>Todo lo que este necesita precios comodos</h5>
                    </div>
                    <!-- end messagebox -->
                </div>
                <div class="col-lg-7 col-md-6 col-sm-12 col-xs-12">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="service-inform">
                                <div class="icon-service">
                                    <img src="images/icon1.jpg" alt="#" />
                                </div>
                                <div class="service-inform-text">
                                    <h3>propuesta  </h3>
                                    <p>Propuesta de un sofa los detalles lo vera la momento de inciar sesion.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="service-inform">
                                <div class="icon-service">
                                    <img src="images/icon4_1.png" alt="#" />
                                </div>
                                <div class="service-inform-text">
                                    <h3>propuesta </h3>
                                    <p>propuesta de un mueble para libros </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 serv" style="background-color:#222;">
                    <div class="serv-blog">
                        <img src="images/sr1.jpg" alt="#" />
                    </div>
                    <div class="serv-blog-cont">
                        <h3>Manufacturing</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 serv" style="background:#181818;">
                    <div class="serv-blog">
                        <img src="images/sr2.jpg" alt="#" />
                    </div>
                    <div class="serv-blog-cont">
                        <h3>Fabrication</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 serv" style="background:#222;">
                    <div class="serv-blog">
                        <img src="images/sr3.jpg" alt="#" />
                    </div>
                    <div class="serv-blog-cont">
                        <h3>Construction</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end section -->
    <div id="projects" class="section">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-6 col-sm-12 col-xs-12">
                    <div class="message-box">
                        <h2>Nuestros Proyectos</h2>
                        <h5>Buscando la excelencia para satisfacer los deseos de nuestros clientes</h5>
                    </div>
                    <!-- end messagebox -->
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="row">
                        <div class="container gal-container">
                            <div class="col-md-8 col-sm-12 co-xs-12 gal-item">
                                <div class="box">
                                    <a href="#" data-toggle="modal" data-target="#1">
                                        <img src="images/pro1.jpg" alt="#" />
                                    </a>
                                    <div class="modal fade" id="1" tabindex="-1" role="dialog">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                <div class="modal-body">
                                                    <img src="images/pro1.png" alt="#" />
                                                </div>
                                                <div class="col-md-12 description">
                                                    <h4>This is the first one on my Gallery</h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                                <div class="box">
                                    <a href="#" data-toggle="modal" data-target="#2">
                                        <img src="images/pro2.jpg" alt="#" />
                                    </a>
                                    <div class="modal fade" id="2" tabindex="-1" role="dialog">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                <div class="modal-body">
                                                    <img src="images/pro2.jpg" alt="#" />
                                                </div>
                                                <div class="col-md-12 description">
                                                    <h4>This is the second one on my Gallery</h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                                <div class="box">
                                    <a href="#" data-toggle="modal" data-target="#3">
                                        <img src="images/pro3.jpg" alt="#" />
                                    </a>
                                    <div class="modal fade" id="3" tabindex="-1" role="dialog">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                <div class="modal-body">
                                                    <img src="images/pro3.jpg" alt="#" />
                                                </div>
                                                <div class="col-md-12 description">
                                                    <h4>This is the third one on my Gallery</h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                                <div class="box">
                                    <a href="#" data-toggle="modal" data-target="#4">
                                        <img src="images/pro4.jpg" alt="#" />
                                    </a>
                                    <div class="modal fade" id="4" tabindex="-1" role="dialog">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                <div class="modal-body">
                                                    <img src="images/pro4.jpg" alt="#" />
                                                </div>
                                                <div class="col-md-12 description">
                                                    <h4>This is the fourth one on my Gallery</h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                                <div class="box">
                                    <a href="#" data-toggle="modal" data-target="#5">
                                        <img src="images/pro5.jpg" alt="#" />
                                    </a>
                                    <div class="modal fade" id="5" tabindex="-1" role="dialog">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                <div class="modal-body">
                                                    <img src="images/pro5.jpg" alt="#" />
                                                </div>
                                                <div class="col-md-12 description">
                                                    <h4>This is the fifth one on my Gallery</h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                                <div class="box">
                                    <a href="#" data-toggle="modal" data-target="#9">
                                        <img src="images/pro6.jpg" alt="#" />
                                    </a>
                                    <div class="modal fade" id="9" tabindex="-1" role="dialog">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                <div class="modal-body">
                                                    <img src="images/pro6.jpg" alt="#" />
                                                </div>
                                                <div class="col-md-12 description">
                                                    <h4>This is the ninth one on my Gallery</h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8 col-sm-12 co-xs-12 gal-item">
                                <div class="box">
                                    <a href="#" data-toggle="modal" data-target="#10">
                                        <img src="images/pro7.jpg" alt="#" />
                                    </a>
                                    <div class="modal fade" id="10" tabindex="-1" role="dialog">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                <div class="modal-body">
                                                    <img src="images/pro7.jpg" alt="#" />
                                                </div>
                                                <div class="col-md-12 description">
                                                    <h4>This is the tenth one on my Gallery</h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end section -->
    <div id="testimonials" class="section db">
        <div class="container">
            <div class="section-title row text-center">
                <div class="col-md-8 col-md-offset-2">
                    <h3>Comentarios</h3>
                    <p class="lead">Tu opinion es muy importante para nosotros por que nos ayudan a mejorar cada día</p>
                </div>
                <!-- end col -->
            </div>
            <!-- end title -->
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="testi-carousel owl-carousel owl-theme">
                        <div class="testimonial clearfix">
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i> Buen trabajo!</h3>
                                <p class="lead">Gracias a esta pagina tuve el producto que siempre he soña excelente el servicio.</p>
                            </div>
                            <div class="testi-meta">
                                <img src="uploads/yise carnetfoto2.jpeg" alt="" class="img-responsive alignleft">
                                <h4>Jisely Brith Machaca Lopez <small>- Abogada</small></h4>
                            </div>
                            <!-- end testi-meta -->
                        </div>
                        <!-- end testimonial -->
                        <div class="testimonial clearfix">
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i> Spectacular!</h3>
                                <p class="lead">Gracias a esta pagina mi Mama tuvo sus sillas soñadas estamos muy felices gracias.</p>
                            </div>
                            <div class="testi-meta">
                                <img src="uploads/testi_02.png" alt="" class="img-responsive alignleft">
                                <h4>Jacques Philips <small>- Designer</small></h4>
                            </div>
                            <!-- end testi-meta -->
                        </div>
                        <!-- end testimonial -->
                        <div class="testimonial clearfix">
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i> Super!</h3>
                                <p class="lead">El servicio de esta pagina es muy buena, gracias a ello pude contactar a un buen carpintero. muchas felicidades! </p>
                            </div>
                            <div class="testi-meta">
                                <img src="uploads/testi_03.png" alt="" class="img-responsive alignleft">
                                <h4>Venanda Mercy <small>- Newyork City</small></h4>
                            </div>
                            <!-- end testi-meta -->
                        </div>
                        <!-- end testimonial -->
                        <div class="testimonial clearfix">
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i> Buen trabajo!</h3>
                                <p class="lead">Gracias a esta pagina tuve el producto que siempre he soña excelente el servicio.</p>
                            </div>
                            <div class="testi-meta">
                                <img src="uploads/yise carnetfoto2.jpeg" alt="" class="img-responsive alignleft">
                                <h4>Jisely Brith Machaca Lopez <small>- Abogada</small></h4>
                            </div>
                            <!-- end testi-meta -->
                        </div>
                        <!-- end testimonial -->
                        <div class="testimonial clearfix">
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i> Spectacular!</h3>
                                <p class="lead">Gracias a esta pagina mi Mama tuvo sus sillas soñadas estamos muy felices gracias.</p>
                            </div>
                            <div class="testi-meta">
                                <img src="uploads/testi_02.png" alt="" class="img-responsive alignleft">
                                <h4>Jacques Philips <small>- Designer</small></h4>
                            </div>
                            <!-- end testi-meta -->
                        </div>
                        <!-- end testimonial -->
                        <div class="testimonial clearfix">
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i> Super!</h3>
                                <p class="lead">El servicio de esta pagina es muy buena, gracias a ello pude contactar a un buen carpintero. muchas felicidades! </p>
                            </div>
                            <div class="testi-meta">
                                <img src="uploads/testi_03.png" alt="" class="img-responsive alignleft">
                                <h4>Venanda Mercy <small>- Newyork City</small></h4>
                            </div>
                            <!-- end testi-meta -->
                        </div>
                        <!-- end testi-meta -->
                    </div>
                    <!-- end testimonial -->
                </div>
                <!-- end carousel -->
            </div>
            <!-- end col -->
        </div>
        <!-- end row -->
    </div>
    <!-- end container -->
</div>
<!-- end section -->
<div id="price" class="section pr">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="tab-content">
                    <div class="tab-pane active fade in" id="tab1">
                        <div class="row text-center">
                            <div class="col-md-4">
                                <div class="pricing-table">
                                    <div class="pricing-table-header">
                                        <h2>Shared Hosting</h2>
                                        <h3>$85/month</h3>
                                    </div>
                                    <div class="pricing-table-space"></div>
                                    <div class="pricing-table-features">
                                        <p><i class="fa fa-envelope-o"></i> <strong>250</strong> Email Addresses</p>
                                        <p><i class="fa fa-rocket"></i> <strong>125GB</strong> of Storage</p>
                                        <p><i class="fa fa-database"></i> <strong>140</strong> Databases</p>
                                        <p><i class="fa fa-link"></i> <strong>60</strong> Domains</p>
                                        <p><i class="fa fa-life-ring"></i> <strong>24/7 Unlimited</strong> Support</p>
                                    </div>
                                    <div class="pricing-table-sign-up">
                                        <a href="#contact" data-scroll="" class="btn btn-dark btn-radius btn-brd">Order Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="pricing-table pricing-table-highlighted">
                                    <div class="pricing-table-header grd1">
                                        <h2>WordPress Hosting</h2>
                                        <h3>$59/year</h3>
                                    </div>
                                    <div class="pricing-table-space"></div>
                                    <div class="pricing-table-text">
                                        <p>This is a perfect choice for small businesses and startups.</p>
                                    </div>
                                    <div class="pricing-table-features">
                                        <p><i class="fa fa-envelope-o"></i> <strong>150</strong> Email Addresses</p>
                                        <p><i class="fa fa-rocket"></i> <strong>65GB</strong> of Storage</p>
                                        <p><i class="fa fa-database"></i> <strong>60</strong> Databases</p>
                                        <p><i class="fa fa-link"></i> <strong>30</strong> Domains</p>
                                        <p><i class="fa fa-life-ring"></i> <strong>24/7 Unlimited</strong> Support</p>
                                    </div>
                                    <div class="pricing-table-sign-up">
                                        <a href="#contact" data-scroll="" class="btn btn-light btn-radius btn-brd grd1 effect-1">Order Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="pricing-table">
                                    <div class="pricing-table-header">
                                        <h2>Reseller Hosting</h2>
                                        <h3>$85/one-time</h3>
                                    </div>
                                    <div class="pricing-table-space"></div>
                                    <div class="pricing-table-features">
                                        <p><i class="fa fa-envelope-o"></i> <strong>250</strong> Email Addresses</p>
                                        <p><i class="fa fa-rocket"></i> <strong>125GB</strong> of Storage</p>
                                        <p><i class="fa fa-database"></i> <strong>140</strong> Databases</p>
                                        <p><i class="fa fa-link"></i> <strong>60</strong> Domains</p>
                                        <p><i class="fa fa-life-ring"></i> <strong>24/7 Unlimited</strong> Support</p>
                                    </div>
                                    <div class="pricing-table-sign-up">
                                        <a href="#contact" data-scroll="" class="btn btn-dark btn-radius btn-brd">Order Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->
                    </div>
                    <!-- end pane -->
                    <div class="tab-pane fade" id="tab2">
                        <div class="row text-center">
                            <div class="col-md-6">
                                <div class="pricing-table">
                                    <div class="pricing-table-header">
                                        <h2>Dedicated Server</h2>
                                        <h3>$85/month</h3>
                                    </div>
                                    <div class="pricing-table-space"></div>
                                    <div class="pricing-table-features">
                                        <p><i class="fa fa-envelope-o"></i> <strong>250</strong> Email Addresses</p>
                                        <p><i class="fa fa-rocket"></i> <strong>125GB</strong> of Storage</p>
                                        <p><i class="fa fa-database"></i> <strong>140</strong> Databases</p>
                                        <p><i class="fa fa-link"></i> <strong>60</strong> Domains</p>
                                        <p><i class="fa fa-life-ring"></i> <strong>24/7 Unlimited</strong> Support</p>
                                    </div>
                                    <div class="pricing-table-sign-up">
                                        <a href="#contact" data-scroll="" class="btn btn-dark btn-radius btn-brd">Order Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="pricing-table pricing-table-highlighted">
                                    <div class="pricing-table-header grd1">
                                        <h2>VPS Server</h2>
                                        <h3>$59/month</h3>
                                    </div>
                                    <div class="pricing-table-space"></div>
                                    <div class="pricing-table-text">
                                        <p>This is a perfect choice for small businesses and startups.</p>
                                    </div>
                                    <div class="pricing-table-features">
                                        <p><i class="fa fa-envelope-o"></i> <strong>150</strong> Email Addresses</p>
                                        <p><i class="fa fa-rocket"></i> <strong>65GB</strong> of Storage</p>
                                        <p><i class="fa fa-database"></i> <strong>60</strong> Databases</p>
                                        <p><i class="fa fa-link"></i> <strong>30</strong> Domains</p>
                                        <p><i class="fa fa-life-ring"></i> <strong>24/7 Unlimited</strong> Support</p>
                                    </div>
                                    <div class="pricing-table-sign-up">
                                        <a href="#contact" data-scroll="" class="btn btn-light btn-radius btn-brd grd1 effect-1">Order Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->
                    </div>
                    <!-- end pane -->
                </div>
                <!-- end content -->
            </div>
            <!-- end col -->
        </div>
    </div>
</div>
<div id="contact" class="section wb">
    <div class="container">
        <div class="section-title row text-center">
            <div class="col-md-8 col-md-offset-2">
                <h3>Contact Us</h3>
                <p class="lead">Quisque eget nisl id nulla sagittis auctor quis id. Aliquam quis vehicula enim, non aliquam risus. Sed a tellus quis mi rhoncus dignissim.</p>
            </div>
            <!-- end col -->
        </div>
        <!-- end title -->
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <div class="contant-info">
                    <ul class="item-display-block">
                        <li>
                            <div class="info-shape accent-color background fs-23">
                                <div class="icon"><i class="fa fa-home"></i></div>
                            </div>
                            <div class="info-content">
                                <h6 class="uppercase"> Address:</h6>
                                <p> 1010 Berkler avenue, Brooklyn New York City, NY 10018 US</p>
                            </div>
                        </li>
                        <li>
                            <div class="info-shape accent-color background fs-23">
                                <div class="icon"><i class="fa fa-volume-control-phone"></i></div>
                            </div>
                            <div class="info-content">
                                <h6 class="uppercase"> Phone No:</h6>
                                <p> +212 386 5575<br>+212 386 5575</p>
                            </div>
                        </li>
                        <li>
                            <div class="info-shape accent-color background fs-23">
                                <div class="icon"><i class="fa fa-envelope-o"></i></div>
                            </div>
                            <div class="info-content">
                                <h6 class="uppercase"> Email Address:</h6>
                                <p>Demo@gmail.com</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-8">
                <div class="contact_form">
                    <div id="message"></div>
                    <form id="contactform" class="row" action="contact.php" name="contactform" method="post">
                        <fieldset class="row-fluid">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <input type="text" name="first_name" id="first_name" class="form-control" placeholder="First Name">
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <input type="text" name="last_name" id="last_name" class="form-control" placeholder="Last Name">
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <input type="email" name="email" id="email" class="form-control" placeholder="Your Email">
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <input type="text" name="phone" id="phone" class="form-control" placeholder="Your Website">
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <label class="sr-only">Select Department</label>
                                <select name="select_service" id="select_service" class="selectpicker form-control" data-style="btn-white">
                                    <option value="12">Select Service</option>
                                    <option value="Building Service">Building Service</option>
                                    <option value="Tover Design">Tover Design</option>
                                    <option value="Others">Others</option>
                                </select>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <textarea class="form-control" name="comments" id="comments" rows="6" placeholder="Give us more details.."></textarea>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
                                <button type="submit" value="SEND" id="submit" class="btn btn-light btn-radius btn-brd grd1 btn-block">Get a Quote</button>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
            <!-- end col -->
        </div>
        <!-- end row -->
    </div>
    <!-- end container -->
</div>
<!-- end section -->
<!-- footer -->
<footer id="footer">
    <div id="footer-widgets" class="container style-1">
        <div class="row">
            <div class="col-md-4">
                <div class="widget widget_text">
                    <h2 class="widget-title"><span>ACERCA DE NOSOTROS</span></h2>
                    <div class="textwidget">
                        <a class="navbar-brand" href="index-building.html"><img src="images/logo-icon.png" alt="image"><span>amedida</span></a>
                        <p>Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit eget. Aenean suscipit eget mi act fermentum phasellus vulputate turpis tincidunt. Aenean suscipit ege  Aenean suscipit eget mi act fermentum phasellus.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="widget widget_links">
                    <h2 class="widget-title"><span>ENLACES DE LA PAGINA</span></h2>
                    <ul class="wprt-links clearfix col2">
                        <li><a data-scroll="" href="#home">Inicio</a></li>
                        <li><a data-scroll="" href="#about">Iniciar Cotización</a></li>
                        <li><a data-scroll="" href="#services">Propuestas</a></li>
                        <li><a data-scroll="" href="#projects">nuestros proyectos</a></li>
                        <li><a data-scroll="" href="#testimonials">comentarios</a></li>
                        <li><a data-scroll="" href="#price">Price</a></li>
                        <li><a data-scroll="" href="#contact">contacto</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <div class="widget widget_information">
                    <h2 class="widget-title"><span>INFORMACION</span></h2>
                    <ul>
                        <li class="address clearfix">
                            <span class="hl">Address:</span>
                            <span class="text">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span>
                        </li>
                        <li class="phone clearfix">
                            <span class="hl">Phone:</span> 
                            <span class="text">+56 (0) 012 345 6789</span>
                        </li>
                        <li class="email clearfix">
                            <span class="hl">E-mail:</span>
                            <span class="text">business@support.com</span>
                        </li>
                    </ul>
                </div>
                <div class="widget widget_socials">
                    <div class="socials">
                        <a target="_blank" href="#"><i class="fa fa-twitter"></i></a>
                        <a target="_blank" href="#"><i class="fa fa-facebook"></i></a>
                        <a target="_blank" href="#"><i class="fa fa-google-plus"></i></a>
                        <a target="_blank" href="#"><i class="fa fa-pinterest"></i></a>
                        <a target="_blank" href="#"><i class="fa fa-dribbble"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="bottom" class="clearfix style-1">
        <div class="container">
            <div id="bottom-bar-inner" class="wprt-container">
                <div class="bottom-bar-inner-wrap">
                    <div class="bottom-bar-content">
                        <div id="copyright">All Rights Reserved. Company Name © 2018</div>
                        <!-- /#copyright -->
                    </div>
                    <!-- /.bottom-bar-content -->
                    <div class="bottom-bar-menu pull-right">
                        <ul class="bottom-nav">
                            <li><a href="#/">HISTORY</a></li>
                            <li><a href="#/">FAQ</a></li>
                            <li><a href="#/">EVENTS</a></li>
                        </ul>
                    </div>
                    <!-- /.bottom-bar-menu -->
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- end footer -->
<!--modelboostrap-->
<div class="modal fade" id="modalIniciarSession" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Pagina de iniciar seccion</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="forminiciarsesion" class="col" action="ServletCarpintero">
                    <div class="form-group">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-warning active" onclick="FuncionIniciarSesion()" >
                                <input type="radio" name="options" id="opt_carpintero_iniciar" autocomplete="off" checked> Carpintero
                            </label>
                            <label class="btn btn-warning" onclick="FuncionIniciarSesion()">
                                <input type="radio" name="options" id="opt_cliente_iniciar" autocomplete="off"> Cliente
                            </label>
                        </div>
                    </div>
                    <script>
                        function FuncionIniciarSesion() {
                            setTimeout(function ()
                            {
                                if ($('#opt_carpintero_iniciar').prop('checked')) {
                                    $('#forminiciarsesion').attr('action', 'ServletCarpintero');
                                } else if ($('#opt_cliente_iniciar').prop('checked')) {
                                    $('#forminiciarsesion').attr('action', 'ServletCliente');
                                }
                            }, 10);
                        }
                    </script>
                    <div class="form-group">
                        <label for="usuario">Usuario</label>
                        <input type="text" name="usuario" class="form-control" id="usuario" aria-describedby="emailHelp" placeholder="Escriba el Usuario">

                    </div>
                    <div class="form-group">
                        <label for="contraseña">Contraseña</label>
                        <input type="text" name="password" class="form-control" id="contraseña" placeholder="Escriba la Contraseña">
                    </div>
                    <input type="hidden" name="accion" value="login">
                    <button type="submit" class="btn btn-warning">Enviar</button>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-warning">Save changes</button>
            </div>
        </div>
    </div>
</div>
<!--fin modelboostrap--> 

<div class="modal fade" id="modalRegistrarse" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">Pagina de Registrase</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="formregistro" class="col" action="ServletCarpintero">
                    <div class="form-group">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-warning active" onclick="FuncionRegistro()" >
                                <input type="radio" name="options" id="opt_carpintero_registro" autocomplete="off" checked> Carpintero
                            </label>
                            <label class="btn btn-warning" onclick="FuncionRegistro()">
                                <input type="radio" name="options" id="opt_cliente_registro" autocomplete="off"> Cliente
                            </label>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Nombre</label>
                        <input type="text" name="nombres" class="form-control" id="nombre" aria-describedby="emailHelp" placeholder="Escriba los Nombres">

                    </div>
                    <div class="form-group">
                        <label for="apellidos">Apellido</label>
                        <input type="text" name="apellidos" class="form-control" id="apellidos" placeholder="Escriba los apellidos">
                    </div>
                    <div id="ocultarcliente">
                        <div class="form-group">
                            <label for="ncelular">Numero de celular</label>
                            <input type="number" name="ncelular" class="form-control" id="ncelular" placeholder="Escriba el numero del celular">
                        </div> 
                        <div class="form-group">
                            <label for="referencias">Referencias</label>
                            <textarea type="text" name="referencias" class="form-control" id="referencias" placeholder="Escriba las referncias"></textarea>                    
                        </div>
                    </div>

                    <script>
                        function FuncionRegistro() {
                            setTimeout(function ()
                            {
                                if ($('#opt_carpintero_registro').prop('checked')) {
                                    $('#formregistro').attr('action', 'ServletCarpintero');
                                    $("#ocultarcliente").show();
                                } else if ($('#opt_cliente_registro').prop('checked')) {
                                    $('#formregistro').attr('action', 'ServletCliente');
                                    $("#ocultarcliente").hide();
                                }
                            }, 10);
                        }
                    </script>

                    <div class="form-group">
                        <label for="correo">Correo</label>
                        <input type="email" name="correo" class="form-control" id="correo" placeholder="Escriba el correo">

                    </div>
                    <div class="form-group">
                        <label for="usuario">Usuario</label>
                        <input type="text" name="usuario" class="form-control" id="referencias" placeholder="Escriba el usuario">

                    </div>
                    <div class="form-group">
                        <label for="password">Contraseña</label>
                        <input type="password" name="password"class="form-control" id="password" placeholder="Escriba la contraseña">
                    </div>                        
                    <div class="form-group form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Check me out</label>
                    </div>
                    <input type="hidden" name="accion" value="registrar">
                    <button type="submit" class="btn btn-warning">Enviar</button>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modalIniciarSession" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Pagina de inciar seccion</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="col" action="ServletCliente">
                    <div class="form-group">
                        <label for="usuario">Usuario</label>
                        <input type="text" name="usuario" class="form-control" id="usuario" aria-describedby="emailHelp" placeholder="Escriba el Usuario">

                    </div>
                    <div class="form-group">
                        <label for="contraseña">Contraseña</label>
                        <input type="text" name="password" class="form-control" id="contraseña" placeholder="Escriba la Contraseña">
                    </div>
                    <button type="submit" class="btn btn-warning">Enviar</button>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-warning">Save changes</button>
            </div>
        </div>
    </div>
</div>
<!--fin modelboostrap--> 

<div class="modal fade" id="formMesas" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">Mesas</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <%
                    if (session.getAttribute("clienteBean1")!=null) {
                            
                        
                    %>
                <h2 class="usuario" >  <jsp:getProperty name="clienteBean1" property ="usuario" /> </h2>
                <form class="col" action="ServletAccCliente">
                    <input type="text" name="tipo" value="1">
                    <div class="form-group">
                        <label for="titulo">Titulo</label>
                        <input type="text" name="titulo" class="form-control" id="alto" aria-describedby="Escriba el Alto" placeholder="Escriba los Nombres">

                    </div>
                    <div class="form-group">
                        <label for="descripcion">Descripcion</label>
                        <textarea type="text" name="descripcion" class="form-control" id="ancho" placeholder="Escriba el Ancho">
                        </textarea>                    
                    </div>
                    <div class="form-group">
                        <label for="imagen1">Imagen 1</label>
                        <input type="text" name="imagen1" class="form-control" id="largo" placeholder="Escriba el Correo">
                    </div> 
                    <div class="form-group">
                        <label for="imagen2">Imagen 2</label>
                        <input type="text" name="imagen2" class="form-control" id="color" placeholder="Escriba el Color">
                    </div>
                    <input type="hidden" name="ID_cliente" value="<jsp:getProperty name="clienteBean1" property ="id_cliente" />">
                    <input type="hidden" name="accion" value="cotizar">
                    <button type="submit" class="btn btn-warning">Enviar</button>
                </form>
                <%
                } else {
                %>
                <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#modalRegistrarse" title="registrase"><i class="fa fa-user-plus" aria-hidden="true"></i></button>
                    <%
                        }
                    %>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!--fin modelboostrap-->

<div class="modal fade" id="formRoperos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="formRoperos">Roperos</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="col" action="ServletAccCliente">
                    <input type="text" name="tipo" value="2">
                    <div class="form-group">
                        <label for="titulo">Titulo</label>
                        <input type="text" name="titulo" class="form-control" id="alto" aria-describedby="Escriba el Alto" placeholder="Escriba los Nombres">

                    </div>
                    <div class="form-group">
                        <label for="descripcion">Descripcion</label>
                        <textarea type="text" name="descripcion" class="form-control" id="ancho" placeholder="Escriba el Ancho">
                        </textarea>                    
                    </div>
                    <div class="form-group">
                        <label for="imagen1">Imagen 1</label>
                        <input type="text" name="imagen1" class="form-control" id="largo" placeholder="Escriba el Correo">
                    </div> 
                    <div class="form-group">
                        <label for="imagen2">Imagen 2</label>
                        <input type="text" name="imagen2" class="form-control" id="color" placeholder="Escriba el Color">
                    </div>
                    
                    <input type="hidden" name="ID_cliente" value="">
                    <input type="hidden" name="accion" value="cotizar">
                    <button type="submit" class="btn btn-warning">Enviar</button>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!--fin modelboostrap-->

<div class="modal fade" id="formSillas" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="formSillas">Sillas</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="col" action="ServletCliente">
                    <input type="text" name="tipo" value="3">
                    <div class="form-group">
                        <label for="titulo">Titulo</label>
                        <input type="text" name="titulo" class="form-control" id="alto" aria-describedby="Escriba el Alto" placeholder="Escriba los Nombres">

                    </div>
                    <div class="form-group">
                        <label for="descripcion">Descripcion</label>
                        <textarea type="text" name="descripcion" class="form-control" id="ancho" placeholder="Escriba el Ancho">
                        </textarea>                    
                    </div>
                    <div class="form-group">
                        <label for="imagen1">Imagen 1</label>
                        <input type="text" name="imagen1" class="form-control" id="largo" placeholder="Escriba el Correo">
                    </div> 
                    <div class="form-group">
                        <label for="imagen2">Imagen 2</label>
                        <input type="text" name="imagen2" class="form-control" id="color" placeholder="Escriba el Color">
                    </div>
                    <button type="submit" class="btn btn-warning">Enviar</button>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div> 
<!--fin modelboostrap-->

<div class="modal fade" id="formSofas" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="formSillas">Sofas</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="col" action="ServletCliente">
                    <div class="form-group">
                        <label for="color">Color</label>
                        <input type="text" name="color" class="form-control" id="color" placeholder="Escriba el Color">
                    </div>
                    <div class="form-group">
                        <label for="modelosofa">Modelo</label>
                        <input type="text" name="modelosofa"class="form-control" id="modelosofa" placeholder="Escriba el Modelo del sofa">
                    </div>
                    <div class="form-group">
                        <label for="tipo_material_sofa">Tipo de Material</label>
                        <input type="text" name="tipo_material_sofa"class="form-control" id="tipo_material_sofa" placeholder="Escriba el Tipo de Material">
                    </div>                        
                    <div class="form-group form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Check me out</label>
                    </div>
                    <button type="submit" class="btn btn-warning">Enviar</button>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div> 

<a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
<!-- ALL JS FILES -->
<script src="js/all.js"></script>
<!-- ALL PLUGINS -->
<script src="js/custom.js"></script>
<script src="js/portfolio.js"></script>
<script src="js/hoverdir.js"></script>   
</body>
</html>

