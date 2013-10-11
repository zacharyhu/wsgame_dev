<?php
$this->breadcrumbs=array(
	'Wsgame Cp Applies'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List WsgameCpApply','url'=>array('index')),
	array('label'=>'Create WsgameCpApply','url'=>array('create')),
	array('label'=>'Update WsgameCpApply','url'=>array('update','id'=>$model->id)),
	array('label'=>'Delete WsgameCpApply','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage WsgameCpApply','url'=>array('admin')),
);
?>

<h1>View WsgameCpApply #<?php echo $model->id; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'cp_code',
		'game_name',
		'game_id',
		'URL',
		'update_time',
		'check_status',
	),
)); ?>
