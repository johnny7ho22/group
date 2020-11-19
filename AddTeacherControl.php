<?php
require("todoModel.php");
//$teacher_comment,$teacher_name
$id=(int)$_POST['id'];
$teacher_comment=mysqli_real_escape_string($conn,$_POST['teacher_comment']);//取得表單資訊
$teacher_name=mysqli_real_escape_string($conn,$_POST['teacher_name']);//取得表單資訊

if ($teacher_comment) { //if title is not empty
    add_teacher_Job($teacher_comment,$teacher_name);
    $msg="Message updateded";
} else {
	$msg= "Message title cannot be empty";
}
header("Location: todoListView.php?m=$msg");
?>