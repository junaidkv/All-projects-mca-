<?php 
include 'connection.php';
$i=$_SESSION['logid'];

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


<?php
$q="SELECT cart.user_id,products.products_name,products.products_price,productimage.productimage_path FROM cart INNER JOIN products ON cart.products_code=products.products_code INNER JOIN productimage ON  products.products_code=productimage.products_code WHERE cart.user_id=$i";
$res=select($q);
echo $q;
	foreach($res as $row)
	{
		?>
		<tr>
	<!-- <td><?php echo $row['ca']; ?></td> -->
	<td><?php echo $row['user_id']; ?></td>
	<td><?php echo $row['products_name']; ?></td>
	<td><?php echo $row['products_price']; ?></td>


	<!-- <td><?php echo $row['cart_qnty']; ?></td> -->
	<td><img src="<?php echo $row ['productimage_path'];?>" width="100px" height="100px" /> </td>
		</tr>
	 <?php
	}?>
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