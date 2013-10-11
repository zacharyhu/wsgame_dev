
<?php 
 
$ARR=WsgameCpApply::model()->findAllByAttributes(array('check_status'=>'0'));
foreach ($ARR as $rel){
	print "<p>ID: ";
	print $rel->attributes['id'];
	print "   |CP_CODE: ";
	print $rel->attributes['cp_code'];
	print " |游戏链接：";
	$url = $rel->attributes['URL'].'?userid=1111&gameid=2222&lobbyId=101&spServerIp=10.22.33.44&spServerPort=7505&spServiceHTTPUrl=http://10.22.33.44:88/yunbi';
	echo CHtml::link($rel->attributes['game_name'],
			$url
// 					'userId'=>265478,
// 					'lobbyId'=>101,
// 					'spServerIp'=>'10.48.179.103',
// 					'spServerPort'=>'7505',
// 					'spServiceHTTPURL'=>'http://10.48.179.115:882/yunbi/'
	              
			      );
	print "    |最后更新时间 ";
	print $rel->attributes['update_time'];
	echo "</p></br>";
}
?>
