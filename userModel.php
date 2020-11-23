<?php
require_once("dbconnect.php");

function checkUserIDPwd($userName, $passWord) {
	global $conn;
	$userName = mysqli_real_escape_string($conn,$userName);
	$isValid = false;

	$sql = "SELECT password FROM user WHERE loginID='$userName'";
	if ($result = mysqli_query($conn,$sql)) {
		if ($row=mysqli_fetch_assoc($result)) {
			if ($row['password'] == $passWord) { //若password相符
				//keep the user ID in session as a mark of login
				//$_SESSION['uID'] = $row['id'];
				//provide a link to the message list UI
				$isValid = true; //設為true
			}
		}
	}
	return $isValid;
}



function getUserRole($name) { //取得User的帳號密碼(不安全)
	global $conn;
	$sql = "SELECT role FROM user WHERE LoginID='$name';";
	$result=mysqli_query($conn,$sql) or die("DB Error: Cannot get role.");
	$result=mysqli_fetch_assoc($result);
	return $result['role'];
}

function setUserPassword($userName){
		return false;
}

?>










