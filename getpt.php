<?php
session_start();

include ("inc/connect.php");

 if(!isset($_SESSION['user_id']) || $_SESSION['user_id']=="")
 {
 	header('Location:user/user_login.php');

 }



	$aid=$_GET['aid'];
	$user_id=$_SESSION['user_id'];
	$dt=date('Y-m-d h:i:s');

	$sql="select read_pt from settings where id=1";
	$readPt=ReturnAnyValue($conn,$sql);

$sql="insert into user_points(user_id,art_id,points,pt_dt) values('$user_id','$aid','$readPt','$dt')";

if(mysqli_query($conn,$sql))
{
	  $msg="<b>Congratulations !!</b> You earned a Point.";
      $url="index.php?st=s&msg=$msg";
      gotopage($url);
}
else 
{
	echo $sql;
}

?>