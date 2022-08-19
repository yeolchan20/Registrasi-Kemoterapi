<?php 
$con=mysqli_connect("us-cdbr-east-06.cleardb.net","b2fc15c9651e0b","92d5433c","heroku_5ab3c0dd19c4e81");
if(isset($_POST['btnSubmit']))
{
	$name = $_POST['txtName'];
	$email = $_POST['txtEmail'];
	$contact = $_POST['txtPhone'];
	$message = $_POST['txtMsg'];

	$query="insert into contact(name,email,contact,message) values('$name','$email','$contact','$message');";
	$result = mysqli_query($con,$query);
	
	if($result)
    {
    	echo '<script type="text/javascript">'; 
		echo 'alert("Pesan dan Kesan telah berhasil dikirim!");'; 
		echo 'window.location.href = "contact.html";';
		echo '</script>';
    }
}
