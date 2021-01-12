<?php
include('lib/config.php');
$msg = "";
try {
	if (isset($_POST['name']) && isset($_POST['email']) && isset($_POST['mobile']) && isset($_POST['comment'])) {
		$name = $db->real_escape_string($_POST['name']);
		$email = $db->real_escape_string($_POST['email']);
		$mobile = $db->real_escape_string($_POST['mobile']);
		$comment = $db->real_escape_string($_POST['comment']);
		$sql = "INSERT INTO contactus(`id`, `name`, `email`, `phone`, `comment`) VALUES('','$name','$email','$mobile','$comment')";
		if ($db->query($sql) == true) {
			$msg = "Thank You for contacting us. We will reach you shortly.";
			$html =	"<table>
						<tr><td>Name:</td><td>$name</td></tr>
						<tr><td>Email:</td><td>$email</td></tr>
						<tr><td>Mobile:</td><td>$mobile</td></tr>
						<tr><td>Comment:</td><td>$comment</td></tr>
					</table>";

			include('smtp/PHPMailerAutoload.php');
			$mail = new PHPMailer(true);
			$mail->isSMTP();
			$mail->Host = "smtp.gmail.com";
			$mail->Port = 587;
			$mail->SMTPSecure = "tls";
			$mail->SMTPAuth = true;
			$mail->Username = "newshop1997@gmail.com";
			$mail->Password = "newshopecommerce1997";
			$mail->SetFrom("newshop1997@gmail.com");
			$mail->addAddress("newshop1997@gmail.com");
			$mail->IsHTML(true);
			$mail->Subject = "New Contact Us";
			$mail->Body = $html;
			$mail->SMTPOptions = array('ssl' => array(
				'verify_peer' => false,
				'verify_peer_name' => false,
				'allow_self_signed' => false
			));
			if ($mail->send()) {
			} else{
				throw new Exception("Unable to send mail.");
			}
			echo $msg;
		} else {
			throw new Exception("Unable to send data");
		}
	} else {
		throw new Exception("Please Fill The All The Field");
	}
} catch (Exception $e) {
	$e->getMessage();
}
header('Location: contactus.php');
