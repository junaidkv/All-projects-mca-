<?php 
include 'connection.php';
include 'userheader.php';
extract($_GET);

$qw="SELECT * FROM `ordermaster` INNER JOIN `user` USING(`user_id`) WHERE `ordermaster_id`='$id'";
$ress=select($qw);
?>
<!-- 
<section id="form"><form--><!-- 
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1"> -->
					<!-- <div class="login-form"> --><!--login form-->
						<!-- <h2 align="center">Shipping Address</h2> -->

<form method="post" >
<h1 align="center">SHIPPING ADDRESS</h1> 


<table align ="center" class="table" style="width: 400px;">
	
	<tr>
<th> First Name </th>
	<td> <input type="text" name="shipfirstname" value="<?php echo $ress[0]['user_firstname']; ?>"> </td> 
	</tr>


<tr>
	<th> Last Name </th>
	<td> <input type="text" name="shiplastname"  value="<?php echo $ress[0]['user_lastname']; ?>"> </td> 
</tr>


<tr>
	<th> Phone Number </th>
	<td> <input type="number" name="shipnumber" value="<?php echo $ress[0]['user_mobile']; ?>"> </td> 
</tr>


<tr>
	<th> Email </th>
	<td> <input type="email" name="shipemail" value="<?php echo $ress[0]['user_email']; ?>" > </td> 
</tr>
	

<tr>
	<th>House Name </th>
	<td> <input type="text" name="shiphousename" required> </td> 
</tr>

<tr>
	<th>City </th>
	<td> <input type="text" name="shipcity" required> </td> 
</tr>

<tr>
	<th>State </th>
	<td> <input type="text" name="shipstate" required> </td> 
</tr>

<tr>
	<th>Country</th>
	<td> <input type="text" name="shipcountry" required> </td> 
</tr>

<tr>
	<th>Pin Code </th>
	<td> <input type="text" name="shippin" required> </td> 
</tr>




		<td colspan="2" align="center"> <input type="submit" name="submit" value= "SUBMIT" class="btn btn-primary" style="color: white; width: 150px;"> </td>
	</tr>
	

</table>
</form>



<?php	 
if(isset($_POST['submit']))
{
	extract($_POST);

	echo $query="INSERT INTO shipping(ordermaster_id,shipping_fname,shipping_lname,shipping_mobile,shipping_email,shipping_hname,shipping_city,shipping_state,shipping_country,shipping_pin)VALUES('$id','$shipfirstname','$shiplastname','$shipnumber','$shipemail','$shiphousename','$shipcity','$shipstate','$shipcountry','$shippin')";	

	$ids=insert($query);
	echo $ids;
	alert("insertion success...");
	return redirect("user_make_payment.php?id=".$id);

}

 ?>



<?php
include 'footer.php';

?>



