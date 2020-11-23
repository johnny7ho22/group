<?php
session_start();
require("todoModel.php");
$bossMode=1;
$result=getJobList($bossMode);//取得所有工作清單
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style>
    h1 {
        text-align: center;
    }
    body {
        background-color: #EEFFBB;
    }
    p {
        text-align: center;
    }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>補助貧困學生申請系統</title>
</head>
<body>
<h1>補助貧困學生申請系統</h1>
<table width="1250" border="5">
    <tr>
        <td>流水號</td>
        <td>申請人</td>
        <td>學號</td>
        <td>父親名字</td>
        <td>母親名字</td>
        <td>申請補助種類</td>
        <td>導師訪視說明</td>
        <td>導師簽章</td>
        <!-- <td>秘書審核結果</td> -->
	<!-- <td>秘書審核意見</td> -->
    <!-- <td>秘書簽章</td> -->
    <!--<td>校長核定</td>-->
        <td>狀態</td>
        <td>等待執行動作</td>
</tr>
<?php
while (	$rs=mysqli_fetch_assoc($result))
{
	echo "<tr><td>" . $rs['id'] . "</td>";
	echo "<td>{$rs['name']}</td>";
	echo "<td>{$rs['number']}</td>";
	echo "<td>{$rs['father']}</td>";
	echo "<td>{$rs['mother']}</td>";
	echo "<td>{$rs['type']}</td>";
	echo "<td>{$rs['teacher_comment']}</td>";
	echo "<td>{$rs['teacher_name']}</td>";
	// echo "<td>{$rs['result']}</td>";
	// echo "<td>{$rs['secretary_comment']}</td>";
	// echo "<td>{$rs['secretary_name']}</td>";
	//echo "<td>{$rs['principal_name']}</td>";
	echo "<td>{$rs['status']}</td>";
	switch($bossMode)
	{
        case 0: //當為學生
            break;
            case 1://當為老師
                if($rs['status']=='待審核'&&$bossMode == 1 ){
                    echo "<td><a href='todoTeacherForm.php?id={$rs['id']}'>導師確認</a></td></tr>";
                    break;
			}
            case 2://當為秘書
			if($rs['status']=='導師已審核'&&$bossMode == 2){
				echo "<td><a href='todoSecretaryForm.php?id={$rs['id']}'>秘書確認</a></td></tr>";
				break;
			}
		case 3://當為校長
			if($rs['status']=='秘書已審核'&&$bossMode == 3){
				echo "<td><a href='UpdatePrincipalConfirm.php?act=finish&id={$rs['id']}'>核決</a>  ";
				echo "/";
				echo "<a href='UpdatePrincipalConfirm.php?act=reject&id={$rs['id']}'>否決</a></td></tr>  ";
			}
		break;
		default:
			break;
        }
    }
?>
</table>
<p>
    <a style="text-align:center" href="todoEditForm.php">登出</a> <br>
</p>
</body>
</html>