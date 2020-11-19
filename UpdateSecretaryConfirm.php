<?php
require("todoModel.php");
// secretary_confirm($id,$result,$secretary_comment,$secretary_name) 
$result=mysqli_real_escape_string($conn,$_POST['result']);//取得表單資訊
$secretary_comment=mysqli_real_escape_string($conn,$_POST['secretary_comment']);
$secretary_name=mysqli_real_escape_string($conn,$_POST['secretary_name']);
$id=(int)$_POST['id'];

if ($secretary_name) { //if title is not empty
	secretary_confirm($id,$result,$secretary_comment,$secretary_name);
	$msg="秘書已確認";
} else {
	$msg= "秘書未確認";
}
header("Location: todoListView.php?m=$msg");
?>