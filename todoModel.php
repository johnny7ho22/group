<?php
require_once("dbconnect.php");

function addJob($title,$msg, $urgent) {
	global $conn;
	$sql = "insert into todo (title, content,urgent, addTime, status) values ('$title','$msg', '$urgent', NOW(),0);";
	mysqli_query($conn, $sql) or die("Insert failed, SQL query error"); //執行SQL	
}

function cancelJob($jobID) {
	global $conn;
	$sql = "update todo set status = 3 where id=$jobID and status <> 2;";
	mysqli_query($conn,$sql);
	//return T/F
}

function updateJob($id,$title,$msg, $urgent) {//更改清單(可新增、或修改)
	global $conn;
	if ($id== -1) { //id設-1代表是要新增工作
		addJob($title,$msg, $urgent);
	} else {
		$sql = "update todo set title='$title', content='$msg', urgent='$urgent' where id=$id;";//若id為-1以外的話，就是要更新工作內容，而不是新增工作
		mysqli_query($conn, $sql) or die("Insert failed, SQL query error"); //執行SQL
	}
}

function getJobList($bossMode) {
	global $conn;
	if ($bossMode) {
		$sql = "select *, TIME_TO_SEC(TIMEDIFF(NOW(), addTime)) diff from todo order by status, urgent desc;";
	} else { //員工只顯示未完成的工作
		$sql = "select *, TIME_TO_SEC(TIMEDIFF(NOW(), addTime)) diff from todo where status = 0;";
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

function setFinished($jobID) { //將工作設為已完成(0-->1)
	global $conn;
	$sql = "update todo set status = 1, finishTime=NOW() where id=$jobID and status = 0;";
	mysqli_query($conn,$sql) or die("MySQL query error"); //執行SQL
	
}

function rejectJob($jobID){ //撤回工作，從已完成改成未完成(1-->0)
	global $conn;
	$sql = "update todo set status = 0 where id=$jobID and status = 1;";
	mysqli_query($conn,$sql);
}

function setClosed($jobID) {//已完成改已結案(1-->2)
	global $conn;
	$sql = "update todo set status = 2 where id=$jobID and status = 1;";
	mysqli_query($conn,$sql);
}


?>