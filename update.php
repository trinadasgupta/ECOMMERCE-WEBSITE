<?php
include("lib/config.php");
include("lib/header.php");

$sql = "SELECT * FROM `customers` WHERE `cust_id` = '$_SESSION[cust_login_id]'";
$res = $db->query($sql);
$row = $res->fetch_array();
 if(isset($_POST['OK'])){

        $id = $_POST['cust_id'];
        $name =$_POST['cust_name'];
        $email = $_POST['cust_email'];
        $phone =$_POST['cust_phone'];
        $address =$_POST['cust_address'];

       /* $sql1 = "UPDATE `customers` SET `cust_name`='$name', `cust_email`='$email', `cust_phone`='$phone', `cust_address`='$address' WHERE `cust_id`='$id'";*/
        

        $sql="UPDATE `customers` SET `cust_name`='$name',`cust_email`='$email',`cust_phone`='$phone',`cust_address`='$address' WHERE `cust_id`='$id'";
        $result = $db->query($sql);

        if($result)
        {
            
            echo ' Your Record Has Been Updated ';
        }
        else
        {
            echo ' Please Check Your Query ';
        }
        header("Location: account.php");
    }
?>
<!-- ~~~~~~~~~~ CHECK OUT FORM DESIGN ~~~~~~~~~~  -->
<div class="products">
<h5 class="latest-product">Account Update Form</h5>	
</div>	 
<div class="clearfix"> </div>			 

<form name = orderForm method = "POST"> 
<div class="  register-top-grid">
<h3>OWNER INFORMATION</h3>
<div class="mation">
<input type="hidden" required name = "cust_id" value = "<?=$row['cust_id']?>"> 

<span>Full Name<label>*</label></span>
<input type="text" required name = "cust_name" value = "<?=$row['cust_name']?>"> 

<span>Email Address<label>*</label></span>
<input type="email" required  name = "cust_email" STYLE = "border: 1px solid #EEE; outline-color: #FF5B36;  width: 85%;  font-size: 1em; padding: 0.5em;  margin: 0.5em 0;" value = "<?=$row['cust_email']?>"> 

<span>Phone<label>*</label></span>
<input type="text" required name = "cust_phone" value = "<?=$row['cust_phone']?>"> 

<span>Address<label>*</label></span>
<textarea name = "cust_address" STYLE = "border: 1px solid #EEE; outline-color: #FF5B36;  width: 85%;  font-size: 1em; padding: 0.5em;  margin: 0.5em 0;"><?=$row['cust_address']?></textarea>
    </div>
</div>

<br>
	<input type="submit" class = nikPinkButton name="OK" value="OK">
	</form>
    <script src="www/js/ajax.js"></script>
<?php
include("lib/footer.php");
?>