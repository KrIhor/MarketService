<!DOCTYPE html>
<html lang="en">
  <head>
      <title>Our project</title>
	
      <link href="css/style.css" rel="stylesheet">
	  <link  rel="stylesheet" href="css/style.min.css">
	 <!-- <link  rel="stylesheet" href="bootstrap.min.css">-->
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
  </head>
  <body>
   <!-- Navigation -->
   <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Home</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="#">About us </a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login">Sign in</a></li>
		<li><a href="registration">Sign up</a></li>
      </ul>
    </div>
  </div>
</nav>
<header>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="image/slideshow/image4.jpg"  style="width:100%;height:550px">
        <div class="carousel-caption">
          <h3>Train</h3>  
        </div>
      </div>

      <div class="item">
        <img src="image/slideshow/image5.jpg"  style="width:100%; height:550px">
        <div class="carousel-caption">
          <h3>Mountain</h3>
        </div>
      </div>
    
      <div class="item">
        <img src="image/slideshow/image6.jpg"  style="width:100%;height:550px">
        <div class="carousel-caption">
          <h3>Forest</h3>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>


</header>

  <section id="new_shops">
      <div class="container">
        <h2 class="text-center">New shops</h2>
        <hr class="star-primary">
        <div class="row">
          <div class="col-sm-3 portfolio-item">
              <img class="img-fluid" src="image/slideshow/image4.jpg" alt="">
          </div>
          <div class="col-sm-3 portfolio-item">
              <img class="img-fluid" src="image/slideshow/image5.jpg" alt="">
          </div>
          <div class="col-sm-3 portfolio-item">
              <img class="img-fluid" src="image/slideshow/image6.jpg" alt="">
          </div>
		       <div class="col-sm-3 portfolio-item">
              <img class="img-fluid" src="image/slideshow/image1.jpg" alt="">
          </div>
		
        </div>
      </div>
    </section>
	
	
	
	  <section id="top_shops">
      <div class="container">
        <h2 class="text-center">Top shops</h2>
        <hr class="star-primary">
        <div class="row">
          <div class="col-sm-3 portfolio-item">
              <img class="img-fluid" src="image/slideshow/image4.jpg" alt="">
          </div>
          <div class="col-sm-3 portfolio-item">
              <img class="img-fluid" src="image/slideshow/image5.jpg" alt="">
          </div>
          <div class="col-sm-3 portfolio-item">
              <img class="img-fluid" src="image/slideshow/image6.jpg" alt="">
          </div>
		       <div class="col-sm-3 portfolio-item">
              <img class="img-fluid" src="image/slideshow/image1.jpg" alt="">
          </div>
		
        </div>
      </div>
    </section>
	 <hr class="star-primary">
	 
	 
	 <footer class="text-center">
      <div class="footer-above">
        <div class="container">
          <div class="row">
            <div class="footer-col col-md-4">
              <h3>Location</h3>
              <p>Lviv Polytechnic National University
                <br>Lviv, Ukraine</p>
            </div>
             <div class="footer-col col-md-4">
              <h3>About us</h3>
              <p>Funny student</p>
            </div>
            <div class="footer-col col-md-4">
              <h3>About Project</h3>
              <p>Project</p>
            </div>
          </div>
        </div>
      </div>
      <div class="footer-below">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              Copyright &copy; Our project 2017
            </div>
          </div>
        </div>
      </div>
    </footer>
	
	

  </body>
</html>