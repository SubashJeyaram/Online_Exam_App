<?php

header("Access-Control-Allow-Origin:*");
header("Content-Type:application/json");
header("Access-Control-Allow-Methods:GET");


require 'dbconfig.php';

global $conn;

if($_SERVER['REQUEST_METHOD'] === 'GET'){

$query="SELECT * FROM question";

$result=mysqli_query($conn,$query);

if(mysqli_num_rows($result)>0){

	while($res=mysqli_fetch_all($result,MYSQLI_ASSOC)){
		$data=[
			'status'=>200,
			'message'=>"Fetched SuccessFully",
			'data'=>$res
		];
		echo json_encode($data);
	}

}
	
}
else{
	echo "Error: Invalid request method. Only GET method is allowed.";
}
?>