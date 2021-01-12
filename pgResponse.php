<?php
error_reporting(E_ALL & ~E_NOTICE);

header("Pragma: no-cache");
header("Cache-Control: no-cache");
header("Expires: 0");

include "lib/config.php";
include "lib/header.php";

//following files need to be included
require_once("./lib/config_paytm.php");
require_once("./lib/encdec_paytm.php");

$paytmChecksum = "";
$paramList = array();
$isValidChecksum = "FALSE";

$paramList = $_POST;


$paytmChecksum = isset($_POST["CHECKSUMHASH"]) ? $_POST["CHECKSUMHASH"] : ""; //Sent by Paytm pg

//Verify all parameters received from Paytm pg to your application. Like MID received from paytm pg is same as your application�s MID, TXN_AMOUNT and ORDER_ID are same as what was sent by you to Paytm PG for initiating transaction etc.
$isValidChecksum = verifychecksum_e($paramList, PAYTM_MERCHANT_KEY, $paytmChecksum); //will return TRUE or FALSE string.


if ($isValidChecksum == "TRUE") {
	//echo "<b>Checksum matched and following are the transaction details:</b>" . "<br/>";
	if ($_POST["STATUS"] == "TXN_SUCCESS") {
		//echo "<b>Transaction status is success</b>" . "<br/>";
		//Process your transaction here as success transaction.
		//Verify amount & order id received from Payment gateway with your application's order id and amount.
	} else {
		//echo "<b>Transaction status is failure</b>" . "<br/>";
	}

	if (isset($_POST) && count($_POST) > 0) {
		foreach ($_POST as $paramName => $paramValue) {
			//echo "<br/>" . $paramName . " = " . $paramValue;
		}
	}
} else {
	//echo "<b>Checksum mismatched.</b>";
	//Process transaction as suspicious.
}

echo '<pre>';
$sql = "INSERT INTO `paytm`(`gateway_name`, `bank_name`, `pay_mode`, `txn_id`, `txn_amt`, `order_id`, `status`, `bank_txn_id`, `checksumhash`) VALUES ('" . $_POST['GATEWAYNAME'] . "','" . $_POST['BANKNAME'] . "','" . $_POST['PAYMENTMODE'] . "','" . $_POST['TXNID'] . "','" . $_POST['TXNAMOUNT'] . "','" . $_POST['ORDERID'] . "','" . $_POST['STATUS'] . "','" . $_POST['BANKTXNID'] . "','" . $_POST['CHECKSUMHASH'] . "')";

if ($db->query($sql) == TRUE) {
	echo "New Record Created Successfully";
	echo "<form action='index.php'method='post'>  <input type='submit' name='OK' value='OK'>";

} else {
	echo "Error" . $sql . "<br>" . $db->error;
}
$db->close();
die;

include "lib/footer.php";
?>