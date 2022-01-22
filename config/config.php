<?php 

$db = new mysqli('localhost','root','','alikehome');

if($db->connect_error){
	echo "Error connecting database";
}

 ?>