<?php
include 'connection.php'; 
?>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login | High Look Passion Online Store</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="tel:00919037988715"><i class="fa fa-phone"></i> +91 90379 88715</a></li>
								<li><a href="mailto:info@highlookpassionstore.com"><i class="fa fa-envelope"></i> info@highlookpassionstore.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index.html"><img src="images/home/logo.png" alt="" /></a>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
							<!-- 	<li><a href=""><i class="fa fa-user"></i> Account</a></li>
								<li><a href=""><i class="fa fa-star"></i> Wishlist</a></li>
								<li><a href="checkout.html"><i class="fa fa-crosshairs"></i> Checkout</a></li>
								<li><a href="cart.html"><i class="fa fa-shopping-cart"></i> Cart</a></li>
							 -->	<!-- <li><a href="login.html" class="active"><i class="fa fa-lock"></i> Login</a></li> -->
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<!-- <div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div> -->
						<!-- <div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="index.html">Home</a></li>
								<li class="dropdown"><a href="#">Collection<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="shop.html">Women</a></li>
										<li><a href="shop.html">Men</a></li> 
										<li><a href="shop.html">Kids</a></li> 
                                    </ul>
                                </li> 
                                <li><a href="new-arrival.html">New Arrival</a></li>
                                <li><a href="sale.html">Sale</a></li> 
							</ul>
						</div> -->
					</div>
				<!-- 	<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search"/>
						</div> -->
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	
	<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2 align="center">Create your account</h2>




							<form method="post" >
							<h1 align="center">REGISTER</h1> 


							<table align ="center" class="table" style="width: 400px;">
								
								<tr>
									<th> First Name </th>
									<td> <input type="text" name="firstname" required> </td> 
								</tr>


								<tr>
										<th> Last Name </th>
										<td> <input type="text" name="lastname" required> </td> 
								</tr>


								<tr>
										<th> Phone Number </th>
										<td> <input type="text" minlength="10" maxlength="10" name="number"> </td> 
								</tr>


								<tr>
										<th> Email </th>
										<td> <input type="email" name="email" required> </td> 
								</tr>
	

								<tr>
											<th> Password </th>
										<td > <input type="password" name="password" required> </td> 
								</tr>

								<tr>

									<td colspan="2" align="center"> <input type="submit" name="submit" value= "SUBMIT" class="btn btn-primary" style="color: white; width: 150px;"> </td>
								</tr>
								

							</table>
							</form>

						<!-- <form action="#">
							<input type="text" placeholder="Name" />
							<input type="email" placeholder="Email Address" />
							<span>
								<input type="checkbox" class="checkbox"> 
								Keep me signed in
							</span>
							<button type="submit" class="btn btn-default">Login</button>
						</form> -->
					</div><!--/login form-->
				</div>
				<!-- <div class="col-sm-1">
					<h2 class="#">OR</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form">
 -->						<!--sign up form-->
					<!-- 	<h2>New User Signup!</h2>
						<form action="#">
							<input type="text" placeholder="Name"/>
							<input type="email" placeholder="Email Address"/>
							<input type="password" placeholder="Password"/>
							<button type="submit" class="btn btn-default">Signup</button>
						</form>
					</div> -->
					<!--/sign up form-->
				<!-- </div> -->
			</div>
		</div>
	</section><!--/form-->


<?php  
 
if(isset($_POST['submit']))
{


extract($_POST);


	$sql = "SELECT user_email FROM user WHERE user_email='$email'";
$result = select($sql);
if($result!=null) {
    alert ("Email id already exist, try another email");
	}



else
	{
		

	echo $query="INSERT into user(user_firstname,user_lastname,user_mobile,user_email,user_password,user_type)values('$firstname','$lastname','$number','$email','$password','user')";	

	$id=insert($query);
	echo $id;
	alert("insertion success...");
	return redirect('login.php');

}
}
 ?>



<?php
include 'footer.php';

?>












