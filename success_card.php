<?php
error_reporting(E_ALL & ~E_NOTICE);
include "lib/config.php";
include "lib/header.php";
echo '<pre>';
//print_r($_POST);
$sql = "INSERT INTO `card` (payment_id, order_id, signature) VALUES('" . $_POST['razorpay_payment_id'] . "','" . $_POST['razorpay_order_id'] . "','" . $_POST['razorpay_signature'] . "')";

if ($db->query($sql) == TRUE) {
    echo "New Record Created Successfully";
    echo "<form action='index.php'method='post'>  <input type='submit' name='OK' value='OK'>";
} else {
    echo "Error" . $sql . "<br>" . $db->error;
}
$db->close();
die;
?>

<?php
include "lib/footer.php";
?>