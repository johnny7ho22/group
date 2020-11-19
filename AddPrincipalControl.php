<?php
require("todoModel.php");
// $result,$secretary_comment,$secretary_name
$id=(int)$_POST['id'];
$principal_name=mysqli_real_escape_string($conn,$_POST['principal_name']);//取得表單資訊


if ($principal_name) { //if title is not empty
    add_principal_Job($principal_name);
    $msg="Message updateded";
} else {
	$msg= "Message title cannot be empty";
}
header("Location: todoListView.php?m=$msg");
?>