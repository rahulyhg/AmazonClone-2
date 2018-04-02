<?php
include_once 'dbconnect.php';
if(isset($_POST['submit']))
{
	$l=uniqid();
	$vendor=$_POST['vendor'];
	$name=$_POST['name'];
	$quantity=$_POST['quantity'];
	$price=$_POST['price'];
	$type=$_POST['type'];
	$target_dir = "upload/";
	$target_file = $target_dir .$_FILES["image"]["name"];
	$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
	$target_file=$target_dir .$l.".".$imageFileType;
	$query="INSERT INTO prod(id,vendor,name,quantity,price,Type) VALUES('$l','$vendor','$name','$quantity','$price','$type')";
	$res=mysql_query($query);
	if($res)
	{
		if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) 
		{
			//nothing;
		} 
		else 
		{
		    echo "<script>alert('Error uploading file')</script>";
		}
	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Add the Product Form</title>
	<link rel="stylesheet" href="css/materialize.css">
	<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.js"></script>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body style="background:linear-gradient(to left, #ffcdd2,#b71c1c) ">
<center><h2 style="font-family: Georgia;">Product Form</h2></center>
<div style="margin-top: 40px;">
<div class="row">
<div class="col l4 offset-l4" style="background:linear-gradient(to right, #f3e5f5,#4a148c);border: 5px solid black;">
<form method="POST" enctype="multipart/form-data">
	<center>
	<br>
	<table style="border: 4px solid black; font-family:Georgia;">
		<tr style="border: 2px solid black">
		<td>Vendor</td>
		<td><input type="text" name="vendor" class="col s9"></td>
		</tr>

		<tr style="border: 1px solid black">
		<td>Product Name</td>
		<td><input class="col s9" type="text" name="name"></td>
		</tr>
		
		<tr style="border: 1px solid black">
		<td>Quantity</td>
		<td><input type="number" class="col s9" name="quantity"></td>
		</tr>

		<tr style="border: 1px solid black">
		<td>Price</td>
		<td><input type="number" name="price" class="col s9"></td>
		</tr>

		<tr style="border: 1px solid black">
		<td>Type</td>
		<td>
  			<select class="browser-default col s9" name="type">
      		<option value="" disabled selected>Choose your option</option>
      		<option value="women">Women</option>
      		<option value="Men">Men</option>
      		<option value="kids">Kids</option>
      		<option value="accessories">Accessories</option>
      		<option value="sale">Sale</option>
    		</select>
    		</div>
		</td>
		</tr>

		<tr style="border: 1px solid black">
		<td>Product Image</td>
		<td><input type="file" name="image" class="col s9"></td>
		</tr>
	</table>
	<br>
	<input type="submit" name="submit">
	<br>
	<br>
	</center>
</form>
</div>
</div>
</div>
</body>
</html>