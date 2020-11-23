<?php
require_once("dbconnect.php");

function addJob($name, $number,$father,$mother,$type,$status) {
	global $conn;
	$sql = "insert into apply (name, number, father,mother,type,status) values ('$name', '$number','$father','$mother','$type','$status');"; //新增一筆資料
	mysqli_query($conn, $sql) or die("Insert failed, SQL query error"); //執行SQL
}

function cancelJob($jobID) {
	global $conn;
	$sql = "update todo set status = 3 where id=$jobID and status <> 2;";
	mysqli_query($conn,$sql);
	//return T/F
}

function teacher_confirm($id,$teacher_comment,$teacher_name)
{
	global $conn;
	$sql = "update apply set teacher_comment = '$teacher_comment', teacher_name = '$teacher_name' ,status = '導師已審核' where id=$id;";
	mysqli_query($conn, $sql) or die("Insert failed, SQL query error"); //執行SQL
}


function secretary_confirm($id,$result,$secretary_comment,$secretary_name)
{
	global $conn;
	$sql = "update apply set result = '$result',  secretary_comment = '$secretary_comment', secretary_name = '$secretary_name',status = '秘書已審核' where id=$id;";
	mysqli_query($conn, $sql) or die("Insert failed, SQL query error"); //執行SQL
}

function getJobList($bossMode) {
	global $conn;
	if ($bossMode == 0)
	{
		$sql = "select id, name, number, father, mother, type,status from apply;";
	}
	else if($bossMode == 1)
	{
		$sql = "select * from apply where status = 0;";
	}
	else if($bossMode == 2)
	{
		$sql = "select * from apply where status = 0;";
	}
	else
	{
		$sql = "select * from apply;";
	}

	$result=mysqli_query($conn,$sql) or die("DB Error: Cannot retrieve message.");
	return $result;
}

function getJobDetail($id) { //取得工作內容細項需要id
	global $conn;
	if ($id == -1) { //-1 stands for adding a new record //預設文字
		$rs=[
			"id" => -1,
			"title" => "new title",
			"content" => "job description",
			"urgent" => "一般"
		];
	} else {
		$sql = "select id, title, content, urgent from todo where id=$id;";
		$result=mysqli_query($conn,$sql) or die("DB Error: Cannot retrieve message.");
		$rs=mysqli_fetch_assoc($result);
	}
	return $rs;
}

function setFinished($id) { //將工作設為已完成(0-->1)
	global $conn;
	$sql = "update apply set status = '決行(已結案)' where id=$id;";
	mysqli_query($conn,$sql) or die("MySQL query error"); //執行SQL
}

function rejectJob($id){ //撤回工作，從已完成改成未完成(1-->0)
	global $conn;
	$sql = "update apply set status = '否決(已結案)' where id=$id;";
	mysqli_query($conn,$sql);
	mysqli_query($conn,$sql) or die("MySQL query error"); //執行SQL
}

//function setClosed($jobID) {//已完成改已結案(1-->2)
	//global $conn;
	//$sql = "update todo set status = '結案' where id=$jobID and status = 1;";
	//mysqli_query($conn,$sql);
//}


?>