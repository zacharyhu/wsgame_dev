<?php
$this->widget('bootstrap.widgets.TbBreadcrumbs', array(
		'links'=>array('游戏提交验收'=>array('wsgameCpApply/admin'), '测试结果反馈'),
));

?>

<h1>测试结果反馈页面 <?php echo $model->game_name; ?></h1>

<?php echo $this->renderPartial('_testcheckform',array('model'=>$model)); ?>