<?php 
include 'connection.php';
include 'userheader.php';
$logid=$_SESSION['logid'];
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
			<th>Order Status</th>
		</tr>
		<?php 
		
		// $q="SELECT * FROM `ordermaster` INNER JOIN `orderdetails` USING(`ordermaster_id`) INNER JOIN `products` USING(`products_code`) INNER JOIN `productimage` USING(`products_code`) INNER JOIN `user` USING(`user_id`) INNER JOIN `size` USING(`products_code`) INNER JOIN `payment` USING(`ordermaster_id`) WHERE `ordermaster_id`='$om_id'";

		$q="SELECT * FROM `ordermaster` INNER JOIN `orderdetails` USING(`ordermaster_id`) INNER JOIN `products` USING(`products_code`) INNER JOIN `productimage` USING(`products_code`) INNER JOIN `user` USING(`user_id`)  INNER JOIN `payment` USING(`ordermaster_id`) WHERE `payment`.`user_id`='$logid' AND `ordermaster_status`='Conform Order' or ordermaster_status='Delivered'";

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
				<td><?php echo $row['ordermaster_status']; ?></td>
		
			</tr>
		
	<?php	}
		 ?>
	</table>
	</center>
</form>

<?php 

include 'footer.php';
 ?>