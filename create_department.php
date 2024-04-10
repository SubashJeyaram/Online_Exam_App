<?php

header("Access-Control-Allow-Origin:*");
header("Content-Type:application/json");
header("Access-Control-Allow-Methods:POST");


require 'dbconfig.php';

global $conn;

$email=$_POST['email'];
$tnpsc=$_POST['tnpsc'];
$tnusrb=$_POST['tnusrb'];
$ssc=$_POST['ssc'];

if(isset($tnpsc)){

$query=$conn->prepare("INSERT INTO department(email,department) VALUES('$email','$tnpsc')");

if($query->execute() === TRUE){
	echo "Registered For TNPSC SuccesFully";
}
else{
	echo "ERROR : " . $query->error;
}
}

else if(isset($tnusrb)){
	$query=$conn->prepare("INSERT INTO department(email,department) VALUES('$email','$tnusrb')");

if($query->execute() === TRUE){
	echo "Registered For TNUSRB SuccesFully";
}
else{
	echo "ERROR : " . $query->error;
}

}

else{
	$query=$conn->prepare("INSERT INTO department(email,department) VALUES('$email','$ssc')");

if($query->execute() === TRUE){
	echo "Registered For SSC SuccesFully";
}
else{
	echo "ERROR : " . $query->error;
}

}




$query->close();
$conn->close();

?>	