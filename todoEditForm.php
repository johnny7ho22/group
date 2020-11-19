<?php
session_start();
if (! isset($_SESSION['uID']) or $_SESSION['uID']!="boss") {
	header("Location: loginForm.php");
} 
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>學生</title>
</head>
<body>
<h1>貧困學生補助經費申請表</h1>
一、為照顧家庭遭遇困境學生題，加強救助貧困學生經費，以維護學生身心健康發展，確保其安心就學，特訂定本要點。<br>
二、補助對象：就讀學生，符合以下條件者，得向學校提出申請：<br>
貧困學生(低收入戶、中低收入戶、家庭突發因素)，經導師家庭訪視認定等家庭經濟困難學生。<br>
三、補助金額：依照情況，核實申請補助，5000元至20000元。<br>
四、申請方式：學生應填寫「貧困學生補助經費申請表」，提出申請。<br>
五、本要點補助之貧困學不得與其他民間團體、政府機關等重複補助；如同時有二個以上單位提供補助，經查重複者應予繳回。<br>
六、學校導師應主動進行家庭訪問，協助急困學生解決問題。<br>
七、本要點自發布日實施。<br>
<form method="post" action="todoUpdControl.php">

      申請人: <input name="name" type="text" id="name"  /> <br>

      學號: <input name="number" type="text" id="number"  /> <br>
	  
	  父親姓名: <input name="father" type="text" id="father"  /> <br>
	  
	  母親姓名: <input name="mother" type="text" id="mother" /> <br>

	  申請補助種類: <select  name="type" type="select" id="type" /> 
					<option value='低收入戶'>低收入戶</option>
					<option value='中低收入戶'>中低收入戶</option>
					<option value='家庭突發因素'>家庭突發因素</option>
					</select>
	  <br>

      <input type="submit" name="Submit" value="送出" />
	</form>
	<br>
	<a href="todoList.php">查詢申請狀態</a>
  </tr>
</table>
</body>
</html>
