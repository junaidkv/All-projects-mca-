<?php 
include 'connection.php';
$logid=$_SESSION['logid'];

include 'userheader.php';
extract($_GET);
	
?>

<!DOCTYPE html> 
<html> 

<head> 
	<title> 
		<h1 align="center">HIGH LOOK PASSIONS</h1>
	</title> 
	
	<!-- Script to print the content of a div -->
	<script> 
		function printDiv() { 
			var divContents = document.getElementById("div_print").innerHTML; 
			var a = window.open('', '', 'height=500, width=500'); 
			a.document.write(divContents); 
			a.document.close(); 
			a.print(); 
		} 
	</script> 
</head> 

<body style="text-align:center;"> 
	
	<div id="div_print" > 
		
		<form>

	<table>

		<h1 align="center">HIGH LOOK PASSIONS</h1>
		<?php 


$q="SELECT * FROM `ordermaster` INNER JOIN `payment` USING(`ordermaster_id`) INNER JOIN `orderdetails` USING(`ordermaster_id`) INNER JOIN `products` USING(`products_code`) INNER JOIN `user` ON `user`.`user_id`=`payment`.`user_id` WHERE `ordermaster_id`='$om_id' AND `payment`.`user_id`='$logid'";
$res=select($q);
?>
		<tr>
			<th style="padding-left: 250px;">Bill No :<?php echo $res[0]['payment_id']; ?></th>
		</tr>
		<tr>
			<th style="padding-left: 250px;">Customer :<?php echo $res[0]['user_firstname']; ?></th><br>
		</tr>
		<tr>
			<th><br></th>
		</tr>
		<tr>
			<th style="padding-left: 1000px;">Date :<?php echo $res[0]['payment_date']; ?></th>
		</tr>
		
		<th><br></th>
	</table>
	<table align="center" class="table" style="width: 1000px;" border="2">
		<tr>
			<th>Sl.No</th>
			<th>Product Code</th>
			<th>Product Name</th>
			<th>Quantity</th>
			<th>Amount</th>
			<!-- <th>Total Amount</th> -->
		</tr>

		<?php 
		$q1="SELECT * FROM `ordermaster` INNER JOIN `payment` USING(`ordermaster_id`) INNER JOIN `orderdetails` USING(`ordermaster_id`) INNER JOIN `products` USING(`products_code`) INNER JOIN `user` ON `user`.`user_id`=`payment`.`user_id` WHERE `ordermaster_id`='$om_id' AND `payment`.`user_id`='$logid'";
		$res1=select($q1);
		$i=1;
		foreach ($res1 as $row ) {  
			
			?>
			
		<tr>
			<td><?php echo $i; ?></td>
			<td><?php echo $row['products_code']; ?></td>
			<td><?php echo $row['products_name']; ?></td>
			<td><?php echo $row['orderdetails_qnty']; ?></td>
			<td><?php echo $row['orderdetails_amt']; ?></td>
			<!-- <td><?php echo $row['ordermaster_total']; ?></td> -->
		</tr>
	<?php	
$i++;
}
		 ?>
		
		
	
		

	</table>
	<table>
		<tr>
			<th style="padding-left: 1000px;">Total Amount : <?php echo $res[0]['ordermaster_total']; ?></th>
		</tr>
		<tr>
			<th><br></th>
		</tr>
		<tr>
			<th style="padding-left: 1000px;">pay : Card</th>
		</tr>
	</table>

</form>
	</div> 
	
	<input type="button" value="click to print" onclick="printDiv()"> 

<br><br><br><br><br>
				 


	<?php
include 'footer.php';
?> 