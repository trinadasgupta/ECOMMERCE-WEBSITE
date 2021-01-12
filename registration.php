<?php
include "lib/config.php";
include "lib/header.php";
?>
<script type="text/javascript">
 function fun()
   {
	   var name = document.SignupForm.cust_email.value;
	   var str = name.toLowerCase();
	   document.SignupForm.cust_email.value=str;
	   
   }

</script> 	
</div>
<div class="container">
    <div class="shoes-grid">
    <a href="single.html">
    <div class="wrap-in">
        
      </div>
           </a>
           
<!-- ~~~~~~~~~~ CHECK OUT FORM DESIGN ~~~~~~~~~~  -->

<div class="products">
    <h5 class="latest-product">Registration Form</h5>	
</div>	 
<div class="clearfix"> </div>			 

<form name = SignupForm method = post>
<div class="  register-top-grid">
<h3>PERSONAL INFORMATION</h3>
<div class="mation">
 <span>Full Name<label>*</label></span>
 <input type="text" name="cust_name"> 

 <span>Contact Number<label>*</label></span>
 <input type="text" name="cust_phone"  maxlength="10"> 

  <span>Email Address<label>*</label></span>
  <input type="text" name="cust_email" onkeyup="return fun();"> 

  <span>Address<label>*</label></span>
  <input type="text" name="cust_address" maxlength = "50"> 
</div>
<div class="clearfix"> </div>
<a class="news-letter" href="#">
  <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>Sign Up</label>
</a>
</div>
<div class="  register-bottom-grid">
     <h3>LOGIN INFORMATION</h3>
	 <div class="  register-top-grid">
		 <div class="mation">
		 	 <span>Password <label>*</label></span>
			 <input type="password" required  name = "username" STYLE = "border: 1px solid #EEE; outline-color: #FF5B36;  width: 55%;  font-size: 1em; padding: 0.5em;  margin: 0.5em 0;"> 
			<span>Confirm Password<label>*</label></span>
			<input type="password" required name = "cust_pass" STYLE = "border: 1px solid #EEE; outline-color: #FF5B36;  width: 55%;  font-size: 1em; padding: 0.5em;  margin: 0.5em 0;"> 
		</div>
	</div>
</div>
<br>
<input type="submit" class = nikPinkButton value="submit" name="Submit">
</form>

<?php
if($_POST['Submit'])
    {
       $sql = "INSERT INTO `customers` (`cust_id`, `cust_name`, `cust_email`, `cust_phone`, `cust_address`, `password`) VALUES ('', '$_POST[cust_name]', '$_POST[cust_email]', '$_POST[cust_phone]', '$_POST[cust_address]', '$_POST[cust_pass]');";
		$db->query($sql);
	   header("location:account.php");
    }
 ?>

<?php
include "lib/footer.php";
?>


