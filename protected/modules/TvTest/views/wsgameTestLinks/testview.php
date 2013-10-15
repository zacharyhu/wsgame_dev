<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<style>
    .font{font-size:14px}
   </style>
</head>
<body>
<table width="640" height="526" border="0" cellspacing="0" cellpadding="0" bgcolor="#0489B1" class="font">
<td colspan="4" valign="top">
<table width="640" border="1" cellspacing="0" cellpadding="1" class="font">
<?php 
echo "<tr>链接地址</tr>";
$status = array(array('status'=>'0'),array('status'=>'1'));
// echo "<tr><td>以下尚未测试: </td></tr>";
$criteria = new CDbCriteria(array('order'=>'update_time ASC'));
$ARR=WsgameTestLinks::model()->findAllByAttributes($status[1],$criteria);
foreach ($ARR as $index=>$rel){
    $echostr="<td>|".$rel->attributes['link_url'].CHtml::link($rel->attributes['link_name'],$url)."</td>";
	if ($index % 4 == 0){
		echo "<tr>";
		print $echostr;
		echo "</tr>";
	}else{
		print $echostr;
	}
}
?>
</table>
</body>
</html>