<?php
session_start();
require("dbconnect.php");
$id = 1;
$sql = "select * from todo where id = $id;";
$result=mysqli_query($conn,$sql) or die("DB Error: Cannot retrieve message.");
$rs=mysqli_fetch_assoc($result);
if (! $rs) {
	echo "no data found";
	exit(0);
}

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>導師</title>
</head>
<body>
<form method="post" action="todoUpdate.php">

	  申請人:<?php echo "<td>{$rs['name']}</td>";?> <br>

      學號: <?php echo "<td>{$rs['number']}</td>";?> <br>
	  
	  父親姓名: <?php echo "<td>{$rs['father']}</td>";?> <br>
	  
	  母親姓名: <?php echo "<td>{$rs['mother']}</td>";?> <br>

	  申請補助種類: <?php echo "<td>{$rs['type']}</td>";?> <br>
	  
	  導師訪視說明:<input name="teacher_comment" type="text" id="teacher_comment" /> <br>
	  
	  導師簽章: <input name="teacher_name" type="text" id="teacher_name" /> <br>

      <input type="submit" name="Submit" value="送出" />
	</form>
  </tr>
</table>
</body>
</html>
