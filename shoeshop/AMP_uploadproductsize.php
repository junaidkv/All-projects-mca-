<?php 
include 'connection.php';
 ?>


<!DOCTYPE html>
<html lang="en">
<head>
	<style type="text/css">
		.row{
			width: 100%
		}
		.column{
			width: 50%
			float:left;
		}
	</style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | High Look Passion Online Store</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->



	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="tel:00919037988715"><i class="fa fa-phone"></i> +91 90379 88715</a></li>
								<li><a href="mailto:info@highlookpassionstore.com"><i class="fa fa-envelope"></i> info@highlookpassionstore.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index.html"><img src="images/home/logo.png" alt="" /></a>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="adminhome.php"><i class="fa fa-crosshairs "></i> Home</a></li>
								<!-- <li><a href="adminmanageproduct.php"><i class="fa fa-star"></i> UploadProducts</a></li> -->
									<div class="mainmenu pull-left">
									<ul class="nav navbar-nav collapse navbar-collapse">
								<!-- <li><a href="index.html">Home</a></li>
								 --><li class="dropdown"><a href="AMP_manageproduct.php">Uploadproducts<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="AMP_uploadproductimage.php">Image upload</a></li>
								
										<li><a href="AMP_uploadproductsize.php">Size Upload</a></li> 
                                    </ul>
                                </li> 
                                <!-- <li><a href="new-arrival.html">New Arrival</a></li>
                                <li><a href="sale.html">Sale</a></li>  -->
							</ul>
						</div>



								<li><a href="adminvieworder.php"><i class="fa fa-user"></i>View user</a></li>
							<!-- 	<li><a href="usermanagecart.php"><i class="fa fa-shopping-cart"></i>View User</a></li>
						 -->		<li><a href="adminvieworder.php"><i class="fa fa-star"></i>View Orders</a></li>
								<li><a href="index.php"><i class="fa fa-lock"></i> Logout</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->

 <?php 

if(isset($_POST['add']))
{
	extract($_POST);

	echo $query="INSERT into size(size_id,products_code,size,size_qnt)values(null,'$productcode','$size','$quantity')";	

	$id=insert($query);
	echo $id;
	alert("insertion success...");

}elseif (isset($_POST['BACK'])) {

	return redirect('adminhome.php');
}
if(isset($_GET['u_id'])){
	extract($_GET);
	$qw="SELECT * FROM `size` INNER JOIN `products` USING(`products_code`) WHERE `size_id`='$u_id'";
	$rsc=select($qw);

}
if(isset($_POST['update'])){
	extract($_POST);
	extract($_GET);
	$qb="UPDATE `size` SET `size`='$usize',`size_qnt`='$uquantity' WHERE `size_id`='$u_id'";
	update($qb);
	redirect("AMP_uploadproductsize.php");
}


 ?>

<!DOCTYPE html>
<head>
	<title>Upload Images</title>
	
</head>
<body>
	<form method="post" enctype="multipart/form-data">
		<?php if(isset($_GET['u_id'])){ ?>
			<h1 align="center">ADMIN-UPLOAD SIZE</h1>
		
		<table align="center" class="table" style="width: 700px;">

		<tr>
				<th> Choose Shoe to Upload size </th>
				<td><?php echo $rsc[0]['products_name'];?></td> 
		</tr>

			
		
			
			<tr>
				<th> Upload size </th>
				<td > 
					<select name="usize">
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
  			<option value="7">7</option>
  			<option value="8">8</option>
  			<option value="9">9</option>
  			<option value="10">10</option>
				</select> 

				</td>
			</tr>
			<tr>
				<th> Quantity </th>
				<td> <input type="number" name="uquantity" required value="<?php echo $rsc[0]['size_qnt'];?>"> </td> 
			</tr>	
			
		<tr>
			<td colspan="2" align="center"> <input type="submit" name="update" value="Update" class="btn btn-primary"> </td> 
<!-- 
			<td colspan="2" align="center"> <input type="submit" name="add" value="ADD"> </td> 
	 -->	</tr>


	</table>


	<?php	}

	else{ ?>

		<h1 align="center">ADMIN-UPLOAD SIZE</h1>
		<hr>
		<table align="center" class="table" style="width: 700px;">

		<tr>
				<th> Choose Shoe to Upload size </th>
				<td> <select name="productcode">
					<?php
					$qry = "select * from products";
					$res = select($qry);
					foreach ($res as $row) 
					{
						echo '<option value="'.$row['products_code'].'">'.$row['products_name'].'</option>';	
					}
					?>


				</select> 

			</td> 
		</tr>

			
		
			
			<tr>
				<th> Upload size </th>
				<td > 
					<select name="size">
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
  			<option value="7">7</option>
  			<option value="8">8</option>
  			<option value="9">9</option>
  			<option value="10">10</option>
				</select> 

				</td>
			</tr>
			<tr>
				<th> Quantity </th>
				<td> <input type="number" name="quantity" required> </td> 
			</tr>	
			
		<tr>
			<td colspan="2" align="center"> <input type="submit" name="add" value="ADD" class="btn btn-primary"> </td> 
<!-- 
			<td colspan="2" align="center"> <input type="submit" name="add" value="ADD"> </td> 
	 -->	</tr>


	</table>


<?php	} ?>
		
	<br><br><br>

 
<table align="center" class="table">

<tr>
	<th> Product Code </th>
	<th> Product Name </th>
	<th> Size </th>
	<th> Quantity</th>
	

</tr>	
	<?php
	$q="SELECT * FROM `size` INNER JOIN `products` USING(`products_code`)";
	$result=select($q);
	foreach($result as $row)
	{
		?>
		<tr>
		 
		
					<td> <?php echo $row ['products_code'];?> </td> 
					<td> <?php echo $row ['products_name'];?> </td> 
					<td> <?php echo $row ['size']; ?></td> 
					<td><?php echo $row ['size_qnt'];?></td>
					<td><a href="?u_id=<?php echo $row['size_id'];?>">Update</a></td>						
							
	</tr>

	<?php
     }

	?>

</table>


</form>
<?php  include "footer.php"; ?>