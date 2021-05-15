
<?php 
include 'connection.php';
include 'userheader.php';
?>



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
									<a href="userhome.php"><button type="button" class="btn btn-default get">Get it now</button></a>
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
									<a href="userhome.php"><button type="button" class="btn btn-default get">Get it now</button></a>
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
									<a href="userhome.php"><button type="button" class="btn btn-default get">Get it now</button></a>
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
											<div style="width:23%;float: left;margin:5px;" align="center"><a href="USP-viewproducts_detail&img.php ?pid=<?php echo $row['products_code'];?>">
											<img style="width: 100px; height: 160px;" src="<?php echo $row['productimage_path'];?>">
												
											<br>
											<h2>₹<?php echo $row['products_price'];?></h2><br>
											<p><?php echo $row['products_name'];?></p><br>
											<a href="USP-viewproducts_detail&img.php ?pid=<?php echo $row['products_code'];?>"class="btn btn-default add-to-cart">VIEW</a>
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
















						
	
	