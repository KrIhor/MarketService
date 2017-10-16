<!DOCTYPE html>
<html ng-app="UserPage" lang="en">
<meta charset="UTF-8">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Our project</title>
	 <link href="css/style.css" rel="stylesheet">	
     <link href="css/my_style.css" rel="stylesheet">
     <script src="js/angular.min.js"></script>
     <script src="js/ng-user`s_page.js"></script>
  </head>

  <body id="page-top">
  <!-- Navigation -->
   <nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/">Home</a>
    </div>
  
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li ><a href="#">New shops </a></li>
		 <li ><a href="#">Top shops </a></li>
      
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
	  	  <li><a href="#">My profile</a></li>
        <li><a href="#">Sign out</a></li>
      </ul>
    </div>
  </div>
</nav>
  
  
   <div ng-controller="UserPageController as userPageController" class="container text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
     <div class="list-group "  >
  <a class="list-group-item active"> Menu </a>
  <a href="#" class="list-group-item">Edit profile </a>
  <a href="#" class="list-group-item">Item 2 </a>
  <a href="#" class="list-group-item">Item 3  </a>
</div>
    </div>
<div class="col-sm-8 text-left"> 
	<!-- Information  about user -->
    <div class="jumbotron ">
	<div  class="w3-right-align  ">
        <img ng-src="{{userPageController.userData.img}}" alt="Person" style="width: 30%" align="left">
   <header > 
 <h2 ><b >{{userPageController.userData.fullName}}</b></h2>
    </header>   <br>
     <p> Email : {{userPageController.userData.email}} </p>
     <p> Phone : {{userPageController.userData.phone}}</p>
  <a href="#" class="btn btn-default">+ More information</a>
		</div>
	</div>
 </div>
    <div class="col-sm-2 sidenav">
	
       <div class="alert alert-dismissible alert-danger">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <strong>Warning!</strong> <p> The subscription to the <a href="#" class="alert-link"> shop</a> ends in few days.</p>
</div>
    
      
       <div class="alert alert-dismissible alert-success">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <strong>Well done!</strong> You successfully paid a subscription to  <a href="#" class="alert-link">this shop</a>.
</div>
      
    </div>
  </div>
</div>
<!-- Own shops Grid Section -->
<div class="panel panel-primary">
  <h2 class="panel-heading text-center">Own shops</h2>
  <div class="panel-body">
    <section id="own_shops">
      <div class="container">
        <hr class="star-primary">
        <div class="row">
          <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
              <div class="caption">
                <div class="caption-content">
                  <i class="fa fa-search-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/3.jpg" alt="">
            </a>
          </div>
          <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal2" data-toggle="modal">
              <div class="caption">
                <div class="caption-content">
                  <i class="fa fa-search-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/2.jpg" alt="">
            </a>
          </div>
          <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal3" data-toggle="modal">
              <div class="caption">
                <div class="caption-content">
                  <i class="fa fa-search-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/5	.jpg" alt="">
            </a>
          </div>
        </div>
        <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="" data-original-title="Previous shops">  < </button>
        <button type="button" class="btn btn-default w3-right" data-toggle="tooltip" data-placement="right" title="" data-original-title="Next shops"> > </button>        
      </div>
    </section>
  </div>
</div>	
	</body>
</html>
