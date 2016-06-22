<?php
$host = "localhost";
$user = "lovepreet7";
$password = "lovepreet";
$db = "userdb";

$sql = "select * from contact_info;";
$con = mysqli_connect($host,$user,$password,$db);
$response = array();
$result = mysqli_query($con,$sql);
while($row =  mysqli_fetch_array($result))
{
 array_push($response,array("Name"=>$row["name"],"Email"=>$row["email"]));
}
echo json_encode($response);
?>
