<?php

header("Access-Control-Allow-Origin:*");
header("Content-Type:application/json");
header("Access-Control-Allow-Methods:POST");


require 'dbconfig.php';

global $conn;

$name=$_POST['name'];
$mobile=$_POST['mobile'];
$email=$_POST['email'];


$query=$conn->prepare("INSERT INTO register(name,mobile_number,email) VALUES(?,?,?)");

$query->bind_param("sss",$name,$mobile,$email);

if($query->execute() === TRUE){
	echo "Registered SuccessFully";
}
else{
	echo "Error : ".$query->error;
}

// $select=$conn->prepare("SELECT * FROM register WHERE email='$email'");

// $select->execute();

// $result=$select->get_result();

// $details=array();

// while($row=$result->fetch_assoc()){
// 	$details[]=$row;
// }

// $select->close();
$query->close();
$conn->close();



// echo json_encode($details);
?>

