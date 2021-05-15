

<?php 
include 'connection.php';
include 'userheader.php';
extract($_GET);
$log_id=$_SESSION['logid'];
$pid;
?>	
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<form method="post"  enctype="multipart/form-data">

<body>

	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<div class="shipping text-center"><!--shipping-->
						<?php echo  $_GET['pid'];?>
							<img src="images/home/shipping.jpg" alt="" />
						</div><!--/shipping-->
						
					</div>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="product-details"><!--product-details-->
						<div class="col-sm-5">
							<div class="view-product">


	<?php $q="SELECT * FROM products INNER JOIN productimage USING (products_code) where products_code=".$_GET['pid'];
	// echo $q;
	$result=select($q);
	foreach($result as $row){
	?>
		<tr>
		 <td colspan="2" align="center"><img src="<?php echo $row['productimage_path'];?>" width="100px" height="100px"></td> 
			</tr>

<?php
}



	$q="SELECT * FROM products where products_code=".$_GET['pid'];
	// echo $q;
	$result=select($q);
	foreach($result as $row)
	{
		?>

								<!-- <img src="images/product-details/1.jpg" alt="" /> -->
							</div>
							<div id="similar-product" class="carousel slide" data-ride="carousel">
								
								  <!-- Wrapper for slides -->
								    <div class="carousel-inner">
										<div class="item active">
										  <a href=""><img src="images/product-details/similar1.jpg" alt=""></a>
										  <a href=""><img src="images/product-details/similar2.jpg" alt=""></a>
										  <a href=""><img src="images/product-details/similar3.jpg" alt=""></a>
										</div>
										<div class="item">
										  <a href=""><img src="images/product-details/similar1.jpg" alt=""></a>
										  <a href=""><img src="images/product-details/similar2.jpg" alt=""></a>
										  <a href=""><img src="images/product-details/similar3.jpg" alt=""></a>
										</div>
										
										
									</div>

								  <!-- Controls -->
								  <a class="left item-control" href="#similar-product" data-slide="prev">
									<i class="fa fa-angle-left"></i>
								  </a>
								  <a class="right item-control" href="#similar-product" data-slide="next">
									<i class="fa fa-angle-right"></i>
								  </a>
							</div>

						</div>
						<div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
								<img src="images/product-details/new.jpg" class="newarrival" alt="" />
								<h2><?php echo $row['products_name'];?></h2>
								<!-- <p>Web ID: 1089772</p>
 -->								<!-- <img src="images/product-details/rating.png" alt="" /> -->
								<span>
									<span>₹<?php echo $row['products_price'];?></span>
									<!-- <label>Quantity:</label> -->
									

									<input type="hidden" name="price" value="<?php echo $row['products_price'];?>">
									
									<div class="dropdown">

									<td >SIZE	<br><select name="size" >
					<?php
					$qry="SELECT * FROM size where products_code=".$_GET['pid'];

					// $qry = "SELECT size.size_id,size.size,size.products_code FROM cart INNER JOIN products ON cart.products_code=products.products_code INNER JOIN size ON products.products_code=size.products_code WHERE cart.user_id=".$id;
					$res = select($qry);
					foreach ($res as $row) 
					{
						echo '<option value="'.$row['size_id'].'">'.$row['size'].'</option>';	
					}
					?>


				</select> 

			</td>
</div>
			<th> quty</th> 

		 		<td> <input type="number" name="quantity" required> </td>

									<!-- <button type="button" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Add to cart
									</button>
							 -->	</span>
								<p><b>Availability:</b> In Stock</p>
								<p><b>Condition:</b> New</p>
								<input type="submit" name="cart" value="CART" class="btn btn-primary">

								
								<input type="submit" name="buy" value="BUY NOW" class="btn btn-primary">
								<input type="hidden" name="pid" value="<?php echo $row['products_code'];?>">
								<!-- <p><b>Brand:</b><?php echo $row['products_name'];?></p> -->
								<!-- <a href="?pids=<?php echo $row['products_code'];?>&pid=<?php echo $row['products_code'];?>&size=<?php echo $row['size'];?>&quantity=<?php echo $quantitys;?>"class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
										
								<a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
							</div><!--/product-information-->
						</div>
					</div><!--/product-details-->
					
						<?php
     }

	?>
						<div class="col-sm-12">
							
						</div>
							
						</div>
					</div><!--/category-tab-->
					
					<div class="recommended_items"><!--recommended_items-->
						<h2 class="title text-center">recommended items</h2>
						
						<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="item active">	
									<div class="col-sm-4">
										
											



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
											<a href="?pid=<?php echo $row['products_code'];?>"class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
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



										</div>
									</div>
									
								</div>
								
							
					</div><!--/recommended_items-->
					
				
		
		
	</section>

	</body>
	</form>
</html>

	<?php
include 'footer.php';
// if(isset($_GET['pids'])){
// 	extract($_GET);
if(isset($_POST['cart'])){
	extract($_POST);
	extract($_GET);
	echo $qs="select * from cart where products_code='$pid' and user_id='$log_id'";
	$resultss=select($qs);
	echo sizeof($resultss);
	if(sizeof($resultss)>0)
	{
		echo $qd="update cart set cart_qnty=cart_qnty+'$quantity' where user_id='$log_id' and products_code='$pid'";
		update($qd);
	}
	else{
		echo "hellooo";
		echo $qd="INSERT INTO `cart`(`user_id`,`products_code`,`cart_qnty`)VALUES('$log_id','$pid','$quantity')";
		insert($qd);
	}


}
else if(isset($_POST['buy']))
{
	extract($_POST);
	extract($_GET);
	$total=$price*$quantity;
	echo $query1="INSERT INTO ordermaster(ordermaster_id,user_id,ordermaster_date,ordermaster_total,ordermaster_status)values(null,'$log_id',now(),'$total','pending')";
	$id=insert($query1);
	echo $id;


 echo $query2="INSERT INTO orderdetails(orderdetails_id,ordermaster_id,products_code,orderdetails_qnty,orderdetails_amt)values(null,'$id','$pid','$quantity','$price')";
 	$i=insert($query2);
 	echo $i;

 	redirect("usermanagecart_shippingaddress.php?id=".$id);

 
// 	alert("insertion success...");

}




?>


