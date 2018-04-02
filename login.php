<?php
include_once 'dbconnect.php';
ob_start();
session_start();
if(isset($_POST['signup']))
{
	$first=$_POST['first'];
	$last=$_POST['last'];
	$email=$_POST['email'];
	$mobile=$_POST['mobile'];
	$password=$_POST['password'];
	$reenter=$_POST['reenter'];


	if(strlen($mobile)>10 OR strlen($mobile)<10)
		echo "<script>alert('invalid mobile number')</script>";
	else
	{
	 if(strcmp($password,$reenter)!=0)
	 {
		echo "<script>alert('password did not match')</script>";
	 }
	 else
	 {
		$query="INSERT INTO users(first,last,email,mobile,password) VALUES ('$first','$last','$email','$mobile','$password')";
		$res=mysql_query($query);
		if($res)
			echo "<script>alert('You may Login Now')</script>";
		else
			echo "<script>alert('Error in Signup')</script>";
	 }
    }
}
if(isset($_POST['login']))
{
	$email=$_POST['email1'];
	$password=$_POST['password'];
	$query="SELECT * FROM users WHERE password='$password' AND email='$email'";
	$res=mysql_query($query);
	echo $res['first'];
	if($res)
	{
		echo "<script>alert('Succesfully logged in')</script>";
    $_SESSION['email']=$email;
		header("Location:1.php");
	}
	else
	{
		echo "<script>alert('Invalid user details')</script>";
	}

}

?>
<!DOCTYPE html>
<html>
<head>
<title>shopping site</title>
  <link rel="stylesheet" href="css/materialize.css">
  <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="js/materialize.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
</head>

<style>
	#content{
		width:100%;
		height: 100%;
		position: absolute;
		top: 0;
		left: 0;
		z-index: 1;
		
	}
</style>
<body style="overflow-x:hidden;">
	<img src="img/123.jpg" style="width:auto;height:100%;opacity:1.0; overflow: auto;opacity:0.3">
	<div id="content">

	 <nav class="transparent">
    <div class="nav-wrapper">
      <a href="#" class="brand-logo center georgia black-text">SHOPPERS STOP</a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        
        <li><a class="modal-trigger" href="#contact">Contact Us</a></li>
      </ul>
    </div>
  </nav>
 <div id="contact" class="modal">
    <div class="modal-content">
      <h4>This site does not hold any of your personal information.</h4>
      <p>contact number: 91-9532561136
      	customer care: 1800-8575-0000
      	all the data is safe with us.
      	for any further information:
      		EMAIL: pandeyvandita1999@gmail.com</p>
    </div>
    <div class="modal-footer">
      <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Close</a>
    </div>
  </div>
          

  			<div class="row" style="margin-top:50px;">
  				<div class="col l6 m6 s6 offset-l3 offset-m3 offset-s3">
            <div class="card-content transparent">
             <div class="row transparent">
    <div class="col s12 m12 l12">
      <ul class="tabs transparent" style="border:1px solid black;color:black">
        <li class="tab col s12 m12 l6" style="border:1px solid black"><a class="active" href="#test1" style="flood-color:black;">Login</a></li>
        <li class="tab col s12 m12 l6" style="border:1px solid black"><a style="flood-color:black;" href="#test2">Sign Up</a></li>
      </ul>
    </div>
    <div id="test1" class="col s12 l6 m12 offset-l3">
     <div class="row">
    <form class="col s12 m12 l12" method="post">
      <div class="row">
        <div class="input-field col s12 m12 l12">
          <i class="material-icons prefix">email</i>
          <input id="icon_prefix" type="text" class="validate" name="email1">
          <label for="icon_prefix">Email</label>
        </div>
        <div class="input-field col s12 m12 l12">
          <i class="material-icons prefix">fingerprint</i>
          <input id="icon_telephone" type="password" class="validate" name="password">
          <label for="icon_telephone">Password</label>
        </div>
        </div>
        <center><button class="btn waves-effect waves-light black" type="submit" name="login">Submit
    <i class="material-icons right">send</i>
  </button></center>
    </form>
  </div>
        
  </div>

    <div id="test2" class="col s12 l10 m12 offset-l1">
   <div class="row">
    <form class="col s12" method="post">
      <div class="row">
        <div class="input-field col s12 m10 l6">
          <i class="material-icons prefix">account_circle</i>
          <input id="icon_prefix" type="text" class="validate" name="first">
          <label for="icon_prefix">First Name</label>
        </div>
        <div class="input-field col s12 m10 l6">
          <i class="material-icons prefix">chevron_right</i>
          <input id="icon_telephone" type="text" class="validate" name="last">
          <label for="icon_telephone">Last Name</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12 m10 l6">
          <i class="material-icons prefix">email</i>
          <input id="icon_prefix" type="email" class="validate" name="email">
          <label for="icon_prefix">Email</label>
        </div>
        <div class="input-field col s12 m10 l6">
          <i class="material-icons prefix">phone</i>
          <input id="icon_telephone" type="tel" class="validate" name="mobile">
          <label for="icon_telephone">Mobile</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12 m10 l6">
          <i class="material-icons prefix">fingerprint</i>
          <input id="icon_prefix" type="password" class="validate" name="password">
          <label for="icon_prefix">Password</label>
        </div>
        <div class="input-field col s12 m10 l6">
          <i class="material-icons prefix">fingerprint</i>
          <input id="icon_telephone" type="password" class="validate" name="reenter">
          <label for="icon_telephone">Confirm password</label>
        </div>
      </div>
      <center><button class="btn waves-effect waves-light black" type="submit" name="signup">Submit
    <i class="material-icons right">send</i>
  </button></center>
    </form>
  </div>
    </div>
  </div>
            </div>
            <div class="card-action">
            </div>
          </div>
      </div>
</div>
</body>
</html>
<script>
	$(document).ready(function(){
    // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
    $('.modal-trigger').leanModal();
  });
          
	$(document).ready(function(){
    $('ul.tabs').tabs();
  });

</script>
