<?php
session_start();
require("userModel.php");

$userName = $_POST['id'];
$passWord = $_POST['pwd'];

if (checkUserIDPwd($userName, $passWord)) {//checkUserIDPwd為True的話
	$_SESSION['uID'] = $userName;
	header("Location: todoListView.php");//跳到清單首頁
} else {
	$_SESSION['uID']="";
	header("Location: loginForm.php"); 
}
?>
