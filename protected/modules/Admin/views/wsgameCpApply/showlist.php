<?php
   $this->widget('bootstrap.widgets.TbBreadcrumbs', array(
		'links'=>array('游戏提交验收'=>'showlist', '展示'),
)); 
echo "您还可以：".CHtml::link('提交新游戏链接',array('create'))
?>

<?php
    $cp_code=Yii::app()->user->name;
 $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'wsgame-cp-apply-grid',
 		'type'=>'striped bordered condensed',
	'dataProvider'=>$model->showlist($cp_code),
// 	'filter'=>$model,
 	'itemsCssClass'=>'zebra-striped',
	'columns'=>array(
// 		'id',
		'cp_code',
		'game_name',
		'game_id',
		'URL',
		'update_time',
		'check_status',
		'check_result',
		'check_oper',
		array(
		'class'=>'bootstrap.widgets.TbButtonColumn',
		'template'=>'{delete}{update}',//去掉view
		),
	),
)); ?>
