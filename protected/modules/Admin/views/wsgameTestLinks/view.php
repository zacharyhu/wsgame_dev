<?php
$this->breadcrumbs=array(
	'Wsgame Test Links'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List WsgameTestLinks','url'=>array('index')),
	array('label'=>'Create WsgameTestLinks','url'=>array('create')),
	array('label'=>'Update WsgameTestLinks','url'=>array('update','id'=>$model->id)),
	array('label'=>'Delete WsgameTestLinks','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage WsgameTestLinks','url'=>array('admin')),
);
?>

<h1>View WsgameTestLinks #<?php echo $model->id; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'link_name',
		'link_url',
		'update_time',
		'author',
		'status',
	),
)); ?>
