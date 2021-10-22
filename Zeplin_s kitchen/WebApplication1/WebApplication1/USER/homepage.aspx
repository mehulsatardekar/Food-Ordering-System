<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebApplication1.USER.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Zeplin's</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <link rel="icon" href="../../../../favicon.ico"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css"/>
    
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
    integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
    crossorigin="anonymous">
    </script>
    
   <script>
     function deferVideo() {
        //defer html5 video loading
        $("video source").each(function() {
        var sourceFile = $(this).attr("data-src");
        $(this).attr("src", sourceFile);
        var video = this.parentElement;
        video.load();
        // uncomment if video is not autoplay
        //video.play();
        });
      }
window.onload = deferVideo;
   </script>

    <link href="https://fonts.googleapis.com/css?family=Libre+Baskerville:700" rel="stylesheet"/>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"/>

    <!-- Custom styles for this template -->
    <link href="../CSS/homepage/homepage.css" rel="stylesheet"/>




</head>
<body>
    <form id="form1" runat="server">
       <nav class="site-header sticky-top py-1  bg-default ">
      <div class="container d-flex flex-column flex-md-row justify-content-between">
        <a class="py-2" href="#">
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="d-block mx-auto"><circle cx="12" cy="12" r="10"></circle><line x1="14.31" y1="8" x2="20.05" y2="17.94"></line><line x1="9.69" y1="8" x2="21.17" y2="8"></line><line x1="7.38" y1="12" x2="13.12" y2="2.06"></line><line x1="9.69" y1="16" x2="3.95" y2="6.06"></line><line x1="14.31" y1="16" x2="2.83" y2="16"></line><line x1="16.62" y1="12" x2="10.88" y2="21.94"></line></svg>
        </a>
        
        
       
        <a class="py-2 d-none d-md-inline-block " href="login.aspx">Login</a>
       
      </div>
    </nav>

    <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
      <div class="col-md-5 p-lg-5 mx-auto my-5 ">
        <h1 class="display-4 font-weight-normal animated bounceInLeft" id="dp">Zeplin's kitchen</h1>
        <p id ="hide" class="lead font-weight-normal animated bounceOut">bhel delivered faster than bail.order food online get bang for your buck</br>and get disconts on special dishesh</p>
        <a class="btn btn-outline-secondary" href="signup.aspx">Sign up</a>
      </div>
      <div class="product-device shadow-sm d-none d-md-block animated slideInUp delay-2s"></div>
      <div class="product-device product-device-2 shadow-sm d-none d-md-block "></div>
    </div>

    

    <div class="d-md-flex flex-md-equal w-100 my-md-3 pl-md-3">
      <div class="bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 p-3">
          <h2 class="display-5 font">Are you feeling hungry?</h2>
          <p class="lead">don't wait any longer order online</p>
        </div>
          
            <img class="responsive" alt="food image" src="../IMAGES/homepage/food_delivery.jpg"/>
          
      </div>
      <div class="bg-primary mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 py-3">
          <h2 class="display-5 ">Select , Add to cart and order</h2>
          <p class="lead">Nothing is better than going home to family and eating good food and relaxing.</p>
        </div>
        <div class="bg-light shadow-sm mx-auto back" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
          
        </div>
      </div>
      
    </div>

    <div class="jumbotron jumbotron-fluid">

      <video autoplay muted loop poster="https://dummyimage.com/900x400/000/fff">    
          <source src="" data-src="../VIDEOS/Adventures In Imagination_ M.mp4" type="video/mp4">
      </video>
      
        <div class="container text-white">
      
          <h1 class="display-4">Beyond the boundaries of taste</h1>
          <p class="lead">A recipe has no soul you as the cook must bring soul to the recipe.</p>
          <hr class="my-4">
          <p>To see how to order food in just 5 minute just click on learn more.</p>
          <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
      
        </div>
        <!-- /.container -->
      </div>
      <!-- /.jumbotron -->

    <footer class="container-fluid py-5 footercolor">
      <div class="row">
        <div class="col-12 col-md">
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="d-block mb-2"><circle cx="12" cy="12" r="10"></circle><line x1="14.31" y1="8" x2="20.05" y2="17.94"></line><line x1="9.69" y1="8" x2="21.17" y2="8"></line><line x1="7.38" y1="12" x2="13.12" y2="2.06"></line><line x1="9.69" y1="16" x2="3.95" y2="6.06"></line><line x1="14.31" y1="16" x2="2.83" y2="16"></line><line x1="16.62" y1="12" x2="10.88" y2="21.94"></line></svg>
          <small class="d-block mb-3 text-muted">&copy; 2018-2019</small>
        </div>
        <div class="col-6 col-md">
          <h5>About Us</h5>
          <ul class="list-unstyled text-small">
            <li><a class="text-muted" href="#">Contact us</a></li>
            <li><a class="text-muted" href="#">Privacy</a></li>
            <li><a class="text-muted" href="#">Terms</a></li>
            <li><a class="text-muted" href="#">Security</a></li>
            
          </ul>
        </div>
        
        <div class="col-6 col-md">
          <h5>Resources</h5>
          <ul class="list-unstyled text-small">
            <li><a class="text-muted" href="#">Instagram</a></li>
            <li><a class="text-muted" href="#">Facebook</a></li>
            <li><a class="text-muted" href="#">Github</a></li>
            <li><a class="text-muted" href="#">Youtube</a></li>
            
            
          </ul>
        </div>
       
      </div>
    </footer>
    </form>
     <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/holder/2.9.6/holder.min.js"></script>
    <script>
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
    </script>
</body>
</html>
