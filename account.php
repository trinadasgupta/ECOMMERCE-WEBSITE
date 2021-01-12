<?php
include "lib/config.php";
include "lib/header.php";


$sql = "SELECT * FROM `customers` WHERE `cust_id` = '$_SESSION[cust_login_id]'";
$res = $db->query($sql);
$row = $res->fetch_array();

?>

<!-- ~~~~~~~~~~ CHECK OUT FORM DESIGN ~~~~~~~~~~  -->
   <div class="products">
	   		<h5 class="latest-product">Welcome, <?=$_SESSION['cust_name']?></h5>	
   </div>	 
 <div class="clearfix"> </div>			 
 Account Info &nbsp; | &nbsp; 
 <A HREF = "viewcart.php">View Orders</A> &nbsp; | &nbsp; 
 <A HREF = "logout.php">Logout</A>

<!-- ~~~~~~~~~~ CHECK OUT FORM DESIGN ~~~~~~~~~~  -->
   <div class="products">
	   		<h5 class="latest-product">Account Form</h5>	
   </div>	 
 <div class="clearfix"> </div>			 

  <form name = orderForm method = "POST" action="update.php"> 
	 <div class="  register-top-grid">
		<h3>OWNER INFORMATION</h3>
		<div class="mation">
			<span>Full Name<label>*</label></span>
			<input type="text" required name = "cust_name" value = "<?=$row['cust_name']?>"> 
		
			 <span>Email Address<label>*</label></span>
			 <input type="email" required  name = "cust_email" STYLE = "border: 1px solid #EEE; outline-color: #FF5B36;  width: 85%;  font-size: 1em; padding: 0.5em;  margin: 0.5em 0;" value = "<?=$row['cust_email']?>"> 
			
			<span>Phone<label>*</label></span>
			<input type="text" required name = "cust_phone" value = "<?=$row['cust_phone']?>"> 
			
			<span>Address<label>*</label></span>
			<textarea name = "cust_address" STYLE = "border: 1px solid #EEE; outline-color: #FF5B36;  width: 85%;  font-size: 1em; padding: 0.5em;  margin: 0.5em 0;"><?=$row['cust_address']?></textarea>
		</div>

 		<div class="clearfix"> </div>
		   <a class="news-letter" href="#">
			 <!--<label class="checkbox"><input type="checkbox" name="checkbox" ONCLICK = "samify()"><i> </i>Same as above</label>-->
		   </a>
</div>
	<br>
	<input type="submit" class = nikPinkButton name="UPDATE" value="Update">
	</form>
	<div class="clearfix"> </div>
<?php
include "lib/footer.php";
?>