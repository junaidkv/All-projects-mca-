<?php
include("connection.php");
$id=$_GET['id'];
echo $id;
if(isset($_GET['id']))
{
  echo $qry1="UPDATE cart SET cart_qnty='5' WHERE products_code='$id'";
echo $q=update($qry1);
alert ("update sucessfull");

?>
<!-- <script>
//alert("updated..");
window.location="adminviewusersuploadedvideos.php";
</script> -->
<?php
}
?>
