<?php
session_start();
if (! isset($_SESSION['uID']) or $_SESSION['role']!="1") {
	header("Location: loginForm.php");
}

require("todoModel.php");

$id = (int)$_GET['id'];
// $rs = getJobDetail($id);//得到各工作所有資訊
// if (! $rs) {
// 	echo "no data found";
// 	exit(0);
// }

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>無標題文件</title>
</head>
<body>
<h1>Edit Task</h1>
<form method="post" action="UpdateTeacherConfirm.php">

	  <input type='hidden' name='id' value='<?php echo $id ?>'>

      導師到訪說明: <input name="teacher_comment" type="text" id="teacher_comment" /> <br>

      導師簽章: <input name="teacher_name" type="text" id="teacher_name" /> <br>
	  <br>

      <input type="submit" name="Submit" value="送出" />
	</form>
  </tr>
</table>
</body>
</html>
