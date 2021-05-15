<?php  
include'connection.php';
include 'userheader.php';
 $id=$_SESSION['logid'];
?>


<form method="post" >




<table align="center" class="table" style="width: 700px;">
	<h1 align="center">Edit details</h1>
	<?php
	  
	   $query="SELECT * from products where product_code='$id'";
	$res=select($query);
	foreach($res as $row)
	{
		?>



 <tr>
	<th> First Name </th>
<td> <input type="text" name="firstname" value="<?php echo $row['products_name'];?>"> </td> 
</tr>


<tr>
	<th> Last Name </th>
	<td> <input type="text" name="Hlastname" value="<?php echo $row['products_price'];?>"> </td> 
</tr>


<tr>
	<th> Phone Number </th>
	<td> <input type="number" name="Hnumber" value="<?php echo $row['products_color'];?>"> </td> 
</tr>


<tr>
	<th> Email </th>
	<td> <input type="email" name="Hemail" value="<?php echo $row['user_email'] ;?>"> </td> 
</tr>
	
<?php
}
?>
<tr>
	
	<td colspan="2" align="center"> <input type="submit" name="submit" value="UPDATE" class="btn btn-primary"> </td> 
</tr>



</table>	

</form>


<?php

if(isset($_POST['submit']))
{
	extract($_POST);
	//extract($_GET);
	//$ids=$_SESSION['logid']
	$qry="UPDATE `user` SET `user_firstname`='$firstname',`user_lastname`='$Hlastname',`user_mobile`='$Hnumber',`user_email`='$Hemail' WHERE user_id='$id'";

	update($qry);
	alert("Update sucessful");
	return redirect('userprofile.php');
	
}

?>







	<?php

include 'footer.php';
?>

