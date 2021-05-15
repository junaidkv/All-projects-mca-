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
								<li><a href="AMP_manageproduct.php"><i class="fa fa-star"></i> UploadProducts</a></li>
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

	$dir = "shoeImage/";
	$file = basename($_FILES['file_name']['name']);
	$file_type = strtolower(pathinfo($file, PATHINFO_EXTENSION));
	$target = $dir.uniqid("shoe_").".".$file_type;

	if ($file_type == "jpg" OR $file_type=="JPG") {



		if(move_uploaded_file($_FILES['file_name']['tmp_name'], $target))
		{
			echo $query="INSERT into productimage(productimage_path, productimage_title, products_code)values('$target', '$imagetitle', '$productcode')";
			$id=insert($query);
			echo $id;

		}
		else
		{
			echo "file uploading error occured";
		}
	}
	else
	{
		echo "invalid file format, file format =". $file_type;
		echo "error";
	}
}
elseif (isset($_POST['BACK'])) {

	return redirect('adminhome.php');
}

if(isset($_GET['u_id'])){
	extract($_GET);
	$qw="SELECT * FROM `products` INNER JOIN `productimage` USING(`products_code`) WHERE `products_code`='$u_id'";
	$rsc=select($qw);

}
if(isset($_POST['update'])){
	extract($_POST);
	extract($_GET);
	$path="images/".$_FILES['img']['name'];
	$nam=uniqid();
	$filetype=strtolower(pathinfo($path,PATHINFO_EXTENSION));
	$pro="images/".$nam.".".$filetype;
	move_uploaded_file($_FILES['img']['tmp_name'], $pro);
	$qb="UPDATE `productimage` SET `productimage_title`='$uimagetitle',`productimage_path`='$pro' WHERE `products_code`='$u_id'";
	update($qb);
	redirect("AMP_uploadproductimage.php");
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Upload Images</title>
	
</head>
<body>
	<form method="post" enctype="multipart/form-data">
		<?php if(isset($_GET['u_id'])) { ?>

			<h1 align="center">Update Product </h1>
		<br>
		<br>	
		
<table align="center" class="table" style="width: 700px;">

			<tr>
				<th> Upload Image </th>
				<td ><img width="150px;" src="<?php echo $rsc[0]['productimage_path'];?>">
					<input type="file" name="img"></td>
			</tr>

			<tr>
				<th>Image Title </th>
				<td> <input type="text" name="uimagetitle" required value="<?php echo $rsc[0]['productimage_title'];?>"></td> 
			</tr>

			<tr>
				<th> Choose Shoe to Upload Image </th>
				<td><?php echo $rsc[0]['products_name'] ?></td> 
		</tr>

		<tr>
<!-- 
			<td colspan="2" align="center"> <input type="submit" name="add" value="ADD"> </td>  -->
			<td colspan="2" align="center"> <input type="submit" name="update" value="Update" class="btn btn-primary"> </td> 

		</tr>


	</table>


	<?php	}
	else{ ?>

		<h1 align="center"> Product Image</h1>
		<br>
		<br>	
		
<table align="center" class="table" style="width: 700px;">

			<tr>
				<th> Upload Image </th>
				<td > <input type="file" name="file_name" required>  

				</td>
			</tr>

			<tr>
				<th>Image Title </th>
				<td> <input type="text" name="imagetitle" required></td> 
			</tr>

			<tr>
				<th> Choose Shoe to Upload Image </th>
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
<!-- 
			<td colspan="2" align="center"> <input type="submit" name="add" value="ADD"> </td>  -->
			<td colspan="2" align="center"> <input type="submit" name="add" value="ADD" class="btn btn-primary"> </td> 

		</tr>


	</table>


<?php	} ?>
		
	<br><br><br>
<table align="center" class="table">

<tr>
	<th>Product code</th>
	<th> Title </th>
	<th> Image </th>

</tr>	
	<?php
	$q="SELECT * FROM `products` INNER JOIN `productimage` USING(`products_code`)";
	$result=select($q);
	foreach($result as $row)
	{
		?>
		<tr>
		 	<td> <?php echo $row ['products_code']; ?></td>
			<td> <?php echo $row ['productimage_title'];?> </td> 
			<td><img src="<?php echo $row ['productimage_path'];?>" width="100px" height="100px" /></td> 
			
			<td><a href="?u_id=<?php echo $row['products_code'];?>">Update</a></td>							
	</tr>

	<?php
     }

	?>

</table>


</form>
<?php  include "footer.php"; ?>