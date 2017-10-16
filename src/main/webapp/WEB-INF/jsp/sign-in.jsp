<!DOCTYPE html>
<html lang="en" ng-app="SignInApp">

  <head>
    <script src="js/angular.min.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="js/ng-SignInTest.js"></script>
    <title>Sign in</title>

    <!-- Bootstrap core CSS -->
    <link href="css/style.css" rel="stylesheet">

  </head>

  <body id="page-top">
 
    <!-- Navigation -->
   <nav class="navbar navbar-default">
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
        <li><a href="#">Sign in</a></li>
		 <li><a href="registration">Sign up</a></li>
      </ul>
    </div>
  </div>
</nav>

<!--Form-->
<form class="form-horizontal" ng-submit="signInController.testHttpPost()" ng-controller="SignInController as signInController" action="/">
  <fieldset>
    <legend>Sign in </legend>
    <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">Email</label>
      <div class="col-lg-8">
        <input type="text" class="form-control"  ng-model="signInController.model.email" required  id="inputEmail_sign_in" placeholder="Email">
      </div>
    </div>
	
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Password</label>
      <div class="col-lg-8">
        <input type="password" class="form-control"  ng-model="signInController.model.password"  required  id="inputPassword_sign_in" placeholder="Password">  
      </div>
    </div>
	
	 <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox" ng-model="signInController.model.checkbox" name="remember"> Remember me</label>
        </div>
      </div>
    </div>
	
	<div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </div>
  </fieldset>
  {{model}}
</form>

  </body>

</html>
