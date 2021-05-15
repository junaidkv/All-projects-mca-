<?php
include 'connection.php';
if(isset($_GET['pid']))
{
	extract($_GET);
	$i=$_SESSION['logid'];
	$pdt=$_GET['pid'];
	$qnt=$_GET['qntid'];
	$shoesize=$_GET['sizeid'];
	echo $query="INSERT into cart(user_id,products_code,cart_qnty)values('$i','$pdt',$qnt)";	

	$id=insert($query);
	echo $id;
	alert("insertion success...");


 
}

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


</table>
<table align="center" class="table">


	<?php $q="SELECT * FROM products INNER JOIN productimage USING (products_code) WHERE products_code=".$_GET['pid']." GROUP BY products_code";
	echo $q;
	$result=select($q);
	foreach($result as $row){
	?>
		<tr>
			 <td colspan="2" align="center"><img src="<?php echo $row['productimage_path'];?>" width="100px" height="100px"></td> 
			</tr>

<?php
}

	$_GET['pid'];
	$q="SELECT * FROM products where products_code=".$_GET['pid'];
	echo $q;
	$result=select($q);
	foreach($result as $row)
	{
		?>
			<tr>
				<th> Product Name </th>
				<td><?php echo $row['products_name'];?></td> 
			</tr>
		 	<tr>
		 		<th> Product Price </th>
		 		<td> <?php echo $row['products_price'];?></td> 
		 	</tr>
		 	<tr>
		 		<th> Product Color </th>
		 		<td> <?php echo $row ['products_color'];?> </td> 

		 	</tr>
		 	
	
		 	<tr>
		 		<td><a href="usermanagecart-shippingaddress.php ?pid=<?php echo $row['products_code'];?>">Place Order</a></td>
		 	</tr>
		 	<tr>
		 		<td><a href="USP-viewproductlist ?pid=<?php echo $row['products_code'];?>">Remove</a></td>
		 	</tr>	 	
					 	
	</tr>
</table>

	<?php
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