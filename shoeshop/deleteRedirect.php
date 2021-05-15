<?php
include ("connection.php");
// $id=$_GET['cid'];
// echo $id;

if(isset($_GET['cid']))
{
  echo $qry1="DELETE from cart where cart_id=".$_GET['cid'];
echo $q=delete($qry1);

// $url='cart1.php?id='.$id;
// return redirect ($url);

?>
<script>
//alert("updated..");
window.location="cart1.php";
</script>
<?php
}
?>

