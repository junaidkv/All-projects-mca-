<?php 
include "connection.php";
include "adminheader.php";
?>

<form>
	<center>
	<h2>View Orders</h2>
	<table class="table" style="width: 900px;">
		<tr>
			<th>User Name</th>
			<th>Phone Number</th>
			<th>Email</th>
			<th>Date</th>
			<th>Status</th>
			<th>View Details</th>
		</tr>
		<?php 

		$q="SELECT *,CONCAT(`user_firstname`,' ',`user_lastname`) AS user_name FROM `ordermaster` INNER JOIN `user` USING(`user_id`)";
		$res=select($q);
		foreach($res as $row)
			{ ?>
				<tr>
					<td><?php echo $row['user_name'];?></td>
					<td><?php echo $row['user_mobile'];?></td>
					<td><?php echo $row['user_email'];?></td>
					<td><?php echo $row['ordermaster_date'];?></td>
					<td><?php echo $row['ordermaster_status'];?></td>
					<td><a href="AVO_confirmdelivery.php?om_id=<?php echo $row['ordermaster_id'] ?>">View</a></td>
					<?php 
				if($row['ordermaster_status']=="Conform Order") { ?>

					<td><a href="adminvieworder.php?oms_id=<?php echo $row['ordermaster_id'] ?>">Confirm Delivery</a></td>
				
			<?php	} 
			?>
					
				</tr>

			<?php } 

		 ?>
	</table>
	</center>
</form>
<br><br><br>
<!-- <form method="post">
<h1 align="center">ADMIN VIEW ORDER</h1>
<table align="center">
<br>

<tr>
	
	<td><a href="AVO_confirmdelivery.php">CONFIRM DELIVERY </a>
	</td>

</tr>




<br>

<tr>
	<td><a href="AVO_confirmpay_processorder.php">CONFIRM PAYMENT AND PROCESS DELIVERY</a></td>
</tr>
</table>
</form> -->

<?php 
include "footer.php";

if(isset($_GET['oms_id'])){
	extract($_GET);
	$qs="UPDATE `ordermaster` SET `ordermaster_status`='Delivered' WHERE `ordermaster_id`='$oms_id'";
	update($qs);
	redirect("adminvieworder.php");
}
 ?>
