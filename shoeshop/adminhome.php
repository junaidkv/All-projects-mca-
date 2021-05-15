<?php 
include 'connection.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<style type="text/css">
		.row{
			width: 100%
		}
		.column{
			width: 50%
			float:left;
		}
	</style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | High Look Passion Online Store</title>
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


				<?php
					$q="SELECT * FROM `products` INNER JOIN `productimage` USING(`products_code`) group by products_code";
						$result=select($q);

				  ?>

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
							<a href="adminhome.php"><img src="images/home/logo.png" alt="" /></a>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="adminhome.php"><i class="fa fa-crosshairs "></i> Home</a></li>
								<!-- <li><a href="adminmanageproduct.php"><i class="fa fa-star"></i> UploadProducts</a></li> -->
									<div class="mainmenu pull-left">
									<ul class="nav navbar-nav collapse navbar-collapse">
								<!-- <li><a href="index.html">Home</a></li>
								 --><li class="dropdown"><a href="AMP_manageproduct.php">Uploadproducts<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="AMP_uploadproductimage.php">Image upload</a></li>
								
										<li><a href="AMP_uploadproductsize.php">Size Upload</a></li> 
                                    </ul>
                                </li> 
                                <!-- <li><a href="new-arrival.html">New Arrival</a></li>
                                <li><a href="sale.html">Sale</a></li>  -->
							</ul>
						</div>



								<!-- <li><a href="adminhome.php"><i class="fa fa-user"></i>View user</a></li> -->
							<!-- 	<li><a href="usermanagecart.php"><i class="fa fa-shopping-cart"></i>View User</a></li>
						 -->		<li><a href="adminvieworder.php"><i class="fa fa-star"></i>View Orders</a></li>
								<li><a href="index.php"><i class="fa fa-lock"></i> Logout</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->

	<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
												<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<h1><span>SUPER</span> SHOPPER</h1>
									<h2>Great Collection</h2>
									<p>Choose from the trendiest apparel to boost your style quotient. </p>
									<a href="index.php"><button type="button" class="btn btn-default get">Get it now</button></a>
								</div>
								<div class="col-sm-6">
									<img src="images/home/girl1.jpg" class="girl img-responsive" alt="" />
								<!-- 	<img src="images/home/pricing.png"  class="pricing" alt="" /> -->
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<h1><span>GOOD</span> QUALITY</h1>
									<h2>Genuine Leather Products</h2>
									<p>Be the first to know about our latest collections and offers. </p>
									<a href="index.php"><button type="button" class="btn btn-default get">Get it now</button></a>
								</div>
								<div class="col-sm-6">
									<img src="images/home/shoe2.jpg" class="girl img-responsive" alt="" />
								<!-- 	<img src="images/home/pricing.png"  class="pricing" alt="" /> -->
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<h1><span>GREAT</span> DISCOUNT</h1>
									<h2>Value for Money</h2>
									<p>Choose from the trendiest apparel to boost your style quotient. </p>
									<a href="index.php"><button type="button" class="btn btn-default get">Get it now</button></a>
                                </div>
								<div class="col-sm-6">
									<img src="images/home/girl3.jpg" class="girl img-responsive" alt="" />
								<!-- 	<img src="images/home/pricing.png" class="pricing" alt="" /> -->
								</div>
							</div>
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->


<section>
		<div class="container">
			
				<?php
					$q="SELECT * FROM `products` INNER JOIN `productimage` USING(`products_code`) group by products_code";
						$result=select($q);

							  ?>
			<!-- <div class="row">
				<div class="col-sm-10">
						<div class="col-sm-9 padding-right">
					<div class="features_items"> -->
						<!--features_items-->
						<h2 class="title text-center">Features Items</h2>
						<!-- <div class="col-sm-4">
							<div class="product-image-wrapper"> -->
							
								<?php foreach($result as $row){?>
								<!-- <div class="single-products"> -->
										<!-- <div class="productinfo text-center"> -->
											<div style="width:23%;float: left;margin:5px;" align="center"> 
											<img style="width: 100px; height: 160px;" src="<?php echo $row['productimage_path'];?>">
												
											<br>
											<h2>Rs<?php echo $row['products_price'];?></h2><br>
											<p><?php echo $row['products_name'];?></p><br>
											<!-- <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
										</div>
										<!-- </div> -->
										<!-- <div class="product-overlay"> -->

											<?php }  ?>
											
										<!-- </div> -->
								<!-- </div>
								 -->
							<!-- </div>
						</div>
					</div>
				</div>


 -->

<!-- 
				</div>
			</div>
 -->		</div>
	</section>


<?php
include 'footer.php';
?>































<!-- 
<!DOCTYPE html>
<html>
<head>
	<title>ADMIN HOME</title>
</head>
<body>
<form method="post">
<table align="right">
	<tr>
	
	<td colspan="2" align="right"> <input type="submit" name="LOGOUT" value="LOGOUT"> </td> 
</tr>

</table>
<table align="center">
<tr>
	<td>
	<a href="adminmanageproduct.php"> MANAGE PRODUCT</a>
	</td>
	<br>	
	<td>
	<a href="adminvieworder"> VIEW ORDER TRACK</a>
	</td>
</tr>	
</table>
</form>
</body>
</html> -->