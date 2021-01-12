<?php
header("Pragma: no-cache");
header("Cache-Control: no-cache");
header("Expires: 0");

include "lib/config.php";
include "lib/header.php";

$send_to_paypal = true;
$send_to_paytm = true;
$send_to_card = true;

require_once("./lib/config_paytm.php");
require_once("./lib/encdec_paytm.php");
require_once("razorpay-php/Razorpay.php");

use Razorpay\Api\Api;

$keyid = 'rzp_test_4Il1hWML9lrqT8'; //razorpay key
$secretkey = 'bHrcuwGQHxLdOERbGtD6TgfR'; //razorpay secreat key
$api = new Api($keyid, $secretkey);
$name = $_POST['delivery_name'];
$phone  = $_POST['delivery_phone'];
$address = $_POST['delivery_address'];
$email = $_POST['delivery_email'];
$price = $_POST['total'];
$order_id = $_POST['order'];

if ($_SESSION['cust_login_id'] > 0) {
	$cust_id  = $_SESSION['cust_login_id'];
} else {
	$pass = rand(111111, 999999);
	$sql = "INSERT INTO `customers` (`cust_id`, `cust_name`, `cust_email`, `cust_phone`, `cust_address`, `password`) VALUES ('', '$_POST[cust_name]', '$_POST[cust_email]', '$_POST[cust_phone]', '$_POST[cust_address]', '$pass');";
	$db->query($sql);

	//Get cust id
	$cust_id = $db->insert_id; //This function returns the last auto generated id
}
//Insert into Orders
$sql = "INSERT INTO `orders` (`order_id`, `cust_id`, `date`, `payment_info`, `delivery_name`, `delivery_phone`, `delivery_address`, `status`) VALUES (NULL, '$cust_id', '" . time() . "', '$_POST[payment_info]', '$_POST[delivery_name]', '$_POST[delivery_phone]', '$_POST[delivery_address]', 'new');";
$db->query($sql);

//Get order id
$order_id = $db->insert_id; //This function returns the last auto generated id

//Insert cartitems
foreach ($_SESSION['cart'] as $pid => $quantity) {

	$sql = "SELECT * FROM `products` WHERE `id` = '$pid'";
	$res = $db->query($sql);
	$row = $res->fetch_array();

	$sql = "INSERT INTO `cartitems` (`id`, `order_id`, `pid`, `quantity`, `product_name`, `product_price`) VALUES (NULL, '$order_id', '$pid', '$quantity', '$row[name]', '$row[price]');";
	$db->query($sql);
}

//delete cart contents
//unset($_SESSION['cart']);
if ($_POST['payment_info'] == "cod") {
	print '<H1>Thank you for your order. We will deliver the products in 3-4 working days</H1>';

	/*Paypal online Payment */
} elseif ($_POST['payment_info'] == "paypal") { ?>
	<BR><BR>
	<CENTER>
		<form id="payform" name="payform" action="https://www.paypal.com/cgi-bin/webscr" method="post">
			<input type="hidden" name="cmd" value="_cart" />
			<input type="hidden" name="upload" value="1">
			<input type="hidden" name="business" value="info@monginis.com" />
			<?php
			foreach ($_SESSION['cart'] as $pid => $quantity) {
				$sql = "SELECT * FROM `products` WHERE `id` = '$pid'";
				$res = $db->query($sql);
				$row = $res->fetch_array();
				$num++;
				print '<!-- @@@@@ -->
		<input type="hidden" name="item_name_' . $num . '" value="' . $row['name'] . '" />
		<input type="hidden" name="amount_' . $num . '"    value="' . $row['price'] . '" />
		<input type="hidden" name="quantity_' . $num . '"  value="' . $quantity . '" />
		<!-- @@@@@ -->';
			}
			?>
			<!--
	<INPUT TYPE="image" NAME="submit" BORDER="0" SRC="http://www.paypal.com/en_US/i/btn/btn_buynow_LG.gif">
 	-->
		</form>
		<BR><BR>
		<IMG SRC="images/ajax-loader.gif">
		<BR><BR>
		Please wait for 5 seconds while we contact PayPal or click <A HREF=# ONCLICK="document.payform.submit(); return false;">here</A>.
	</CENTER>

<?php
	/*Paytm online payment*/
} elseif ($_POST['payment_info'] == "paytm") {
	$checkSum = "";
	$paramList = array();
	// Create an array having all required parameters for creating checksum.
	$paramList["MID"] = PAYTM_MERCHANT_MID;
	$paramList["ORDER_ID"] = $order_id;
	$paramList["CUST_ID"] = $_SESSION['cust_login_id'];
	$paramList["INDUSTRY_TYPE_ID"] = 'Retail';
	$paramList["CHANNEL_ID"] = 'WEB';
	$paramList["TXN_AMOUNT"] = $price;
	$paramList["MSISDN"] = $phone; //Mobile number of customer
	$paramList["EMAIL"] = $email; //Email ID of customer
	$paramList["WEBSITE"] = PAYTM_MERCHANT_WEBSITE;
	$paramList["CALLBACK_URL"] = "http://127.0.0.1/ecommerce/www/pgResponse.php";
	/*
	$paramList["CALLBACK_URL"] = "http://localhost/PaytmKit/pgResponse.php";
	$paramList["MSISDN"] = $MSISDN; //Mobile number of customer
	$paramList["EMAIL"] = $EMAIL; //Email ID of customer
	$paramList["VERIFIED_BY"] = "EMAIL"; //
	$paramList["IS_USER_VERIFIED"] = "YES"; //
	*/
	//Here checksum string will return by getChecksumFromArray() function.
	$checkSum = getChecksumFromArray($paramList, PAYTM_MERCHANT_KEY);
?>
	<html>

	<head>
		<title>Merchant Check Out Page</title>
	</head>

	<body>
		<center>
			<h1>Please do not refresh this page...</h1>
		</center>
		<form method="post" action="<?php echo PAYTM_TXN_URL ?>" name="f1">
			<table border="1">
				<tbody>
					<?php
					foreach ($paramList as $name => $value) {
						echo '<input type="hidden" name="' . $name . '" value="' . $value . '">';
					}
					?>
					<input type="hidden" name="CHECKSUMHASH" value="<?php echo $checkSum ?>">
				</tbody>
			</table>
			<script type="text/javascript">
				document.f1.submit();
			</script>
		</form>
	</body>

	</html>
<?php
	/*Razorpay card payment*/
} elseif ($_POST['payment_info'] == "card") {
	$order = $api->order->create(array(
		'receipt' => rand(111111, 999999) . 'ORD',
		'amount' => $price * 100,
		'payment_capture' => 1,
		'currency' => 'INR',
	));
?>
	<form action="success_card.php" method="POST">


		<script src="https://checkout.razorpay.com/v1/checkout.js" data-key="<?php echo $keyid; ?>" data-amount="<?php echo $order->amount; ?>" data-currency="INR" data-order_id="<?php echo $order->id; ?>" data-buttontext="Are You Sure?" data-name="MySite" data-description="Digital Emporium Payment" data-prefill.name="<?php echo $name; ?>" data-prefill.email="<?php echo $email; ?>" data-prefill.contact="<?php echo $phone; ?>" data-theme.color="#51B3F0">
		</script>
		<input type="hidden" custom="Hidden Element" name="hidden">
	</form>

<?php
} ?>
<?php
include "lib/footer.php";
?>