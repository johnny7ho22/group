<?php
require("todoModel.php");

$teacher_comment=mysqli_real_escape_string($conn,$_POST['teacher_comment']);//取得表單資訊
$teacher_name=mysqli_real_escape_string($conn,$_POST['teacher_name']);
$id=(int)$_POST['id'];

if ($teacher_name) { //if title is not empty
    teacher_confirm($id,$teacher_comment,$teacher_name);
	$msg="導師已確認";
} else {
	$msg= "導師未確認";
}
header("Location: teacherView.php?m=$msg");
?>