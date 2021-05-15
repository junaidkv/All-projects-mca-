<?php  
include'connection.php';
if(isset($_POST['back']))
{
	return redirect('adminhome.php');
}
elseif (isset($_POST['BACK'])) {

	return redirect('adminhome.php');
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>PRODUCTS MANAGE</title>
</head>
<body>
<form method="post">
<h1 align="center">PRODUCTS MANAGE</h1><hr>
<table align="right">
	<tr>
	
	<td colspan="2" align="right"> <input type="submit" name="BACK" value="BACK"> </td> 
</tr>

</table>

<table align="center">
<br>

<tr>
	
	<td><a href="AMP_manageproduct.php">TO ADD PRODUCT DETAILS AND UPDATE</a>
	</td>
</tr>
<br>

<tr>
	<td><a href="AMP_uploadproductimage.php">TO UPLOAD IMAGE</a></td>
</tr>


<tr>
	<td><a href="adminvieworder.php">TO VIEW ORDER DETAILS </a></td>
</tr>

<tr>
	
	<td colspan="2" align="center"> <input type="submit" name="back" value=""> </td>  
</tr>

</table>
</form>
</body>
</html>