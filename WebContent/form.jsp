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

<title>Home | Time Table Generator</title>

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

<body>
<body id="page-top" class="index"
	style="background-image: url('img/lib.jpg'); background-attachment: fixed;">

	<!-- Navigation -->
	<nav id="mainNav"
		class="navbar navbar-default navbar-custom navbar-fixed-top" style="background-color: black">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> Menu <i
						class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand page-scroll" href="#page-top">Time Table
					Generator</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li class="hidden"><a href="#page-top"></a></li>
					<li><a class="page-scroll" href="${pageContext.request.contextPath}">Home</a></li>
					<li><a class="page-scroll" href="how-to-use">How to Use?</a></li>
					<li><a class="page-scroll" href="logout">Logout</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
	</nav>
	<!-- form begins -->
	<hr>

	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<div class="jumbotron"
				style="padding: 30px; padding-left: 100px; margin: 20px;">

				<h4>Please fill-in all required details to generate your
					college Time-Table.</h4>
				<hr>
				<form role="form" action="view_timetable" method="post" name="form"
					id="form">

					<div class="	form-group">
						<label for="hours">Slots or Periods of study (per day):</label> <input
							type="number" class="form-control" id="hours" name="hoursperday"
							style="width: 80%" oninput="sendInfo3()" required>
					</div>
					<div id="3"></div>
					<hr>

					<div class="form-group">
						<label for="break">Insert Break after period number (skip
							if no break):</label> <input type="number" class="form-control"
							id="break" name="breakslot" style="width: 80px">
					</div>
					<hr>

					<div class="form-group">
						<label for="days">No. of days (per week):</label> <input
							type="number" class="form-control" id="days" name="daysperweek"
							style="width: 80%" oninput="sendInfo5()" required>
					</div>
					<div id="5"></div>
					<hr>

					<div class="form-group">
						<label for="noteachers">No of Teachers:</label> <input
							type="number" class="form-control" id="noteachers"
							oninput="sendInfo()" name="noteacher" style="width: 80%" required>
					</div>
					<div id="1"></div>
					<hr>

					<div class="form-group">
						<label for="nostgrp">No. of Batches:</label> <input
							type="number" class="form-control" id="nostgrp"
							oninput="sendInfo2()" name="nostudentgroup" style="width: 80%"
							required>
					</div>

					<div id="2"></div>
					<br /> <span>*subject names alotted to a batch must be from the
						subjects taught by teachers (Ignore case)</span><br /> <span>**total hours of
						study for any batch must not exceed total available hours</span>
					<hr>

					<button type="submit" class="btn btn-default">Submit</button>

				</form>
				<hr />
				<span
					style="text-decoration: underline; text-shadow: black; font-size: medium;"><a
					href="view-timetable"><i>Test with custom input
							(Development Purpose only)</i></a></span>
			</div>
		</div>

		<div class="col-sm-2"></div>
	</div>

	<!-- jQuery -->
	<script src="vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

	<!-- Theme JavaScript -->
	<script src="js/agency.min.js"></script>

	<script type="text/javascript" src="vendor/bootstrap/js/custom.js"></script>
</body>

</html>
