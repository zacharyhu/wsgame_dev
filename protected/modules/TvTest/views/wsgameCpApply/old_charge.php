<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<style>
    .font{font-size:14px}
   </style>
</head>
<body>
<table width="640" height="526" border="0" cellspacing="0" cellpadding="0"  bgcolor="#0489B1" class="font">
<td colspan="4" valign="top">
<table width="640" border="1" cellspacing="0" cellpadding="1" class="font">
<?php 
echo "<tr><td>参数:?userid=2519273&gameid=400&lobbyId=101
		&spServerIp=10.48.179.103&spServerPort=7505
		&spServiceHTTPUrl=http://10.48.179.115:882/yunbi </br>";
echo "</td></tr>";
$status = array(array('check_status'=>'0'),array('check_status'=>'1'));
echo "<tr><td>以下尚未测试: </td></tr>";
$criteria = new CDbCriteria(array('order'=>'update_time ASC'));
$ARR=WsgameCpApply::model()->findAllByAttributes($status[0],$criteria);
foreach ($ARR as $rel){
	echo "<tr><td>";
	print "CP_CODE: ";
	print $rel->attributes['cp_code'];
	print "|";
	$url = $rel->attributes['URL'].'?userid=2519273&gameid=400&lobbyId=101&spServerIp=10.48.179.103&spServerPort=7505&spServiceHTTPUrl=http://10.48.179.115:882/yunbi';
	echo CHtml::link($rel->attributes['game_name'],$url);
	print "|最后更新时间 ";
	print $rel->attributes['update_time'];
	echo "</td></tr>";
}
echo "<tr><td>已经测试的: </td></tr>";
$criteria2 = new CDbCriteria(array('order'=>'update_time DESC'));
$ARR_2=WsgameCpApply::model()->findAllByAttributes($status[1],$criteria2);
foreach ($ARR_2 as $rel){
	echo  "<tr><td>";
	print "CP_CODE:";
	print $rel->attributes['cp_code'];
	print "|";
	$url = $rel->attributes['URL'].'?userid=2519273&gameid=400&lobbyId=101&spServerIp=10.48.179.103&spServerPort=7505&spServiceHTTPUrl=http://10.48.179.115:882/yunbi';
	echo CHtml::link($rel->attributes['game_name'],$url);
	print "|最后更新时间 ";
	print $rel->attributes['update_time'];
	echo "</td></tr>";
}
?>
</table></td>
</table>
</body>
</html>