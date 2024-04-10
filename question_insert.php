<?php

header("Access-Control-Allow-Origin:*");
header("Content-Type:application/json");
header("Access-Control-Allow-Methods:POST");


require 'dbconfig.php';

global $conn;

$exam=$_POST['exam'];
$category=$_POST['category'];
$testname=$_POST['testname'];
$a1=$_POST['a1'];

for($i=1; $i<count($a1); $i++){

	$query="INSERT INTO question_insert(exam,category,testname,question) VALUES('$exam','$category','$testname','$a1[$i]')";

	$result=mysqli_query($conn,$query);

	echo $result;
}

?>