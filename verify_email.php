<?php include ("inc/connect.php"); ?>
<!DOCTYPE html>
<html lang="en">

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- Site Metas -->
    <title>Be Technical Email Verified !</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/title-icon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    
    <!-- Design fonts -->
    <link href="https://fonts.googleapis.com/css?family=Ubuntu:300,400,400i,500,700" rel="stylesheet"> 
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet"> 

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- FontAwesome Icons core CSS -->
    <link href="css/font-awesome.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="style.css" rel="stylesheet">

    <!-- Responsive styles for this template -->
    <link href="css/responsive.css" rel="stylesheet">

    <!-- Colors for this template -->
    <link href="css/colors.css" rel="stylesheet">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<?php

	include("inc/site-header.php");

$email=$_GET['eMail'];

$sql="update users set email_verify='1',status='1' where email='$email'";
//echo $sql;
//echo $sql;

if(mysqli_query($conn,$sql))
{
    echo "<div class='alert alert-success bm-2'><b>Congratulations !</b> Your Email has been Verified</div>";

    $sql="select ref_id from users where email='$email'";
    $id=ReturnAnyValue($conn,$sql);

    if($id=="")
    {

    }

    else
    {
        $dt=date('Y-m-d h:i:s');

    $sql="select ref_pt from settings where id=1";
    $ref_pt=ReturnAnyValue($conn,$sql);

    $sql="select user_id from users where email='$email'";
    $pt_from=ReturnAnyValue($conn,$sql);



        $sql="insert into user_points(user_id,pt_type,points,pt_from,pt_dt) values('$id','3','$ref_pt','$pt_from','$dt')";

        mysqli_query($conn,$sql);
    }
}


?>