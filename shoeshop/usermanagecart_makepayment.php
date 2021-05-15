<?php
include "connection.php";
?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
<body>
<h2>Responsive Checkout Form</h2>
Payment</p>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form method="POST">
      <br> <br>
        <div class="row">
          <div class="col-50">
            <label for="fname"><i class="fa fa-user"></i> First Name</label>
            <input type="text" id="fname" name="first_name" placeholder="Test">
            <label for="lname"><i class="fa fa-user"></i> Last Name</label>
            <input type="text" id="fname" name="last_name" placeholder="test">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="test@example.com">
     
            <div class="row">
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="Test test" >
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="111-222-333-444" required>
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September"required>
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2018" required>
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352" required>
              </div>
            </div>
          </div>
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Upgrade membership
        </label>
        <input type="submit" name="Proceed_to_Checkout" value="Proceed_to_Checkout" style="background-color:#598a96 ; font color:white; font-size: larger; color: white; ">
        <!-- <a href="userviewownprofile.php ?u_id=?php echo $row['user_id];?>">Proceed to Checkout </a> -->
       <!--  <input type="submit" value="Continue to checkout" name ="checkout" class="btn"> -->
      </form>
    </div>
  </div>
  <div class="col-25">
    <div class="container">
      <h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b></b></span></h4>
      <p><a href="#">Gold Membership</a> <span class="price">$15</span></p>
      <hr>
    </div>
  </div>
</div>

  <!-- <?php
      // $id=$_SESSION['logid'];
      // $q="SELECT * from user INNERJOIN payments using (user_id) where user_id='$id'";
       ?>

 -->
 <?php
      if (isset($_POST['Proceed_to_Checkout'])) 
      {
                extract($_POST);
      $i=$_SESSION['logid'];
      // $sql = "SELECT * from user where user_id=".$i;
      // $result = select($sql);
        $qry="INSERT into payments(payment_id,user_id,payment_type,p_date,p_amount)values(null,'$i','online',now(),'15')";
      insert($qry);
        $q="update user set rank='GOLD' where user_id=".$i;
           $id=update($q);
          alert ("payment sucessful");
          return redirect('userhome.php');
} 
?>
</body>
</html>