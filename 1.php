<?php
include_once 'dbconnect.php';
ob_start();
session_start();
unset($email);
$email=$_SESSION['email'];
if($email=='')
{
  header("Location:login.php");
}
else
{
  $myfile = fopen("$email.txt", "a+");
  if(isset($_POST['add']))
  {
  	$id=$_POST['id'];
  	$flag=1;
  	$filecontents = file_get_contents("$email.txt");
       	$words = preg_split('/[\s]+/', $filecontents, -1, PREG_SPLIT_NO_EMPTY);
       	foreach ($words as $key => $value) {
       		if($value==$id)
       		{
       			echo "<script>alert('Item already present in Cart')</script>";
       			$flag=0;
       			break;	
       		}
       	}
      if($flag==1)
      {
  		$myfile = fopen("$email.txt", "a+");
  		$id.=" ";
  		fwrite($myfile, $id);
  		echo "<script>alert('Added to cart')</script>";
  		fclose($myfile);
  	}
  }
  if(isset($_POST['remove']))
  {
  	$id=$_POST['id'];
  	fopen("$email.txt","r");
    $uid=$email.uniqid();
  	$myfile=fopen("$uid.txt","a+");
       	$filecontents = file_get_contents("$email.txt");
       	$words = preg_split('/[\s]+/', $filecontents, -1, PREG_SPLIT_NO_EMPTY);
       	foreach ($words as $key => $value) {
       		if($value!=$id)
       			fwrite($myfile,$value." ");
       	}
       	unlink("$email.txt");
       	rename("$uid.txt","$email.txt");	
  }
  if(isset($_POST['payment']))
  {
  		$total=$_POST['total'];
  		$_SESSION['total']=$total;
  		header('Location:payment.php');
  }
}
?>
<script type="text/javascript">
$(document).ready(function(){
    
</script>
<!DOCTYPE html>
<html>
<head>
	<title>shopping site</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<link rel="stylesheet" href="css/materialize.css">
	<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.js"></script>
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
</head>
<body style="background-color:white">

	<nav class="nav-extended black" style="border:2px solid white">
    <div class="nav-wrapper">
      <a href="#" class="brand-logo center bold" style=" font-family: Bradley Hand ITC;font-style: italic; font-family:"Pilsner",Times,serif;">SHOPPERS STOP</a>

      <ul id="nav-mobile" class="right hide-on-med-and-down" id="myTab">
        <li><i class="large material-icons"><a style="font-size: 30px;" href="#">search</i></a></li>
        <li><i class="material-icons"><a class="modal-trigger" style="font-size: 30px;" href="#cart">add_shopping_cart</i></a></li>
         <li><i class="material-icons"><a style="font-size: 30px;" href="logout.php">power_settings_new</i></a></li>
      </ul>
  </nav>
  <nav class="nav-extended black">
  <div class="nav-wrapper center">
  <div class="nav-content">
      <ul class="tabs tabs-transparent tabs-fixed-width">
        <li class="tab"><a href="#test1">Women</a></li>
        <li class="tab"><a href="#test2">Men</a></li>
        <li class="tab"><a href="#test3">Kids</a></li>
        <li class="tab active"><a href="#test4">Accessories</a></li>
        <li class="tab"><a href="#test5">SALE</a></li>
      </ul>
    </div>
  </div>
  </nav>
  <div id="cart" class="modal modal-fixed-footer center">
    <div class="modal-content">
    <center><h3  style="font-family:Luminari">Shopping Cart</h3></center>
    <?php
     	fopen("$email.txt","r");
     	$filecontents = file_get_contents("$email.txt");
     	$words = preg_split('/[\s]+/', $filecontents, -1, PREG_SPLIT_NO_EMPTY);
     	$k=0;
      $total=0;
     	if(count($words)>0)
     	{
	     	echo "
	      <table style='border:2px solid black;font-family:Apple Chancery;'>
	      	<tr>
	      	<th style='border:2px solid black;font-size:25px;'><center>S.no</center></th>
	      	<th style='border:2px solid black;font-size:25px;'><center>Product</center></th>
	      	<th style='border:2px solid black;font-size:25px;'><center>Image</center></th>
	      	<th style='border:2px solid black;font-size:25px;'><center>Price</center></th>
	      	<th style='border:2px solid black;font-size:25px;'><center>Remove Item</center></th>
	     	</tr>";
	     	
	     	foreach ($words as $key => $value) {
	     		$query="SELECT * FROM prod where id='$value'";
	     		$res=mysql_query($query);
	     		$row=mysql_fetch_assoc($res);
	     		$src=$value;
	     		$name=$row['name'];
	     		$price=$row['price'];
          $total+=$price;
	     		$src.=".jpg";
	     		$k=$k+1;
	     		echo "<tr>
	     		<td style='border:2px solid black;font-size:25px;'><center>$k.</center></td>
	     		<td style='width:25%;border:2px solid black;font-size:25px;'><center>$name</center></td>
	     		<td style='width:35%;border:2px solid black;'><center><img src='upload/$src' style='width:75%;height:200px;'></center></td>
	     		<td style='width:10%;border:2px solid black;font-size:25px;'><center>$price</center></td>
	     		<td style='border:2px solid black;font-size:15px;'>
	     			<center><form method='POST'>
	     			<input type='hidden' value='$value' name='id'>
	     			<input style='border-radius:18px;' type='submit' value='Remove' class='btn black' name='remove'>
	     			</form>
	     			</center></td>
	     		</tr>";
	     	}
	     	echo "</table>";
        echo "<p style='font-family:Luminari;font-size:30px;'>Total: Rs.$total/-</p>";
	     echo "
	     <form method='post'>
	   	<center>
	   	<input type='hidden' value='$total' name='total'>
	   	<input type='submit' class='black' style='color:white;border-radius: 18px;font-size:20px;font-family:Luminari' name='payment' value='Proceed To Payment'></center></form>";
	   }
	     	else
	     		echo "<br><br><h4 style='font-family:Brush Script MT;'>No Items To show Here</h4>";
     	?>

      
      
    </div>
    <div class="modal-footer">
      <a href="#!" class="modal-action modal-close btn-flat ">Close</a>
    </div>
  </div>
  <div id="test1" class="col s6">
  	 <div class="row">
  	 <?php
  	 $query="SELECT * FROM prod WHERE quantity>=1 and Type='women'";
  	 $res=mysql_query($query);
  	 //$row=mysql_fetch_assoc($res);
  	 $k=mysql_num_rows($res);
  	 for($i=1;$i<=$k;$i++)
  	 {
  	 	$r=mysql_fetch_row($res);
  	 	$src=$r[0];
  	 	$id=$src;
  	 	$src=$src.".jpg";
  	 	$name=$r[2];
  	 	$price=$r[4];
  	 	echo "
	        <div class='col l3 m4 offset-m1 s8 offset-s2'>
	          <div class='card'>
	            <div class='card-image'>
	              <img src='upload/$src' style='height:65%;border:3px solid #e1f5fe'>
	              <span class='card-title'></span>
	            </div>
	            <div class='card-content' style='background-color:#e1f5fe'>
	            <center>
	            <span style='font-size:30px;font-family:Georgia'>$name</span></center>
	            <center>
	            <form method='post'>
	            <input type='hidden' value='$id' name='id'>
	            <span style='font-size:30px;font-family:cursive;'>$price/-</span>
	            <button class='material-icons right btn-flat large tooltipped' name='add' style='font-size:30px;color:green' data-position='top' data-delay='50' data-tooltip='Add to Cart'>local_grocery_store</button>
	            </center>
	            </form>
	            </div>
	        </div>
	        </div>";
    }
        ?>
    </div>
  </div>
  <div id="test2" class="col s3">
  	<div class="row">
     <?php
     $query="SELECT * FROM prod WHERE quantity>=1 and Type='men'";
     $res=mysql_query($query);
     //$row=mysql_fetch_assoc($res);
     $k=mysql_num_rows($res);
     for($i=1;$i<=$k;$i++)
     {
      $r=mysql_fetch_row($res);
      $src=$r[0];
      $id=$src;
      $src=$src.".jpg";
      $name=$r[2];
      $price=$r[4];
      echo "
          <div class='col l3 m4 offset-m1 s8 offset-s2'>
            <div class='card'>
              <div class='card-image'>
                <img src='upload/$src' style='height:450px;border:3px solid #e1f5fe'>
                <span class='card-title'></span>
              </div>
              <div class='card-content' style='background-color:#e1f5fe'>
              <center>
              <span style='font-size:30px;font-family:Georgia'>$name</span></center>
              <center>
              <form method='post'>
              <input type='hidden' value='$id' name='id'>
              <span style='font-size:30px;font-family:cursive;'>$price/-</span>
              <button class='material-icons right btn-flat large tooltipped' name='add' style='font-size:30px;color:green' data-position='top' data-delay='50' data-tooltip='Add to Cart'>local_grocery_store</button>
              </center>
              </form>
              </div>
          </div>
          </div>";
    }
        ?>
    </div>
  </div>
  <div id="test3" class="col s3">
  	<div class="row">
     <?php
     $query="SELECT * FROM prod WHERE quantity>=1 and Type='kids'";
     $res=mysql_query($query);
     //$row=mysql_fetch_assoc($res);
     $k=mysql_num_rows($res);
     for($i=1;$i<=$k;$i++)
     {
      $r=mysql_fetch_row($res);
      $src=$r[0];
      $id=$src;
      $src=$src.".jpg";
      $name=$r[2];
      $price=$r[4];
      echo "
          <div class='col l3 m4 offset-m1 s8 offset-s2'>
            <div class='card'>
              <div class='card-image'>
                <img src='upload/$src' style='height:450px;border:3px solid #e1f5fe'>
                <span class='card-title'></span>
              </div>
              <div class='card-content' style='background-color:#e1f5fe'>
              <center>
              <span style='font-size:30px;font-family:Georgia'>$name</span></center>
              <center>
              <form method='post'>
              <input type='hidden' value='$id' name='id'>
              <span style='font-size:30px;font-family:cursive;'>$price/-</span>
              <button class='material-icons right btn-flat large tooltipped' name='add' style='font-size:30px;color:green' data-position='top' data-delay='50' data-tooltip='Add to Cart'>local_grocery_store</button>
              </center>
              </form>
              </div>
          </div>
          </div>";
    }
        ?>
    </div>
  </div>
  <div id="test4" class="col s3">
  	<div class="row">
     <?php
     $query="SELECT * FROM prod WHERE quantity>=1 and Type='accessories'";
     $res=mysql_query($query);
     //$row=mysql_fetch_assoc($res);
     $k=mysql_num_rows($res);
     for($i=1;$i<=$k;$i++)
     {
      $r=mysql_fetch_row($res);
      $src=$r[0];
      $id=$src;
      $src=$src.".jpg";
      $name=$r[2];
      $price=$r[4];
      echo "
          <div class='col l3 m4 offset-m1 s8 offset-s2'>
            <div class='card'>
              <div class='card-image'>
                <img src='upload/$src' style='height:450px;border:3px solid #e1f5fe'>
                <span class='card-title'></span>
              </div>
              <div class='card-content' style='background-color:#e1f5fe'>
              <center>
              <span style='font-size:30px;font-family:Georgia'>$name</span></center>
              <center>
              <form method='post'>
              <input type='hidden' value='$id' name='id'>
              <span style='font-size:30px;font-family:cursive;'>$price/-</span>
              <button class='material-icons right btn-flat large tooltipped' name='add' style='font-size:30px;color:green' data-position='top' data-delay='50' data-tooltip='Add to Cart'>local_grocery_store</button>
              </center>
              </form>
              </div>
          </div>
          </div>";
    }
        ?>
    </div>
  </div>
  <div id="test5" class="col s3">
  	<div class="row">
     <?php
     $query="SELECT * FROM prod WHERE quantity>=1 and Type='sale'";
     $res=mysql_query($query);
     //$row=mysql_fetch_assoc($res);
     $k=mysql_num_rows($res);
     for($i=1;$i<=$k;$i++)
     {
      $r=mysql_fetch_row($res);
      $src=$r[0];
      $id=$src;
      $src=$src.".jpg";
      $name=$r[2];
      $price=$r[4];
      echo "
          <div class='col l3 m4 offset-m1 s8 offset-s2'>
            <div class='card'>
              <div class='card-image'>
                <img src='upload/$src' style='height:450px;border:3px solid #e1f5fe'>
                <span class='card-title'></span>
              </div>
              <div class='card-content' style='background-color:#e1f5fe'>
              <center>
              <span style='font-size:40px;font-family:Georgia'>$name</span></center>
              <center>
              <form method='post'>
              <input type='hidden' value='$id' name='id'>
              <span style='font-size:30px;font-family:cursive;'>$price/-</span>
              <button class='material-icons right btn-flat large tooltipped' name='add' style='font-size:30px;color:green' data-position='top' data-delay='50' data-tooltip='Add to Cart'>local_grocery_store</button>
              </center>
              </form>
              </div>
          </div>
          </div>";
    }
        ?>
    </div>
  </div>
            


	</body>
	</html>
  <script>
      $(document).ready(function(){
    $('.tooltipped').tooltip({delay: 50});
  });
  </script>
	<script>
	$(document).ready(function(){
    $('.modal-trigger').leanModal();
  }); 
</script>

<script>
	$(document).ready(function(){
    $('ul.tabs').tabs();
  });
        
		$(document).ready(function(){
      $('.carousel').carousel();
    });
        
	</script>