<?php
require("todoModel.php");

$name=mysqli_real_escape_string($conn,$_POST['name']);//取得表單資訊
$number=mysqli_real_escape_string($conn,$_POST['number']);
$father=mysqli_real_escape_string($conn,$_POST['father']);
$mother=mysqli_real_escape_string($conn,$_POST['mother']);
$type=mysqli_real_escape_string($conn,$_POST['type']);
$status='待審核';


if ($name) { //if title is not empty
	addJob($name, $number,$father,$mother,$type,$status);
	$msg="Message updateded";
} else {
	$msg= "Message title cannot be empty";
}
header("Location: todoListView.php?m=$msg");
?>