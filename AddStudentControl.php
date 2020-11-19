<?php
require("todoModel.php");

$id=(int)$_POST['id'];
$name=mysqli_real_escape_string($conn,$_POST['name']);//取得表單資訊
$number=mysqli_real_escape_string($conn,$_POST['number']);//取得表單資訊
$father=mysqli_real_escape_string($conn,$_POST['father']);//取得表單資訊
$mother=mysqli_real_escape_string($conn,$_POST['mother']);
$type=mysqli_real_escape_string($conn,$_POST['type']);

if ($name) { //if title is not empty
    add_student_Job($name,$number, $father,$mother,$type);
    $msg="Message updateded";
} else {
	$msg= "Message title cannot be empty";
}
header("Location: todoListView.php?m=$msg");
?>