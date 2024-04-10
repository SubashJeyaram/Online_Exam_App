<?php

header("Access-Control-Allow-Origin:*");
header("Content-Type:application/json");
header("Access-Control-Allow-Methods:POST");


require 'dbconfig.php';

global $conn;

$exam=$_POST['exam'];
$category=$_POST['category'];
$testname=$_POST['testname'];
$timer=$_POST['timer'];
$question=$_POST['numberQ'];

$file=$_FILES['file']['name'];
	$tempname=$_FILES['file']['tmp_name'];

	$folder="./image/".$file;

	move_uploaded_file($tempname,$folder);

$query=$conn->prepare("INSERT INTO question(exam,category,testname,timer,questions,file) VALUES(?,?,?,?,?,?)");

$query->bind_param("ssssss",$exam,$category,$testname,$timer,$question,$file);

if($query->execute() === TRUE){
	echo "Question Updated SuccesFully";
}
else{
	echo "ERROR : " . $query->error;
}

$query->close();
$conn->close();

header("Location:display.html"); 

?>