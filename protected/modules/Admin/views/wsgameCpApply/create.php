<?php
$this->widget('bootstrap.widgets.TbBreadcrumbs', array(
		'links'=>array('游戏提交验收'=>array('wsgameCpApply/showlist'), '创建'),
));

?>

<h1>创建新游戏验收</h1>

<?php echo $this->renderPartial('_createform', array('model'=>$model)); ?>