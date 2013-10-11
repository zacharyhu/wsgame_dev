<?php
$this->widget('bootstrap.widgets.TbBreadcrumbs', array(
		'links'=>array('游戏提交验收'=>array('wsgameCpApply/showlist'), '更新'),
));

?>

<h1>更新游戏链接  <?php echo $model->game_name; ?></h1>

<?php echo $this->renderPartial('_updateform',array('model'=>$model)); ?>