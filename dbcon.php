<?php

//build the connection variable and assign database credentials
$conn = mysqli_connect('localhost','root','','products');

//if DB connection fails, get a error message
if(!$conn){
    die('Connection Failed'.mysqli_connect_error());
}

?>