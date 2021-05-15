<?php 
include 'connection.php';
$id=$_SESSION['logid'];

include 'userheader.php';

	
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<form method="post">

<body>

<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="userhome.php">Home</a></li>
				  <li class="active">Shopping Cart</li>
				</ol>
			</div>

			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">

							<td class="image">Item</td>
							<td class="description">Product</td>
							<td class="price">Price</td>
							<td>Size</td>
							<td class="quantity">Quantity</td>
							<!-- <td class="total">Place order</td> -->
							<td></td>
						</tr>
					</thead>
					<tbody>
						<?php
						$q="SELECT * FROM `cart` INNER JOIN `products` USING(`products_code`) INNER JOIN `productimage` USING(`products_code`) INNER JOIN `size` USING(`products_code`) WHERE `user_id`='$id' GROUP BY products_name";
// $q="SELECT * FROM cart INNER JOIN products ON cart.products_code=products.products_code INNER JOIN productimage ON  products.products_code=productimage.products_code inner join size using(size_id) WHERE cart.user_id=".$id." GROUP BY products_name";
$res=select($q);
// echo $q;
	foreach($res as $row)
	{
		?>
						<tr>
							<td class="cart_product">
								<a href=""><img style="width:100px; height:100px;" src="<?php echo $row ['productimage_path'];?>"></a>
							</td>
							<td class="cart_description">
								<h4><a href=""><?php echo $row['products_name']; ?></a></h4>
								<!-- <p>Web ID: 1089772</p> -->
							</td>
							<td class="cart_price">
								<p>₹<?php echo $row['products_price'];?></p>
							</td>
							<td>
								<p><?php echo $row['size'];?></p>
							</td>
							<td>
								<p><?php echo $row['cart_qnty'];?></p>
							</td>

							
			</td>


							<td class="cart_delete">
								<a class="cart_quantity_delete" href="deleteRedirect.php?cid=<?php echo $row['cart_id'];?>"><i class="fa fa-times"></i></a>
							</td>
						</tr>

	<?php
     }
?>		
			




						<td>
							<!-- 	<a href="usermanagecart_shippingaddress.php ?pid=<?php echo $row['products_code'];?>">Place Order</a>
							 -->	<!-- <p class="cart_total_price">₹59</p> -->
							</td>

					</tbody>
				</table>
			</div>
		</div>

		<?php 
	
	 $qr="SELECT SUM(cart.cart_qnty*products.products_price) AS total  FROM products INNER JOIN cart USING(products_code) WHERE cart.user_id=".$id;
	 $res=select($qr);
	 $t=$res[0]['total'];
	?>

	</section> <!--/#cart_items-->
	<table align="center">
		<th>Total Amount ₹</th>
		<td><input type="text" name="amt" value="<?php echo $t;?>" readonly></td>
		<td><input type="submit" name="buy" value="BUY NOW" align="center" style="background-color: #2d8585; font color: white; color: white;" ></td>

	</table>
	
	</body>
	</form>

</html>
<br>
<br>
<br>
<br>
<br>
	<?php
include 'footer.php';
?>

<?php 

 
if(isset($_POST['buy']))
{
	extract($_POST);
	extract($_GET);
	$total=$t;
	$flag=0;

	$q="SELECT * FROM `cart` INNER JOIN `products` USING(`products_code`) INNER JOIN `productimage` USING(`products_code`) INNER JOIN `size` USING(`products_code`) WHERE `user_id`='$id' GROUP BY products_name";
	$res=select($q);
// echo $q;
	foreach($res as $row)
	{
		if($flag==0)
		{

			echo $query1="INSERT INTO ordermaster(ordermaster_id,user_id,ordermaster_date,ordermaster_total,ordermaster_status)values(null,'$id',now(),'$total','pending')";
			$ids=insert($query1);
			echo $ids;
			$flag=1;
		}
		$pids=$row['products_code'];
		$quantitys=$row['cart_qnty'];
		$prices=$row['products_price'];

		echo $query2="INSERT INTO orderdetails(orderdetails_id,ordermaster_id,products_code,orderdetails_qnty,orderdetails_amt)values(null,'$ids','$pids','$quantitys','$prices')";
		$i=insert($query2);
		echo $i;

	}
	// $query3="delete from cart where user_id='$id'";
	// delete($query3);

 	redirect("usermanagecart_shippingaddress.php?id=".$ids);

 
// 	alert("insertion success...");

}

 ?>