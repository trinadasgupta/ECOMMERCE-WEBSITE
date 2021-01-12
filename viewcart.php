<?php
error_reporting(E_ALL & ~E_NOTICE);
error_reporting(E_ERROR | E_PARSE);
include "lib/config.php";
include "lib/header.php";
?>
<!-- ############################################ -->



<!-- %%%%%%%%%%%% VIEWCART DESIGN %%%%%%%%%%%%%%%% -->
<div class="products">
  <h5 class="latest-product">View Cart</h5>
</div>
<FORM ACTION=add.php METHOD=POST>
  <table CLASS=nikCart WIDTH=100% STYLE="border: 2px solid BLACK;padding: 10px;">
    <tr>
      <th>No.</th>
      <th colspan=2> Product </th>
      <th>Price</th>
      <th>Quantity</th>
      <th>SubTotal</th>
      <th>Remove</th>
    </tr>
    <?php
  error_reporting(E_ALL & ~E_NOTICE);
  error_reporting(E_ERROR | E_PARSE);
		if ($_SESSION['cust_login_id'] > 0){
			$cust_id  = $_SESSION['cust_login_id'];
			foreach ($_SESSION['cart'] as $pid => $quantity) {
			$sql = "SELECT * FROM `products` WHERE `id` = '$pid'";
			$res = $db->query($sql);
			$row = $res->fetch_array();
			$subtotal = $row['price'] * $quantity;
			$total += $subtotal;
			$c++;
			print "<tr>
					<td>$c</td>
					<td><IMG SRC = \"$row[image]\" WIDTH = 50></td>
					<td>$row[name]</td>
					<td>Rs.$row[price]</td>
					<td><INPUT TYPE = TEXT NAME = newCart[$pid] VALUE = $quantity SIZE = 3></td>
					<td>$subtotal</td>
					<td><a href=\"add.php?del_id=$pid\" ONCLICK = \"return confirm('Are you sure?');\">X Remove</a></td>
				</tr>";
			}
		}
    ?>

    <tr>
      <th colspan=4></th>
      <th>TOTAL</th>
      <th>Rs. <?= $total ?></th>
      <th></th>
    </tr>
  </table>
  <input type="hidden" required name="total" value="<?= $total ?>">
  <CENTER>
    <BR><INPUT TYPE="SUBMIT" VALUE=" Update Cart Quantities " STYLE="
    font-size: 1.1em;color: #fff;padding: 0.6em 0.8em; background: #323A45; text-decoration: none; border: none;">
  </CENTER>
</FORM>


<DIV STYLE="width: 100%; text-align: center;">

  <br> <br>
  <!--<a class="now-get" href="checkout.php">CheckOut</a> &nbsp; 
        <a class="now-get" href="index.php">Continue Shopping</a> -->
</DIV>
<div class="clearfix"> </div>

<?php
$sql = "SELECT * FROM `customers` WHERE `cust_id` = '$_SESSION[cust_login_id]'";
$res = $db->query($sql);
$row = $res->fetch_array();

?>
<!-- ~~~~~~~~~~ CHECK OUT FORM DESIGN ~~~~~~~~~~  -->
<div class="products">
  <h5 class="latest-product">Checkout Form</h5>
</div>
<div class="clearfix"> </div>

<form name=orderForm method=post ACTION=order.php>
  <input type="hidden" required name="total" value="<?= $total ?>">
  <input type="hidden" required name="order" value="<?= 'OD' . rand(100000, 999999) . 'END' ?>">
  <div class="  register-top-grid">
    <h3>BILLING INFORMATION</h3>
    <div class="mation">
      <span>Full Name<label>*</label></span>
      <input type="text" required name="cust_name" value="<?= $row['cust_name'] ?>">

      <span>Email Address<label>*</label></span>
      <input type="email" required name="cust_email" STYLE="border: 1px solid #EEE; outline-color: #FF5B36;  width: 85%;  font-size: 1em; padding: 0.5em;  margin: 0.5em 0;" value="<?= $row['cust_email'] ?>">

      <span>Phone<label>*</label></span>
      <input type="text" required name="cust_phone" value="<?= $row['cust_phone'] ?>">

      <span>Address<label>*</label></span>
      <textarea name="cust_address" STYLE="border: 1px solid #EEE; outline-color: #FF5B36;  width: 85%;  font-size: 1em; padding: 0.5em;  margin: 0.5em 0;"><?= $row['cust_address'] ?></textarea>
    </div>

    <div class="clearfix"> </div>
    <a class="news-letter" href="#">
      <label class="checkbox"><input type="checkbox" name="checkbox" ONCLICK="samify()"><i> </i>Same as above</label>
    </a>

    <h3>SHIPPING INFORMATION</h3>
    <div class="mation">
      <span>Full Name<label>*</label></span>
      <input type="text" required name="delivery_name">

      <span>Phone<label>*</label></span>
      <input type="text" required name="delivery_phone">

      <span>E-mail<label>*</label></span>
      <input type="text" required name="delivery_email">

      <span>Address<label>*</label></span>
      <textarea name="delivery_address" STYLE="border: 1px solid #EEE; outline-color: #FF5B36;  width: 85%;  font-size: 1em; padding: 0.5em;  margin: 0.5em 0;"></textarea>
    </div>
  </div>
  <div class="  register-bottom-grid">
    <h3>Payment Information</h3>
    <div class="mation">
      <span><INPUT TYPE=RADIO NAME=payment_info VALUE=cod checked><img src="images/cash-on-delivery.png" alt="COD Logo"></span>
      <span><INPUT TYPE=RADIO NAME=payment_info VALUE=card><img src="images/online-payment.png" alt="Online Pay Logo"></span>
      <span><INPUT TYPE=RADIO NAME=payment_info VALUE=paytm><img src="images/paytm.png" alt="Paytm Logo"></span>
      <span><INPUT TYPE=RADIO NAME=payment_info VALUE=paypal><img src="images/paypal.png" alt="PayPal Logo"></span>
      <!--<span><INPUT TYPE=RADIO NAME=payment_info VALUE=phonepe><img src="images/phonepe.png" alt="phonepe Logo"></span>-->

    </div>
  </div>

  <br>
  <input type="submit" class=nikPinkButton value="submit order Rs.<?= $total ?>">

</form>
<div class="clearfix"> </div>

<SCRIPT LANGUAGE="Javascript">
  function samify() {
    document.orderForm.delivery_name.value = document.orderForm.cust_name.value;
    document.orderForm.delivery_phone.value = document.orderForm.cust_phone.value;
    document.orderForm.delivery_address.value = document.orderForm.cust_address.value;
    document.orderForm.delivery_email.value = document.orderForm.cust_email.value;
  }
</SCRIPT>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  -->

<!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
<!-- ############################################ -->
<?php
include "lib/footer.php";
?>