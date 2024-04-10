<?php

header("Access-Control-Allow-Origin:*");
header("Content-Type:application/json");
header("Access-Control-Allow-Methods:DELETE");


require 'dbconfig.php';

global $conn;

$deleteid=$_GET['id'];

$query="DELETE FROM question WHERE id='$deleteid' LIMIT 1";

$result=mysqli_query($conn,$query);

if($result){
	$data=[
		'status'=>200,
		'message'=>"Data Deleted SuccessFully",
	];
	header("HTTP:/1.0 200 Data Deleted SuccessFully");
	echo json_encode($data);
}
else{
	$data=[
		'status'=>404,
		'message'=>"Data Id not Found",
	];
	header("HTTP:/1.0 404 Data ID not Found");
	echo json_encode($data);
}

// header("location:display.php");
?>	
