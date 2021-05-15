<?php 
include 'connection.php';
session_start();
$id=$_SESSION['logid'];

 ?>
?>
 <?php 

include 'userheader.php';
?>


<!DOCTYPE html>
<html>
<head>
	<title>VIEW CART</title>
</head>
<body>
<form method="post" enctype="multipart/form-data">
<h1 align="center">VIEW CART<hr size="10"></h1>

<table align="right">
	<tr>
	
	<td colspan="2" align="right"> <input type="submit" name="BACK" value="BACK"> </td> 
</tr>

</table>
<table align="center" >


	 <!-- <?php $q="SELECT * FROM products INNER JOIN productimage USING (products_code) WHERE products_code=".$_GET['pid']."GROUP BY products_code";
	// echo $q;
	//$result=select($q);
	//foreach($result as $row){
	?> -->
<?php
$q="SELECT * from cart";
	$result=select($q);

	//<?php
					//$q="SELECT * FROM `products` INNER JOIN `productimage` USING(`products_code`) group by products_code";
					//	$result=select($q)


//foreach($q as $cs)
// 	foreach($result as $row)
// {	$pid=$row['productcode'];

// 	$g1="select* from product where productcode="pid';
// 	$result=select($g1)

// 	foreach($result as $row)
// 	{	
// 		$q1="select * from productimage where productid="$g['productcode'];
// 		$result=select($q1);
		
// 		foreach($q1 as $jm1)
// 		{
			

// 		<tr>
// 			 <td colspan="2" align="center"><img src="<?php echo $jm1['productimage_path'];?>" width="100px" height="100px"></td> 
// 			</tr>

// //<?php


//	$_GET['pid'];
//	$q="SELECT * FROM products where products_code=".$_GET['pid'];
//	echo $q;
//	$result=select($q);
//	foreach($result as $row)
//	{	
			<tr>
				<th> Product Name </th>
				<td><?php echo $jm['products_name'];?></td> 
			</tr>
		 	<tr>
		 		<th> Product Price </th>
		 		<td> <?php echo $jm['products_price'];?></td> 
		 	</tr>
		 	<tr>
		 		<th> Product Color </th>
		 		<td> <?php echo $jm['products_color'];?> </td> 

		 	</tr>
		 	
	
		 	<tr>
		 		<td><a href="usermanagecart-shippingaddress.php ?pid=<?php echo $row['products_code'];?>">Place Order</a></td>
		 	</tr>
		 	<tr>
		 		<td><a href="USP-viewproductlist ?pid=<?php echo $row['products_code'];?>">Remove</a></td>
		 	</tr>
		 	
				
		<?php} ?>		  
					
					 	
					 	
	</tr>
</table>
<table>
	<tr>
		<td>
			<br>
			<br>
			<br>
		</td>
	</tr>
</table>
	<?php
     }
}
	?>
						
	</tr>
</table>
<table align="center">
	<tr>
		 		<th> quantity</th>
		 		<td> <input type="number" name="quantity"> </td>
		 	</tr>
</table>
<?php
include 'footer.php';
?>