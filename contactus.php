<?php
    include "lib/config.php";
    include 'lib/header.php';
  
    ?>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="robots" content="noindex, nofollow">
      <title>Contact Form</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link href="css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
	  <link href="style.css" rel="stylesheet">
      <script src="js/validate.js"></script>
      <script src="js/jquery.js"></script>
      <script src="js/bootstrap.js"></script>
	  <script src="js/popper.js"></script>

    <script>
    function validate() {
	var e = document.contactform.email.value;
	var atposition = e.indexOf("@", 0);
	var em = atposition - 1;
	var d = e.substr(em, 1);
	var dotposition = e.indexOf(".", atposition);
	var len = e.length;
	var dom = len - dotposition;
	var chr = e.substr(dotposition, dom);

    var name = document.contactform.name.value;
    var mobile = document.contactform.mobile.value;
	var comment = document.contactform.comment.value;
	if (name == "") {
		alert("Fill up this Field");
		document.contactform.name.focus();
		return false;
	}

	if (e == "") {
		alert("Please filup your email-id");
		document.contactform.email.focus();
		return false;
	}
	if (atposition < 1) {
		alert("you cannot have a email without @");
		document.contactform.email.focus();
		return false;
	}
	if (dotposition <= atposition + 1 || dotposition < atposition + 3) {
		alert("you cannot have a email without .");
		document.contactform.email.focus();
		return false;
	}
	if (d == ".") {
		alert(" wrong email");
		document.contactform.email.focus();
		return false;
	}

	if (chr != ".com" && chr != ".in" && chr != ".co.in") {
		alert(" wrong email");
		document.contactform.email.focus();
		return false;
	}

	if (mobile == "") {
		alert("Please fillup this field");
		document.contactform.mobile.focus();
		return false;
	}
	if (isNaN(mobile)) {
		alert("Wrong Phone Number");
		document.contactform.mobile.focus();
		return false;
	}
	if (mobile.length != 10) {
		alert("Wrong Phone number");
		document.contactform.mobile.focus();
		return false;
	}
	if (comment == "") {
		alert("Fill up this Field");
		document.contactform.comment.focus();
		return false;
	}
	return true;
}

 </script>
   </head>
<style>
    body {
        background-color: whitesmoke;
    }

    .breadcrumbs {
        margin-top: 100px;
        text-align: center;
        background: blue;
        padding: 30px 0;
        color: #000;
    }

    @media (max-width: 992px) {
        .breadcrumbs {
            margin-top: 63px;
        }
    }

    .breadcrumbs h2 {
        font-size: 32px;
        font-weight: 500;
    }

    .breadcrumbs p {
        font-size: 14px;
        margin-bottom: 0;
    }

    .contact {
    padding-top: 5px;
    padding-left:20px;
}
.contact .info {
    width: 100%;
    background: whitesmoke;
}
    .contact {
        padding: 4%;
    }

    .col-md-4 {
        background: #5bbcda;
        padding: 4%;
        border-top-left-radius: 0.5rem;
        border-bottom-left-radius: 0.5rem;
    }

    .contact-info {
        margin-top: 10%;
        padding-right: 50px;
    }

    .contact-info img {
        margin-bottom: 15%;
    }

    .contact-info h2 {
        margin-bottom: 10%;
    }

    .col-md-8 {
        background: #fff;
        padding: 3%;
        border-top-right-radius: 1.5rem;
        border-bottom-right-radius: 1.5rem;
    }

    .contact-form label {
        font-weight: 600;
    }

    .contact-form button {
        background: #25274d;
        color: #fff;
        font-weight: 600;
        width: 25%;
    }

    .contact-form button:focus {
        box-shadow: none;
    }

    #error_message {
        margin-bottom: 20px;
        background: #fe8b8e;
        padding: 0px;
        text-align: center;
        font-size: 14px;
        transition: all 0.5s ease;
    }

    /*#success_msg {
        margin-bottom: 20px;
        background: greenyellow;
        padding: 0px;
        text-align: center;
        font-size: 14px;
        transition: all 0.5s ease;
    }*/
 </style>
<body>
<section id="contact" class="contact">
        <div class="contact">
            <div class="row">
            <div class="col-md-4">
               <div class="contact-info">
                  <img src="https://image.ibb.co/kUASdV/contact-image.png" alt="image"/>
                  <h2>Contact Us</h2>
                  <h4>We would love to hear from you !</h4>
               </div>
            </div>
            <div class="col-md-8">
            <form id="frmContactus" action="submit.php" method= "POST" name="contactform">
					<div class="contact-form">
					  <div class="form-group">
						 <label class="control-label col-sm-2" for="name">Name:</label>
						 <div class="col-sm-10">          
							<input type="text" class="form-control" id="name" placeholder="Enter name" required name="name">
						 </div>
					  </div>
					  <div class="form-group">
						 <label class="control-label col-sm-2" for="email">Email:</label>
						 <div class="col-sm-10">
							<input type="email" class="form-control" id="email" placeholder="Enter email" required name="email">
						 </div>
					  </div>
					  <div class="form-group">
						 <label class="control-label col-sm-2" for="mobile">Mobile:</label>
						 <div class="col-sm-10">
							<input type="text" class="form-control" id="mobile" placeholder="Enter mobile" required name="mobile" maxlength="10">
						 </div>
					  </div>
					  
					  <div class="form-group">
						 <label class="control-label col-sm-2" for="comment">Comment:</label>
						 <div class="col-sm-10">
							<textarea class="form-control" rows="5" id="comment" required name="comment"></textarea>
						 </div>
					  </div>
					  <div class="form-group">
						 <div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default" name="submit" id="submit" onsubmit="return validate();">Submit</button>
							<span style="color:red;" id="msg"></span>
						 </div>
					  </div>
				   </div>
			   </form>
            </div>
         </div>
      </div>
      </section>
	  
	  
	
   </body>
   <?php
   include 'lib/footer.php';
   ?>