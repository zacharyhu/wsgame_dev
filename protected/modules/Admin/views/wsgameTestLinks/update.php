<?php
$this->breadcrumbs=array(
	'Wsgame Test Links'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List WsgameTestLinks','url'=>array('index')),
	array('label'=>'Create WsgameTestLinks','url'=>array('create')),
	array('label'=>'View WsgameTestLinks','url'=>array('view','id'=>$model->id)),
	array('label'=>'Manage WsgameTestLinks','url'=>array('admin')),
);
?>

<h1>Update WsgameTestLinks <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>