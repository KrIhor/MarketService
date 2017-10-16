<!DOCTYPE html>
<html lang="en" ng-app="RegistrationFormApp">


  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Our project</title>

    <!-- Bootstrap core CSS -->
    <link href="css/style.css" rel="stylesheet">
    <script src="js/angular.min.js"></script>
    <script src="js/validation.js"></script>
	<script src = "js/ng-Registration.js"></script>

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
        <li><a href="login">Sign in</a></li>
		 <li><a href="#">Sign up</a></li>
      </ul>
    </div>
  </div>
</nav>


<!--Form2-->


<form class="form-horizontal" ng-submit="myController.testHttpPost()" ng-controller="MyController as myController" action="/">
  <fieldset>
    <legend>Sign up</legend>
    <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">Email<span>*</span></label>
      <div class="col-lg-8">
        <input type="email" class="form-control" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"required  id="inputEmail" ng-model="myController.model.email" placeholder="Email">
      </div>
    </div>
	
	
    <div class="form-group">
	<label for="inputPassword" class="col-lg-2 control-label">Password<span>*</span></label>
    <div class="col-lg-8">
	 <label  ><h6>A form with a password field that must contain 8 or more characters that are of at least one number, and one uppercase and lowercase letter:</h6></label>
<input type="password" class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required  id="inputPassword" ng-model="myController.model.password" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" placeholder="Password">  
      </div>
    </div>
	
	  <div class="form-group">
      <label for="confirmPassword" class="col-lg-2 control-label">Confirm password<span>*</span></label>
      <div class="col-lg-8">
        <input type="password" class="form-control"  required id="confirmPassword" ng-model="myController.model.passwordConfirm" placeholder="Confirm Password">
      </div>
    </div>
	 
	 <div class="form-group">
      <label for="inputName" class="col-lg-2 control-label">Name<span>*</span></label>
      <div class="col-lg-8">
        <input type="text" class="form-control"  required  id="inputName"  ng-model="myController.model.firstName" pattern="[a-zA-Z]{2,64}" placeholder="Name">  
      </div>
    </div>
	
   <div class="form-group">
      <label for="inputLastName" class="col-lg-2 control-label">Last Name<span>*</span></label>
      <div class="col-lg-8">
        <input type="text" class="form-control" required  id="inputLastName" ng-model="myController.model.lastName" pattern="[a-zA-Z]{2,64}" placeholder="LastName">  
      </div>
    </div>
	
	 <div class="form-group">
      <label for="inputBirthday" class="col-lg-2 control-label">Birthday<span>*</span></label>
      <div class="col-lg-8">
        <input type="date" class="form-control" id="inputBirthday" placeholder="Birthday">  
      </div>
    </div>
   
   <div class="form-group">
      <label for="Phone" class="col-lg-2 control-label">Phone<span>*</span></label>
      <div class="col-lg-8">
        <input type="text" required  class="form-control" id="Phone" ng-model="myController.model.phone" placeholder="Phone">  
      </div>
    </div>
   
   
    
	<div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
	  <h6 ><span>*</span>Indicates required fields</h6>
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </div>
  </fieldset>
</form>

<script>
	var validation = new PasswordValidation();
	validation.setIds("inputPassword", "confirmPassword");
</script>

    

    
          


  </body>

</html>
