<?php
$host = "localhost";
$user = "lovepreet7";
$password = "lovepreet";
$db = "userdb";

$sql = "select * from user_info where name like 'lovepreet';";
$con = mysqli_connect($host,$user,$password,$db);

$result = mysqli_query($con,$sql);
if(mysqli_num_rows($result)>0)
{
  $row =  mysqli_fetch_assoc($result);
  echo json_encode(array("Name"=>$row["name"],"Email"=>$row["email"],"Mobile"=>$row["mobile"]));
}
?>
