<%
response.setHeader("Cache-Control","no-store"); 
response.setHeader("Pragma","no-cache"); 
response.setHeader ("Expires", "0"); //prevents caching at the proxy server
%> 

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Login | Time Table Generator</title>

<!-- Bootstrap Core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<!-- Theme CSS -->
<link href="css/agency.min.css" rel="stylesheet">


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body style="background-image: url('img/lib.jpg'); background-attachment: fixed;">
	<!-- Navigation -->
	<nav id="mainNav"
		class="navbar navbar-default navbar-custom navbar-fixed-top"
		style="background-color: black">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<a class="navbar-brand page-scroll" href="#page-top">Time Table
					Generator</a>
			</div>
		</div>
	</nav>


	<div class=fluid-container>
		<br />
		<br />
		<br />
	</div>
	<div class=row>
		<div class="col-sm-1"></div>

		<div class="container col-sm-4 ">
			<div class=jumbotron>
				<h2 class=page-header>Login</h2>
				<form role="form" action="main" method=post>
					<div class="form-group">
						<label for="un">Username:</label> <input type="text"
							class="form-control" id="un" name=username>
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" id="pwd" name=password>
					</div>
					<div class="checkbox">
						<label><input type="checkbox"> Remember me</label>
					</div>
					<button type="submit" class="btn btn-primary">Login</button>
				</form>
			</div>
		</div>

		<div class="col-sm-1"></div>


		<div class="container col-sm-5">
			<div class=jumbotron>
				<h2 class=page-header>Signup</h2>
				<form role="form" action=register method=post>
					<div class="form-group">
						<label for="un">Username:</label> <input type="text"
							class="form-control" id="un" name=username>
					</div>

					<div class="form-group">
						<label for="email">Email address:</label> <input type="email"
							class="form-control" id="email" name=email>
					</div>

					<div class="form-group">
						<label for="country">Country:</label> <input type="text"
							class="form-control" id="country" name=country>
					</div>

					<div class="form-group">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" id="pwd" name=password>
					</div>

					<div class="form-group">
						<label for="cpwd">Confirm Password:</label> <input type="password"
							class="form-control" id="pwd" name=confirm>
					</div>


					<button type="submit" class="btn btn-primary">Signup</button>
				</form>
			</div>
		</div>


		<div class="col-sm-1"></div>
	</div>

	<!-- jQuery -->
	<script src="vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

	<!-- Contact Form JavaScript -->
	<script src="js/jqBootstrapValidation.js"></script>
	<script src="js/contact_me.js"></script>

	<!-- Theme JavaScript -->
	<script src="js/agency.min.js"></script>

</body>

</html>
