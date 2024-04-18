<?php
session_start();
if(!isset($_SESSION['aname'])){
  header('location:registration/admin.php');
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>यात्रा Sathi</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

  
</head>

<body id="body">



 



  <!--==========================
    Header
  ============================-->
  <div class='main-wrapper'>
  <header id="header">
  <div class="container">
    <div id="logo" class="pull-left">
      <h1><a href="#body" class="scrollto">यात्रा<span>Sathi</span></a></h1>
    </div>


    <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="#body">Home</a></li>
          <li><a href="booking.php">Check Booking</a></li>
          <li><a href="bookingdetail.php">Journey Date</a></li>
          
          
       
        
        <!-- Buttons should be inside list items -->
        
        <li><div class="btn-admin" onclick="window.location.href='registration/a.php'"> Calculate Revenue</div></li>
<li><div class="btn-login" onclick="window.location.href='registration/logout.php'">Logout</div></li>
      </ul>
    </nav><!-- #nav-menu-container -->
  </div>
</header><!-- #header -->



  <!--==========================
    Intro Section
  ============================-->


  <section id="intro">

    <div class="intro-content">
      <h2>Navigate <span>Your Journey</span><br>With Ease!</h2>
      <div>
        <a href="registration/busdetail.php" class="btn-get-started scrollto">Add Bus Details</a>
      </div>
    </div>

    <div id="intro-carousel" class="owl-carousel" >
      <div class="item" style="background-image: url('img/bus1.jpg');"></div>
      <div class="item" style="background-image: url('img/bus2.jpg');"></div>
      <div class="item" style="background-image: url('img/bus3.jpg');"></div>
      <div class="item" style="background-image: url('img/bus4.jpg');"></div>
      <div class="item" style="background-image: url('img/bus5.jpg');"></div>
      <div class="item" style="background-image: url('img/bus6.jpg');"></div>
      <div class="item" style="background-image: url('img/bus7.jpg');"></div>
      <div class="item" style="background-image: url('img/intro-carousel/5.jpg');"></div>
    </div>

</div>
  <!--==========================
    Intro Ends Here
  ============================-->




  </section><!-- #intro -->

  <main id="main">  
    <section id="portfolio" class="wow fadeInUp">
      <div class="container">
        <div class="section-header">
          <h2>Our Portfolio</h2>
          <p>Streamline your transportation needs with our comprehensive bus management solutions.
             From efficient route planning to top-notch fleet maintenance, we ensure seamless operations.
              Trust us to drive your business forward with reliability and excellence.  </p>
        </div>
      </div>

      <div class="container-fluid">
        <div class="row no-gutters">

          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="img/port1.png" class="portfolio-popup">
                <img src="img/port1.png" alt="" style="height:350px;">
                <div class="portfolio-overlay">
                  <div class="portfolio-info"><h2 class="wow fadeInUp"></h2></div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="img/port2.png" class="portfolio-popup">
                <img src="img/port2.png" alt="" style="height:350px;">
                <div class="portfolio-overlay">
                  <div class="portfolio-info"><h2 class="wow fadeInUp"></h2></div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="img/port3.png" class="portfolio-popup">
                <img src="img/port3.png" alt=""style="height:350px;">
                <div class="portfolio-overlay">
                  <div class="portfolio-info"><h2 class="wow fadeInUp"></h2></div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="img/port4.png" class="portfolio-popup">
                <img src="img/port4.png" alt=""style="height:350px;">
                <div class="portfolio-overlay">
                  <div class="portfolio-info"><h2 class="wow fadeInUp"></h2></div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="img/port5.png" class="portfolio-popup">
                <img src="img/port5.png" alt=""style="height:350px;">
                <div class="portfolio-overlay">
                  <div class="portfolio-info"><h2 class="wow fadeInUp"></h2></div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="img/port6.png" class="portfolio-popup">
                <img src="img/port6.png" alt=""style="height:350px;">
                <div class="portfolio-overlay">
                  <div class="portfolio-info"><h2 class="wow fadeInUp"></h2></div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="img/port7.png" class="portfolio-popup">
                <img src="img/port7.png" alt=""style="height:350px;">
                <div class="portfolio-overlay">
                  <div class="portfolio-info"><h2 class="wow fadeInUp"></h2></div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="portfolio-item wow fadeInUp">
              <a href="img/port8.png" class="portfolio-popup">
                <img src="img/port8.png" alt=""style="height:350px;">
                <div class="portfolio-overlay">
                  <div class="portfolio-info"><h2 class="wow fadeInUp"></h2></div>
                </div>
              </a>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #portfolio -->


     <section id="Partners" class="wow fadeInUp">
      <div class="container">
        <div class="section-header">
          <h2> Our Partners</h2>
          <p>At the heart of our achievements lie formidable collaborations, forging pathways to innovation and excellence.
             Through strategic alliances with industry titans, we pioneer groundbreaking solutions and elevate service standards,
             igniting mutual prosperity and surpassing the expectations of our valued clientele.</p>
        </div>

        <div id="wrapper_partner">
        <div class="owl-carousel clients-carousel">
          <img src="img/partner1.jpg" alt="">
          <img src="img/partner2.jpg" alt="">
          <img src="img/partner3.jpg" alt="">
          <img src="img/partner4.jpg" alt="">
          <img src="img/partner5.jpg" alt="">
          <img src="img/partner6.jpg" alt="">
          <img src="img/partner7.jpg" alt="">
          <img src="img/partner8.jpg" alt="">
        </div>
        </div>

      </div>
    </section><

    <!--==========================
      About Section
    ============================-->
    <section id="about" class="wow fadeInUp">
      <div class="container">
        

      </div>
    </section><!-- #about -->

   

   
    
  </main>

  
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>SOUVIK.ISTE</strong>. All Rights Reserved
      </div>
      <div class="credits">
       
        Designed by <a href="#">Souvik</a>
      </div>
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/magnific-popup/magnific-popup.min.js"></script>
  <script src="lib/sticky/sticky.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>
