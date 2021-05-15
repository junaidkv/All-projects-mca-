<?php  

include'connection.php';
include 'userheader.php';

?>
<?php
$q="SELECT * FROM `products` INNER JOIN `productimage` USING(`products_code`) INNER JOIN size USING(products_code) group by products_code";
	$result=select($q);

if(isset($_POST['search'])){
	extract($_POST);
	 $qry="SELECT * FROM `products` INNER JOIN `productimage` USING(`products_code`) INNER JOIN size USING(products_code) WHERE `products_name` LIKE '$productname%'";
	$result=select($qry);
}

?>


<br><br><br>
<form method="post" enctype="multipart/form-data">

<h1 align="center">PRODUCT SEARCH<hr size="10"></h1>


<table align="right"  style="width: 800px;">
<tr>

	<td class="search_box pull-right"> <input type="text" name="productname" style="margin-top: 15px;"></td> 	 <td><input type="submit"  name="search" value="Search" class="btn btn-primary" > </td> 
</tr>

</table>


<table align="center" class="table">

<tr>
	<th> Product Image </th>

	<th> Product Name </th>
	<th> Product Price </th>
	<th> Product Color </th>
	<!-- <th> Product Size </th> -->

</tr>	

<?php
	
	foreach($result as $row)
	{
		?>
<tr>

		<td><a href="USP-viewproducts_detail&img.php ?pid=<?php echo $row['products_code'];?>"><img src="<?php echo $row['productimage_path'];?>" width="200px" height="150px"></a>
	</td>

	<td><?php echo $row['products_name'];?></td>

		 		
		<td> <?php echo $row['products_price'];?></td> 
	
		 		
		<td> <?php echo $row ['products_color'];?> </td> 

		<!-- <td> <?php echo $row ['size'];?> </td> -->
	
	<!-- 	<td class="fa fa-shopping-cart"><a href="usermanagecart.php ?pid=<?php echo $row['products_code'];?>">Add to Cart</a></td> -->
	</tr>
		 	
				
		<?php
     }

	?>		  
					
	
</table>

	



	<?php
include 'footer.php';
?>