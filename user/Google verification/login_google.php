<?php session_start();

include("../admin/inc/connect.php");
$gid=$_POST['id'];
$name=$_POST['name'];
$email=$_POST['email'];

$sql="select count(*) from users where email='$email'";
 $cnt=ReturnAnyValue($conn,$sql);
 

 
		 
			 if($cnt==0)
				 {

				   $sql="insert into users (google_id,first_name,email,email_verify,status) 
				                    values ('$gid','$name','$email','1','1')";  
				   mysqli_query($conn,$sql);     
				     
				 }
			else
				{
					$sql="select status from users where email='$email'";
 					$sts=ReturnAnyValue($conn,$sql);

 					if($sts==0)
							 {
							 	gotopage("betechnical.in");
							 	die;

							 }
 

				    $sql="update users set google_id='$gid' where email='$email'";
				    mysqli_query($conn,$sql); 
				}

			$sql="select user_id from users where email='$email'";
			$uid=ReturnAnyValue($conn,$sql);
			$_SESSION['user_id']=$uid;

			$_SESSION['name']=$name;

		

?>