<?php
session_start();
if (! isset($_SESSION['uID']) or $_SESSION['uID']!="2") {
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
<form method="post" action="UpdateSecretaryConfirm.php">

	  <input type='hidden' name='id' value='<?php echo $id ?>'>

      秘書審核結果: <input name="result" type="text" id="result" /> <br>

      秘書審核意見: <input name="secretary_comment" type="text" id="secretary_comment" /> <br>

	  秘書簽章: <input name="secretary_name" type="text" id="secretary_name" /> <br>

	  <br>

      <input type="submit" name="Submit" value="送出" />
	</form>
  </tr>
</table>
</body>
</html>
