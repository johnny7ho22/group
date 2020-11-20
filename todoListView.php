<?php
session_start();
if (! isset($_SESSION['uID']) or $_SESSION['uID']<="") {
	header("Location: loginForm.php");
}
if ($_SESSION['uID']=='student')
{
	$bossMode = 0; //如果是boss，bossMode設1
}
else if ($_SESSION['uID']=='teacher')
{
	$bossMode = 1;
}
else if ($_SESSION['uID']=='secretary')
{
	$bossMode = 2;
}
else { // 校長身分
	$bossMode=3;
}
require("todoModel.php");
// if (isset($_GET['m'])){
// 	$msg="<font color='red'>" . $_GET['m'] . "</font>";
// } else {
// 	$msg="Good morning";
// }



$result=getJobList($bossMode);//取得所有工作清單
// $jobStatus = array('未完成','已完成','已結案','已取消'); //自己設的array


?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style>
    h1 {text-align: center;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>補助貧困學生申請系統</title>
</head>

<body>
    
    <h1>補助貧困學生申請系統</h1>
    <!-- <div>

</div><hr> -->


<?php
// if($bossMode == 0){ // 學生頁面
    //     header("Location: todoEditForm.php");
    // }
// if($bossMode == 1){ // 導師頁面
    //     header("Location: todoTeacherForm.php");
    // }
    // if($bossMode == 2){ // 秘書頁面
        //     header("Location: todoSecretaryForm.php");
        // }
        // else{ // 校長頁面
            //     header("Location: todoPrincipalForm.php");
            // }
            ?>


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
        <td>秘書審核結果</td>
	<td>秘書審核意見</td>
    <td>秘書簽章</td>
    <!-- <td>校長核章</td> -->
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
	echo "<td>{$rs['result']}</td>";
	echo "<td>{$rs['secretary_comment']}</td>";
	echo "<td>{$rs['secretary_name']}</td>";
	// echo "<td>{$rs['principal_name']}</td>";
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
				echo "<td><a href='UpdatePrincipalConfirm.php?act=finish&id={$rs['id']}'>決行</a>  ";
				echo "-";
				echo "<a href='UpdatePrincipalConfirm.php?act=reject&id={$rs['id']}'>否決</a></td></tr>  ";
			}
		break;
		default:
			break;
        }
    }
	// echo "<tr style='background-color:$bgColor;'><td>" . $rs['id'] . "</td>";
	// echo "<td>{$rs['name']}</td>";
	// echo "<td>{$rs['number']}</td>";
	// echo "<td>{$rs['father']}</td>";
	// echo "<td>{$rs['mother']}</td>";
	// echo "<td>{$rs['type']}</td>";
	// echo "<td>{$rs['teacher_comment']}</td>";
	// echo "<td>{$rs['teacher_name']}</td>";
	// echo "<td>{$rs['result']}</td>";
	// echo "<td>{$rs['teacher_name']}</td>";
	// echo "<td>{$rs['secretary_comment']}</td>";
	// echo "<td>{$rs['secretary_name']}</td>";
	// echo "<td>{$rs['principal_name']}</td>";
	// echo "<td>{$rs['status']}</td>";
    
    // echo "<tr style='background-color:$bgColor;'><td>" . $rs['id'] . "</td>";
	// echo "<td>{$rs['title']}</td>";
	// echo "<td>" , htmlspecialchars($rs['content']), "</td>";
	// echo "<td>" , htmlspecialchars($rs['urgent']), "</td>";
	// echo "<td>{$jobStatus[$rs['status']]}</td>" ;//利用JobStatus[array來顯示工作完成與否]
	// echo "<td><font color='$fontColor'>{$rs['diff']}</font></td><td>";//字體顏色
	// switch($rs['status']) {
        // 	case 0: //當未完成（老闆可更改或取消）
	// 		if ($bossMode) {
        // 			echo "<a href='todoEditForm.php?id={$rs['id']}'>Edit</a>";
        // 			echo "<a href='todoSetControl.php?act=cancel&id={$rs['id']}'>Cancel</a>  " ;
        // 		} else {
            // 			echo "<a href='todoSetControl.php?act=finish&id={$rs['id']}'>Finish</a>  ";//員工的部分
            // 		}

            // 		break;
            // 	case 1://當已完成(可用駁回或結案)
                // 		echo "<a href='todoSetControl.php?act=reject&id={$rs['id']}'>Reject</a>  ";//駁回，狀態從1到0
                // 		echo "<a href='todoSetControl.php?act=close&id={$rs['id']}'>Close</a>  ";//將已完成設為已結案，1到2
	// 		break;
	// 	default:
	// 		break;
    // }
    // 核決或否決
    // switch($rs['status']) {
        // 學生尚未填寫表單
        // case 0:
            // 	if($bossMode == 0) {
                //         echo "<td><a href='todoEditForm.php?id={$rs['id']}'>Apply</a></td>";
                //     }
                //     break;
                // 導師審核中
                // case 1:
                    // 學生可以查看目前狀態
                    // if($bossMode == 0){
                // 還沒做
                // echo "<td><a href='todoTeacherForm.php?id={$rs['id']}'>Check</a></td>";
            // 老師進行填寫意見與簽章
            // if($bossMode == 1){
                //     echo "<td><a href='todoTeacherForm.php?id={$rs['id']}'>Check</a></td>";
            // }
            // break;
            // 秘書審核中
            // case 2:
                // 學生可以查看目前狀態
                // if($bossMode == 0){
            //     // 還沒做
            //     echo "<td><a href='todoTeacherForm.php?id={$rs['id']}'>Check</a></td>";
            // }
            // 秘書進行審核與簽章
            // if ($bossMode == 2){
                //     echo "<td><a href='todoSecretaryForm.php?id={$rs['id']}'>Check</a></td>";
                // }
                // break;
        // 校長審核中
        // case 3:
            // 學生可以查看目前狀態
            // if($bossMode == 0){
                // 還沒做
                // echo "<td><a href='todoTeacherForm.php?id={$rs['id']}'>Check</a></td>";
                // }
                // 校長進行核決(簽章)
        //     if ($bossMode == 3){
            //         echo "<td><a href='todoPrincipalForm.php?id={$rs['id']}'>Decide</a></td></tr>";
            //     }
            //     break;
            // default:
        //     break;
        // }
	// echo "</td></tr>";
// }

?>
</table>
<a href="loginForm.php">切換腳色</a> | <a href="todoEditForm.php">我要申請補助!</a> <br>
</body>
</html>