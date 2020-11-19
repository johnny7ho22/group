<?php
require_once("dbconnect.php");

//	$sql = "insert into apply (name, number,father, mother,type,teacher_comment,teacher_name,result,secretary_comment,secretary_name,principal_name) values ('$name','$number', '$father','$mother', '$type','$teacher_comment', '$teacher_name','$result', '$secretary_comment','$secretary_name', '$principal_name');";


function add_student_Job($name,$number, $father,$mother,$type) {
	global $conn;
		$sql = "insert into apply (name, number,father, mother,type,status) values ('$name','$number', '$father','$mother', '$type','1');";
	// else if($bossMode == 1)
	// {
	// 	$sql = "insert into apply (teacher_comment,teacher_name) values ('$teacher_comment', '$teacher_name');";

	// }
	// else if($bossMode == 2)
	// {
	// 	$sql = "insert into apply (result,secretary_comment,secretary_name,principal_name) values ('$result', '$secretary_comment','$secretary_name');";
	// }
	// else
	// {

	// }
	// $sql = "insert into apply (name, number,father, mother,type,teacher_comment,teacher_name,result,secretary_comment,secretary_name,principal_name) values ('$name','$number', '$father','$mother', '$type','$teacher_comment', '$teacher_name','$result', '$secretary_comment','$secretary_name', '$principal_name');";
	mysqli_query($conn, $sql) or die("Insert failed, SQL query error"); //執行SQL	
}




function add_teacher_Job($teacher_comment,$teacher_name) {
	global $conn;

		$sql = "insert into apply (teacher_comment,teacher_name) values ('$teacher_comment', '$teacher_name');";

	mysqli_query($conn, $sql) or die("Insert failed, SQL query error"); //執行SQL	
}


function add_secretary_Job($result,$secretary_comment,$secretary_name) {
	global $conn;
	$sql = "insert into apply (result,secretary_comment,secretary_name) values ('$result', '$secretary_comment','$secretary_name');";
	mysqli_query($conn, $sql) or die("Insert failed, SQL query error"); //執行SQL	
}

function add_principal_Job($principal_name) {
	global $conn;
	$sql = "insert into apply (principal_name) values ('$principal_name');";
	mysqli_query($conn, $sql) or die("Insert failed, SQL query error"); //執行SQL	
}



function cancelJob($jobID) {
	global $conn;
	$sql = "update todo set status = 3 where id=$jobID and status <> 2;";
	mysqli_query($conn,$sql);
	//return T/F
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