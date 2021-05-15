<?php 
include 'connection.php';
if(isset($_POST['view']))
{
	return redirect('USP-viewproducts-detail&img.php');
}
// elseif (isset($_POST['BACK'])) {

// 	return redirect('userhome.php');
// }


 ?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<form method="post" enctype="multipart/form-data">
<h1 align="center">VIEW PRODUCT LIST<hr size="10"></h1>

<!-- <table align="right">
	<tr>
	
	<td colspan="2" align="right"> <input type="submit" name="BACK" value="BACK"> </td> 
</tr>

</table>
 -->
<?php
	$q="SELECT * FROM `products` INNER JOIN `productimage` USING(`products_code`) group by products_code";
	$result=select($q);
	foreach($result as $row)
	{
		?>
		<table align="center" >
		<tr>
			 <td colspan="2" align="center"><a href="USP-viewproducts_detail&img.php?pid=<?php echo $row['products_code'];?>"><img src="<?php echo $row['productimage_path'];?>" width="100px height="100px"></a></td> 
			</tr>
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
		 		<td><a href="usermanagecart.php?pid=<?php echo $row['products_code'];?>">Add to Cart</a></td>
		 	</tr>
		 	
				
				  
					
					 	
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

	?>

</form>
</body>
</html>
