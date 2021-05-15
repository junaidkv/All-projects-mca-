
<?php 
include 'connection.php';
include 'userheader.php';
$logid=$_SESSION['logid'];
extract($_GET);


if (isset($_POST['pay'])) {
	extract($_POST);
   echo $qe="INSERT INTO `payment`(`user_id`,`ordermaster_id`,`payment_type`,`payment_date`,`payment_amt`) VALUES('$logid','$id','Online',NOW(),'$amount')";
    insert($qe);

	$qw="UPDATE `ordermaster` SET `ordermaster_status`='Paid' WHERE `ordermaster_id`='$id'";
	update($qw);

    $query3="delete from cart where user_id='$logid'";
    delete($query3);

	alert("Payment Successfully");
    redirect("user_bill_pdf.php?om_id=".$id);


	   
}

?>
  <center>


        <style type="text/css">
        td{background-color: transparent;font-weight: 2px;color: black}
        hr{border-color: orange}
        #b {
            border: 1px solid grey; 
            padding: 10px;
        }
    </style>


    <div align="center">

        <form method="post">
            <h2> Payment </h2> <hr> 
            <table style="width: 400px;" class="table table-borderless" id="b"> 
                <tr> 
                    <td>PAYMENT DETAILS</td> 
                    <td><img src="images/ccard.jpg" style="width:100%"/></td>

                </tr>
                <tr> 
                    <td colspan="2"> <small>CARD NUMBER</small><br> 
                        <input type="text" placeholder="Enter a valid card number"  class="form-control"  pattern="[0-9]{16}" title="Enter 16 digit Card number">
                    </td> 
                </tr>
                <tr> 

                    <td > <small>CVV</small><br> 
                        <input type="password" placeholder="CVV"  class="form-control"  pattern="[0-9]{3}" title="Enter 3 digit CV number">
                    </td> 
                    <td> <small>EXPIRATION DATE</small><br> 
                        <input type="text" placeholder="MM/YY"  class="form-control"  pattern="[0-9,/]{5}" title="Enter 3 digit CV number"> 
                    </td>


                </tr>
                <tr> 
                    <td colspan="2"> <small>CARD HOLDER</small><br> 
                        <input type="text" placeholder="Name on card"  class="form-control" data-valid='only-text'  > </td>
                    </tr>
                    
                    <tr><td colspan="2"> <small>AMOUNT</small><br>
                  
                  <?php 

                  $q="SELECT * FROM `ordermaster` WHERE `ordermaster_id`='$id'";
                  $res=select($q);
                  foreach ($res as $row ) { ?>
                  	<input type="text" name="amount" placeholder="Amount" value="<?php echo $row['ordermaster_total']; ?>" readonly=""></td></
                <?php  }
                   ?>
                     tr>
                 
                        <!-- <tr><td><input type="radio" name="type" value="online" required="">Pay Online<br></td></tr> -->

                        <tr> 
                            <td colspan="2"> 
                                <input type="submit" value="PAY"  class="btn btn-success" style="width: 100%" name="pay"> </td>
                            </tr>

                        </table>


                    </div>
               <!--      <div>
                        <tr>
                        <input type="hidden" name="oid" value="data['oid']">
    <td>  <input type="radio" name="type" value="CoD" required="">Cash on Delivery<br></td>

</tr>
<tr><button name="buy" class="btn btn-success">Buy</button></tr>

                    </div> -->
                </form>
                <hr> 
            </center>

<?php 
include 'footer.php';

?>