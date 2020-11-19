<?php
require("todoModel.php");
// $result,$secretary_comment,$secretary_name
$id=(int)$_POST['id'];
$result=mysqli_real_escape_string($conn,$_POST['result']);//取得表單資訊
$secretary_comment=mysqli_real_escape_string($conn,$_POST['secretary_comment']);//取得表單資訊
$secretary_name=mysqli_real_escape_string($conn,$_POST['secretary_name']);//取得表單資訊


if ($secretary_name) { //if title is not empty
    add_secretary_Job($result,$secretary_comment,$secretary_name);
    $msg="Message updateded";
} else {
	$msg= "Message title cannot be empty";
}
header("Location: todoListView.php?m=$msg");
?>