<?php 
include 'connection.php';
include 'adminheader.php';
extract($_GET);
 ?>

<form method="post">
	<center>
		<h2>Confirm Order</h2>
	<table class="table" style="width: 1200px;">
		<tr>
			
			<th>orderdetails_qnty</th>
			<th>orderdetails_amt</th>
			<th>products_name</th>
			<th>products_color</th>
			<th>productimage_path</th>
			<!-- <th>size</th> -->
			<th>payment_type</th>
			<th>payment_date</th>
			<th>payment_amt</th>
		</tr>
		<?php 
		
		// $q="SELECT * FROM `ordermaster` INNER JOIN `orderdetails` USING(`ordermaster_id`) INNER JOIN `products` USING(`products_code`) INNER JOIN `productimage` USING(`products_code`) INNER JOIN `user` USING(`user_id`) INNER JOIN `size` USING(`products_code`) INNER JOIN `payment` USING(`ordermaster_id`) WHERE `ordermaster_id`='$om_id'";

		$q="SELECT * FROM `ordermaster` INNER JOIN `orderdetails` USING(`ordermaster_id`) INNER JOIN `products` USING(`products_code`) INNER JOIN `productimage` USING(`products_code`) INNER JOIN `user` USING(`user_id`)  INNER JOIN `payment` USING(`ordermaster_id`) WHERE `ordermaster_id`='$om_id'";

		$res=select($q);
		foreach ($res as $row ) { ?>

			<tr>
				<td><?php echo $row['orderdetails_qnty']; ?></td>
				<td><?php echo $row['orderdetails_amt']; ?></td>
				<td><?php echo $row['products_name']; ?></td>
				<td><?php echo $row['products_color']; ?></td>
				<td><img style="width: 150px; height: 150px;" src="<?php echo $row['productimage_path']; ?>"></td>
				<!-- <td><?php echo $row['size']; ?></td> -->
				<td><?php echo $row['payment_type']; ?></td>
				<td><?php echo $row['payment_date']; ?></td>
				<td><?php echo $row['payment_amt']; ?></td>
				<?php 
				if($row['ordermaster_status']=="Paid") { ?>

					<td><input type="submit" name="confirm" value="Confirm"></td>
				
			<?php	} 
			?>
				
			</tr>
		
	<?php	}
		 ?>
	</table>
	</center>
</form>

<?php 
if(isset($_POST['confirm']))
{
	extract($_POST);
	//extract($_GET);
	//$ids=$_SESSION['logid']
	$qry="UPDATE `ordermaster` SET `ordermaster_status`='Conform Order' WHERE `ordermaster_id`='$om_id'";

	update($qry);
	alert("Order Conform sucessful");
	return redirect('adminvieworder.php');
	
}
include 'footer.php';
 ?>