<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="preview_dotnet_templates_akshara_app_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Template Title -->
    <title>Akshara App</title>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
    <!-- Bootstrap 3.2.0 stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome Icon stylesheet -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Owl Carousel stylesheet -->
    <link href="css/owl.carousel.css" rel="stylesheet">
    <!-- Pretty Photo stylesheet -->
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <!-- Custom stylesheet -->
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/white.css" rel="stylesheet" type="text/css" />
    <!-- Custom Responsive stylesheet -->
    <link href="css/responsive.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <!-- ====== Header Section ====== -->
    <header id="top">
      <div class="bg-color">
        <div class="top section-padding">
          <div class="container">
            <div class="row">
              <div class="col-sm-5 col-md-5">
                <div class="photo-slide">
                 <div id="carousel" class="carousel slide" data-ride="carousel">
                  <ol class="carousel-indicators">
                    <li data-target="#carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel" data-slide-to="1" class=""></li>
                    <li data-target="#carousel" data-slide-to="2" class=""></li>
                  </ol>
                  <div class="carousel-inner">
                    <div class="item">
                      <img src="images/mobile2.png" alt="">
                    </div>
                    <div class="item active left">
                      <img src="images/mobile3.png" alt="">
                    </div>
                    <div class="item next left">
                      <img src="images/mobile1.png" alt="">
                    </div>
                  </div> <!-- end .carousel-inner -->
                </div> <!-- end #carousel -->
                </div> <!-- end .photo-slide -->
              </div> <!-- end .top > .container> .row> .col-md-5 -->
              <div class="col-sm-7 col-md-7">
                <div class="content">
                  <h1>Citrine Photography</h1>
                  <h2>Use the Citrine Photography App to have the comfort of knowing your
                      day will be taken care of.</h2>
                    <!--
                   <ul class="social-network social-circle">
                    <li><a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a></li>
                    <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a>
                    </li>
                    <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a>
                    </li>
                    <li><a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i>
                    </a></li>
                    <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a>
                    </li>
                </ul>
                    -->
                  <p>Working with Citrine Photography? Would you like to keep up with your scheduled services and products? Download and enjoy!</p>
                  <div class="button" id="download-app1">
                    <a href="#download" class="btn btn-default btn-lg custom-btn"><i class="fa fa-cloud-download"></i>Download Now!</a>
                  </div> <!-- end .button -->
                </div> <!-- end .content -->
              </div> <!-- end .top > .container> .row> .col-md-7 -->

            </div> <!-- end .top> .container> .row -->
          </div> <!-- end .top> .container -->
        </div> <!-- end .top -->
      </div> <!-- end .bg-color -->
    </header>
    <!-- ====== End Header Section ====== -->
    <!-- ====== Menu Section ====== -->
    <section id="menu">
      <div class="navigation">
        <div id="main-nav" class="navbar navbar-default" role="navigation">
          <div class="container">

            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="">Citrine Photography App</a>
            </div> <!-- end .navbar-header -->

            <div class="navbar-collapse collapse">
              <ul id="ulnav" class="nav navbar-nav navbar-right">
                <li class="active"><a href="#top">Home</a></li>
                <li><a href="#features">Features</a></li>
                <li><a href="#screenshots">Why</a></li>
                <!--<li><a href="#description">Product</a></li>-->
                <!--<li><a href="#testimonial">Reviews</a></li>-->
                <li><a href="#team">Team</a></li>
                <!--<li><a href="#price">Pricing</a></li>-->
                <!--<li><a href="#download">Download</a></li>-->
                <!--<li><a href="#contact">Contact</a></li>-->
              </ul>
            </div><!-- end .navbar-collapse -->

          </div> <!-- end .container -->
        </div> <!-- end #main-nav -->
      </div> <!-- end .navigation -->
    </section>
    <!-- ====== End Menu Section ====== -->
    <!-- ====== Features Section ====== -->
    <section id="features">
      <div class="features section-padding">
        <div class="container">

          <div class="header">
            <h1><i class="fa fa-bomb"></i><strong>A</strong>mazing <strong>F</strong>eatures</h1>
            <p>You will get all our Features from the App absolutely free
                Citrine will provide your needs with a simple download and install.</p>
            <div class="underline">
              <i class="fa fa-ellipsis-h"></i>
            </div>
          </div> <!-- end .container> .header -->

          <div class="row">
            <div class="col-md-4">
              <div class="featured-item-img">
                <img src="images/blendcomplete.png" alt="">
              </div>
            </div>
            <div class="col-md-8 feature-list">
              <div class="row">

                <div class="col-sm-6 col-md-6">
                  <div class="featured-item">
                    <div class="icon">
                      <div class="icon-style"><i class="fa fa-desktop"></i></div>
                    </div> <!-- end icon -->
                    <div class="meta-text">
                      <h3>Website/App Registration</h3>
                      <p>Register on website or on app</p>
                    </div> <!-- end .meta-text -->
                  </div> <!-- end .featured-item -->
                </div> <!-- end .feature-list> .row > .col-md-6 (1st item) -->

                <div class="col-sm-6 col-md-6">
                  <div class="featured-item">
                    <div class="icon">
                      <div class="icon-style"><i class="fa fa-send"></i></div>
                    </div> <!-- end icon -->
                    <div class="meta-text">
                      <h3>Use App on the go</h3>
                      <p>Use app anywhere</p>
                    </div> <!-- end .meta-text -->
                  </div> <!-- end .featured-item -->
                </div> <!-- end .feature-list> .row > .col-md-6 (2nd item) -->

                <!--
                <div class="col-sm-6 col-md-6">
                  <div class="featured-item">
                    <div class="icon">
                      <div class="icon-style"><i class="fa fa-gears"></i></div>
                    </div> <!-- end icon -->
                      <!--
                    <div class="meta-text">
                      <h3>Fast</h3>
                      <p>Want more Bootstrap themes & templates? 
                          Subscribe to our mailing list to receive an update when new items arrive!</p>
                    </div> <!-- end .meta-text -->
                  <!--
                  </div> <!-- end .featured-item -->
                <!--
                </div> <!-- end .feature-list> .row > .col-md-6 (3rd item) -->

                  <!--
                <div class="col-sm-6 col-md-6">
                  <div class="featured-item">
                    <div class="icon">
                      <div class="icon-style"><i class="fa fa-search"></i></div>
                    </div> <!-- end icon -->
                      <!--
                    <div class="meta-text">
                      <h3>Quick Support</h3>
                      <p>Want more Bootstrap themes & templates? Subscribe to our mailing list to receive an update when new items arrive!</p>
                    </div> <!-- end .meta-text -->
                  <!--
                  </div> <!-- end .featured-item -->
                <!--
                </div> <!-- end .feature-list> .row > .col-md-6 (4th item) -->

                <div class="col-sm-6 col-md-6">
                  <div class="featured-item">
                    <div class="icon">
                      <div class="icon-style"><i class="fa fa-video-camera"></i></div>
                    </div> <!-- end icon -->
                    <div class="meta-text">
                      <h3>Order Your Videos</h3>
                      <p>View You Videos or photos!</p>
                    </div> <!-- end .meta-text -->
                  </div> <!-- end .featured-item -->
                </div> <!-- end .feature-list> .row > .col-md-6 (5th item) -->

                <div class="col-sm-6 col-md-6">
                  <div class="featured-item">
                    <div class="icon">
                      <div class="icon-style"><i class="fa fa-mobile-phone"></i></div>
                    </div> <!-- end icon -->
                    <div class="meta-text">
                      <h3>Get Notified!</h3>
                      <p>Afraid of forgetting an appointment in the future or completion of photos or videos?
                          The app will notify you when completed!</p>
                    </div> <!-- end .meta-text -->
                  </div> <!-- end .featured-item -->
                </div> <!-- end .feature-list> .row > .col-md-6 (6th item) -->

              </div> <!-- end .feature-list> .row -->
            </div> <!-- end .feature-list -->
          </div> <!-- end .container> .row -->

        </div> <!-- end .container -->
      </div> <!-- end .features -->
    </section>
    <!-- ====== End Features Section ====== -->
    <!-- ====== Screenshots Section ====== -->
    <section id="screenshots">
      <div class="screenshots section-padding dark-bg">
        <div class="container">
          <div class="header">
            <h1><strong>W</strong>hy <strong>t</strong>his <strong>a</strong>pp?</h1>
            <p>Working with Citrine? Schedule and get notified when your photos and videos are completed!</p>
              <div class="underline"><i class="fa fa-image"></i></div>
          </div>

          <div class="owl-carousel owl-theme">
            <div class="item">
              <a href="images/app.jpg" data-rel="prettyPhoto"><img src="images/calendar.png" alt="item photo"></a>
            </div> <!-- end item -->
            <div class="item">
              <a href="images/app2.jpg" data-rel="prettyPhoto"><img src="images/calendarsearch.png" alt="item photo"></a>
            </div> <!-- end item -->
            <div class="item">
              <a href="images/app.jpg" data-rel="prettyPhoto"><img src="images/orderlist.png" alt="item photo"></a>
            </div> <!-- end item -->
            <div class="item">
              <a href="images/app2.jpg" data-rel="prettyPhoto"><img src="images/calendarsearch.png" alt="item photo"></a>
            </div> <!-- end item -->
            <div class="item">
              <a href="images/app.jpg" data-rel="prettyPhoto"><img src="images/calendar.png" alt="item photo"></a>
            </div> <!-- end item -->
            <div class="item">
              <a href="images/app2.jpg" data-rel="prettyPhoto"><img src="images/orderlist.png" alt="item photo"></a>
            </div> <!-- end item -->
          </div> <!-- end owl carousel -->

        </div> <!-- .container -->
      </div> <!-- end .screenshots -->  
    </section>
    <!-- ====== End Screenshots Section ====== -->

    <!-- ====== Description Section ====== -->
        <!--
    <section id="description">
      <div class="description">
        <div class="description-one section-padding">
          <div class="container">
            <div class="row">
              <div class="col-sm-5 col-md-6">
                <div class="app-image">
                  <img src="images/blendcomplete.png" alt="">
                </div>
              </div>
              <div class="col-sm-7 col-md-6">
                <div class="content">
                  <div class="header">
                  <h1><strong>O</strong>ur <strong>I</strong>nnovative <strong>L</strong>atest <strong>P</strong>RODUCTS</h1>
                  </div>
                  <h4>Why Akshara ?</h4>
                  <p>Want more Bootstrap themes & templates? Subscribe to our mailing list to receive an update when new items arrive! Akshara is a library to buy Bootstrap themes and templates for your business need. Want more Bootstrap themes & templates ? Want more Bootstrap themes & templates? 
                  <br>
                  <br>
                  Want more Bootstrap themes & templates? Subscribe to our mailing list to receive an update when new items arrive! 
                  </p>
                  <div class="button" id="download-app2">
                    <a href="#download" class="btn btn-default btn-lg custom-btn get-btn"><i class="fa fa-cloud-download"></i>Get App</a>
                  </div>
                </div>
              </div>
            </div> <!-- .container> .row -->
          </div> <!-- .container -->
        </div> <!-- end .description-one -->
          <!--
        <div class="description-two section-padding dark-bg">
          <div class="container">
            <div class="row">
              <div class="col-sm-7 col-md-6">
                <div class="content">
                  <h1><strong>D</strong>ownload <strong>o</strong>ur <strong>a</strong>pp <strong>w</strong>in <strong>g</strong>old or <strong>f</strong>ree <strong>t</strong>rip.</h1>
                  <p>Want more Bootstrap themes & templates? Subscribe to our mailing list to receive an update when new items arrive! Akshara is a library to buy Bootstrap themes and templates for your business need. Want more Bootstrap themes & templates ? Want more Bootstrap themes & templates?</p>
                  <ul class="list-item">
                    <li><i class="fa fa-table"></i> Responsive app Template</li>
                    <li><i class="fa fa-video-camera"></i> Cross Browser Compactbility</li>
                    <li><i class="fa fa-volume-up"></i> Fast and easy to customize</li>
                    <li><i class="fa fa-umbrella"></i>its free to download</li>
                    <li><i class="fa fa-thumbs-o-up"></i> just replace your product</li>
                  </ul>
                </div> <!-- end .content -->
                  <!--
              </div> <!-- .container> .row> .col-md-6 -->
        <!--
              <div class="col-sm-5 col-md-6">
                <div class="app-image">
                  <img class="img-responsive" src="images/duel-phone-big.png" alt="">
                </div> <!-- end .app-image -->
              </div> <!-- .container> .row> .col-md-6 -->

            </div> <!-- .container> .row -->
          </div> <!-- .container -->
        </div> <!-- end .description-two -->

      </div> <!-- end .description -->
    </section>
    <!-- ====== End Description Section ====== -->
    <!-- ====== Testimonial Section ====== -->
        <!--
    <section id="testimonial">
      <div class="bg-color bg-testimonial">
        <div class="testimonial section-padding">
          <div class="container">
            <div class="testimonial-slide">
              <div id="carousel-testimonial" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                  <li data-target="#carousel-testimonial" data-slide-to="0" class="active"></li>
                  <li data-target="#carousel-testimonial" data-slide-to="1" class=""></li>
                  <li data-target="#carousel-testimonial" data-slide-to="2" class=""></li>
                </ol>
                <div class="carousel-inner">

                  <div class="item">
                    <div class="image">
                      <img src="images/01.jpg" alt="">
                    </div> <!-- end .image -->
                      <!--
                    <div class="content">
                      <p>Want more Bootstrap themes & templates? Subscribe to our mailing list to receive an update when new items arrive! Akshara is a library to buy Bootstrap themes and templates for your business need. Want more Bootstrap themes & templates ? Want more Bootstrap themes & templates?</p>
                      <h4>Jon Doe</h4>
                      <h5>Web developer</h5>
                    </div> <!-- end .content -->
                  </div> <!-- end .item (1) -->
                    <!--
                  <div class="item active left">
                    <div class="image">
                      <img src="images/02.jpg" alt="">
                    </div> <!-- end .image -->
                      <!--
                    <div class="content">
                      <p>Want more Bootstrap themes & templates? Subscribe to our mailing list to receive an update when new items arrive! Akshara is a library to buy Bootstrap themes and templates for your business need. Want more Bootstrap themes & templates ? Want more Bootstrap themes & templates?</p>
                      <h4>Jon Doe</h4>
                      <h5>Web developer</h5>
                    </div> <!-- end .content -->
                  </div> <!-- end .item (2) -->
                       <!--
                  <div class="item next left">
                    <div class="image">
                      <img src="images/03.jpg" alt="">
                    </div> <!-- end .image -->
                      <!--
                    <div class="content">
                      <p>Want more Bootstrap themes & templates? Subscribe to our mailing list to receive an update when new items arrive! Akshara is a library to buy Bootstrap themes and templates for your business need. Want more Bootstrap themes & templates ? Want more Bootstrap themes & templates?</p>
                      <h4>Jon Doe</h4>
                      <h5>Web developer</h5>
                    </div> <!-- end .content -->
                  </div> <!-- end .item (3) -->

                </div> <!-- end .carousel-inner -->
              </div> <!-- end #carousel-testimonial -->
            </div> <!-- end .testimonial-slide -->
          </div> <!-- end .container -->
        </div> <!-- end .testimonial -->
      </div> <!-- end .bg-testimonial -->
    </section>
    <!-- ====== End Testimonial Section ====== -->


    <!-- ====== Team Section ====== -->
    <section id="team">
       <div class="team section-padding">
        <div class="container">

          <div class="header">
            <h1><strong>Citrine Photography Staff</strong></h1>
              <!--
            <p>Want more Bootstrap themes & templates? Subscribe to our mailing list to receive an update when new items arrive! Akshara is a library to buy Bootstrap themes and templates for your business need. Want more Bootstrap themes & templates ? Want more Bootstrap themes & templates?</p>
            -->
              <div class="underline"><i class="fa fa-users"></i></div>
          </div> <!-- end .container> .header -->

          <div class="row">
            <div class="app-dev">

              <div class="col-sm-6 col-md-6 col-lg-3 info">
                <div class="member">
                  <img src="images/john.jpg" alt="">
                       <!--
                  <div class="details">
                    <p>Want more Bootstrap themes & templates? Subscribe to our mailing list to receive an update when new items arrive! </p>
                    <div class="social icon">
                      <ul>
                        <li><a href=""><i class="fa fa-twitter"></i></a></li>
                        <li><a href=""><i class="fa fa-facebook"></i></a></li>
                        <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                        <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                      </ul>
                    </div> <!-- end .icon -->
                    <!--
                  </div> <!-- end .details -->

                </div> <!-- end .member -->
                <div class="title">
                  <h4>John Diaz</h4>
                  <h5>Lead Photographer</h5>
                </div> <!-- end .title -->
              </div> <!-- end .info (1) -->

              <div class="col-sm-6 col-md-6 col-lg-3 info">
                <div class="member">
                  <img src="images/christian2.jpg" alt="">
                    <!--
                  <div class="details">
                    <p>Want more Bootstrap themes & templates? Subscribe to our mailing list to receive an update when new items arrive! </p>
                    <div class="social icon">
                      <ul>
                        <li><a href=""><i class="fa fa-twitter"></i></a></li>
                        <li><a href=""><i class="fa fa-facebook"></i></a></li>
                        <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                        <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                      </ul>
                    </div> <!-- end .icon -->
                      <!--
                  </div> <!-- end .details -->
                </div> <!-- end .member -->
                <div class="title">
                  <h4>Christian Diaz</h4>
                  <h5>Staff Videographer </h5>
                </div> <!-- end .title -->
              </div> <!-- end .info (2) -->
                <!--
              <div class="col-sm-6 col-md-6 col-lg-3 info">
                <div class="member">
                  <img src="images/jessica3.jpg" alt="">
                    <!--
                  <div class="details">
                    <p>Want more Bootstrap themes & templates? Subscribe to our mailing list to receive an update when new items arrive! </p>
                    <div class="social icon">
                      <ul>
                        <li><a href=""><i class="fa fa-twitter"></i></a></li>
                        <li><a href=""><i class="fa fa-facebook"></i></a></li>
                        <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                        <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                      </ul>
                    </div> <!-- end .icon -->
                      <!--
                  </div> <!-- end .details -->
                </div> <!-- end .member -->
                  <!--
                <div class="title">
                  <h4>Jessica LaFrentz</h4>
                  <h5>Assistant</h5>
                </div> <!-- end .title -->
              </div> <!-- end .info (3) -->

                <!--
              <div class="col-sm-6 col-md-6 col-lg-3 info">
                <div class="member">
                  <img src="images/04.jpg" alt="">
                  <div class="details">
                    <p>Want more Bootstrap themes & templates? Subscribe to our mailing list to receive an update when new items arrive! </p>
                    <div class="social icon">
                      <ul>
                        <li><a href=""><i class="fa fa-twitter"></i></a></li>
                        <li><a href=""><i class="fa fa-facebook"></i></a></li>
                        <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                        <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                      </ul>
                    </div> <!-- end .icon -->
                  </div> <!-- end .details -->
                </div> <!-- end .member -->
                  <!--
                <div class="title">
                  <h4>Daisy Baker</h4>
                  <h5>Marketer</h5>
                </div> <!-- end .title -->
              </div> <!-- end .info (4) -->

            </div> <!-- end .app-dev -->
          </div> <!-- end .container> .row -->

        </div> <!-- end .container -->
      </div> <!-- end .team -->
    </section>

    <!-- ====== Team Section ====== -->


    <!-- ====== Price Section ====== -->
<!--
    <section id="price">
      <div class="price section-padding dark-bg">
        <div class="container">

          <div class="header">
            <h1>Pricing</h1>
            <p>Want more Bootstrap themes & templates? Subscribe to our mailing list to receive an update when new items arrive! Akshara is a library to buy Bootstrap themes and templates for your business need. Want more Bootstrap themes & templates ? Want more Bootstrap themes & templates?</p>
            <div class="underline"><i class="fa fa-users"></i></div>
          </div> <!-- end .container> .header -->
<!--
          <div class="row">
            <div class="price-list">

              <div class="col-md-4"> 
                <div class="price-table">
                  <div class="rate">$0.00</div>
                  <h2>Free Download</h2>      
                  <p>Want more Bootstrap themes & templates? Subscribe to our mailing list to receive an update when new items arrive! </p>
                  <ul>
                    <li><i class="fa fa-check"></i>This Feature Available</li>
                    <li><i class="fa fa-check"></i>New options added</li>
                    <li><i class="fa fa-times"></i>Available</li>
                    <li><i class="fa fa-times"></i>Best Games free download</li>
                    <li><i class="fa fa-times"></i>Songs download app</li>
                    <li><i class="fa fa-times"></i>Custom music player</li>
                  </ul>
                  <a href="#download" class="btn btn-default buy-now">Download</a>
                </div> <!-- end .price-table -->
              </div> <!-- end .price-list> .col-md-4 (1) -->
<!--
              <div class="col-md-4"> 
                <div class="price-table featured-price">
                  <div class="rate">$1.99</div>
                  <h2>Standard</h2>
                  <p>Want more Bootstrap themes & templates? Subscribe to our mailing list to receive an update when new items arrive! </p>
                  <ul>
                     <li><i class="fa fa-check"></i>This Feature Available</li>
                    <li><i class="fa fa-check"></i>New options added</li>
                    <li><i class="fa fa-times"></i>Available</li>
                    <li><i class="fa fa-times"></i>Best Games free download</li>
                    <li><i class="fa fa-times"></i>Songs download app</li>
                    <li><i class="fa fa-times"></i>Custom music player</li>
                  </ul>
                  <a href="#download" class="btn btn-default buy-now">Buy Now</a>
                </div> <!-- end .price-table -->
              </div> <!-- end .price-list> .col-md-4 (2) -->
<!--
              <div class="col-md-4">
                <div class="price-table">
                  <div class="rate">$3.99</div> 
                  <h2>Premium</h2>
                  <p>Want more Bootstrap themes & templates? Subscribe to our mailing list to receive an update when new items arrive!</p>
                  <ul>
                    <li><i class="fa fa-check"></i>This Feature Available</li>
                    <li><i class="fa fa-check"></i>New options added</li>
                    <li><i class="fa fa-times"></i>Available</li>
                    <li><i class="fa fa-times"></i>Best Games free download</li>
                    <li><i class="fa fa-times"></i>Songs download app</li>
                    <li><i class="fa fa-times"></i>Custom music player</li>
                  </ul>
                  <a href="#download" class="btn btn-default buy-now">Buy Now</a>
                </div> <!-- end .price-table -->
              </div> <!-- end .price-list> .col-md-4 (3) -->

            </div> <!-- end .price-list -->
          </div> <!-- end .container> .row -->

        </div> <!-- end .container -->
      </div> <!-- end .price -->
    </section><!-- ====== End Price Section ====== -->


    <!-- ====== Subscribe Section ====== -->
        <!--
    <section id="subscribe">
      <div class="subscribe section-padding">
        <div class="container">
          <div class="subscribe-header">
            <h1>Newsletter</h1>
            <p>Commenting out the entire newsletter section makes the message box in
                the "Contact Us" section really small.</p>
            <form action="" class="form subscribe-form">
              <div class="form-group">
                <div class="input-group">
                  <label for="f-name" class="sr-only">Newsletter</label>
                  <input type="text" class="form-control" id="f-name" placeholder="Enter your email address">
                
                  <div class="input-group-addon">
                    <button class="btn" type="submit">SUBMIT</button>
                  </div>
                </div>
              </div>
            </form>
          </div>
            <!--
          <div class="social">
            <ul>
              <li><a class="twitter" href=""><i class="fa fa-twitter"></i></a></li> 
              <li><a class="facebook" href=""><i class="fa fa-facebook"></i></a></li> 
              <li><a class="google-plus" href=""><i class="fa fa-google-plus"></i></a></li> 
              <li><a class="youtube" href=""><i class="fa fa-youtube"></i></a></li> 
              <li><a class="linkedin" href=""><i class="fa fa-linkedin"></i></a></li> 
              <li><a class="pinterest" href=""><i class="fa fa-pinterest"></i></a></li> 
              <li><a class="dribbble" href=""><i class="fa fa-dribbble"></i></a></li> 
              <li><a class="flickr" href=""><i class="fa fa-flickr"></i></a></li>          
            </ul>
          </div>
        </div>
      </div>
    </section>
    <!-- ====== End Subscribe Section ====== -->

    <!-- ====== Download Section ====== -->
    <section id="download">
      <div class="bg-color">
        <div class="download section-padding">
          <div class="container">

            <div class="header">
              <h1>Download <strong>Citrine Photography App</strong> for your OS</h1>
                <!--
              <p>Want more Bootstrap themes & templates? Subscribe to our mailing list to receive an update when new items arrive! 
                  Akshara is a library to buy Bootstrap themes and templates for your business need. 
                  Want more Bootstrap themes & templates ? Want more Bootstrap themes & templates?</p>
                -->
              <div class="underline"><i class="fa fa-cloud-download"></i></div>
            </div> <!-- end .container > .header -->

            <div class="row download-area">
                <!--
              <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                <a href="" class="btn btn-default custom-btn download-btn">
                  <i class="fa fa-mobile"></i>
                  <div class="app-download">
                    <span>Download on the</span><strong>App Store</strong>
                  </div>
                </a>
              </div> <!-- end .download-area> .col-lg-3 (1) -->

              <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                <a href="" class="btn btn-default custom-btn download-btn">
                <img src="images/playstore.png" alt="">
                <div class="app-download">
                  <span>GET IT ON</span><strong>Google Play</strong>
                </div></a>
              </div> <!-- end .download-area> .col-lg-3 (2) -->
                <!--
              <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                <a href="" class="btn btn-default custom-btn download-btn">
                <i class="fa fa-windows"></i>
                <div class="app-download">
                  <span>Available for</span>Windows Phone
                </div>
                </a>
              </div> <!-- end .download-area> .col-lg-3 (3) -->
                <!--
              <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                <a href="" class="btn btn-default custom-btn download-btn">
                <img src="images/amazon.png" alt="">
                <div class="app-download">
                  <span>Available at</span><strong>Aamazon</strong>
                </div>
                </a>
              </div> <!-- end .download-area> .col-lg-3 (4) --> 

            </div> <!-- end .container > .row/.download-area -->

          </div> <!-- end .container -->
        </div> <!-- end .download -->
      </div> <!-- end .bg-color -->
    </section>
    <!-- ====== End Download Section ====== -->

    <!-- ====== Contact Section ====== -->
        <!--
    <footer id="subscribe">
      <div class="footer section-padding">
        <div class="container">
          <h1>Contact Us</h1>
          <form action="" class="form contact">

            <div class="row">
              <div class="col-xs-12 col-md-6">
                <div class="form-group">
                  <label for="name" class="sr-only">Name</label>
                  <input type="text" class="form-control" id="name" placeholder="Name">
                </div> <!-- end .form-group -->
                  <!--
                <div class="form-group">
                  <label for="email" class="sr-only">Email</label>
                  <input type="email" class="form-control" id="email" placeholder="Email">
                </div> <!-- end .form-group -->
        <!--
                <div class="form-group">
                  <label for="subject" class="sr-only">Subject</label>
                  <input type="text" class="form-control" id="subject" placeholder="Subject">
                </div> <!-- end .form-group -->
              </div> <!-- end .form> .row> .col-md-4 -->
              <!--
              <div class="col-xs-12 col-md-6">
                <div class="form-group">
                  <label for="message" class="sr-only">Message</label>
                  <textarea name="message" id="message" placeholder="Message"></textarea>
                </div> <!-- end .form-group -->
              </div>
            </div> <!-- end .form> .row -->
        <!--
            <button class="btn btn-default contact-submit custom-btn" type="submit"><i class="fa fa-hand-o-right"></i>SUBMIT</button>
          </form> <!-- end .form -->   
        </div> <!-- end .container -->
      </div> <!-- end .footer -->
    </footer>
    <!-- ====== End Contact Section ====== -->
    <!-- ====== Copyright Section ====== -->
    <section class="copyright dark-bg">
      <div class="container">
      <div class="row">
      <div class="col-lg-5 col-md-5">
        <p>&copy; 2015 <a href="http://www.citrinephotography.com/">Citrine Photography</a>, All Rights Reserved</p>
        </div>
         <div class="col-lg-5 col-md-5">
        <p><strong>Website is UNDER CONSTRUCTION</strong></p>
        </div>
        </div>
      </div> <!-- end .container -->
    </section>
    <!-- ====== End Copyright Section ====== -->
    <!-- jQuery -->
    <script src="http://code.jquery.com/jquery.min.js"></script>
    <script src="js/jquery.js"></script>
    <!-- Modernizr js -->
    <script src="js/modernizr-latest.js"></script>
    <!-- Bootstrap 3.2.0 js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Owl Carousel plugin -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- ScrollTo js -->
    <script src="js/jquery.scrollto.min.js"></script>
    <!-- LocalScroll js -->
    <script src="js/jquery.localScroll.min.js"></script>
    <!-- jQuery Parallax plugin -->
    <script src="js/jquery.parallax-1.1.3.js"></script>
    <!-- Skrollr js plugin -->
    <script src="js/skrollr.min.js"></script>
    <!-- jQuery One Page Nav Plugin -->
    <script src="js/jquery.nav.js"></script>
    <!-- jQuery Pretty Photo Plugin -->
    <script src="js/jquery.prettyPhoto.js"></script>
    <!-- Custom JS -->
    <script src="js/main.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            "use strict";

            jQuery("a[data-rel^='prettyPhoto']").prettyPhoto({ social_tools: false });
        });
    </script>
    </form>
</body>
</html>
