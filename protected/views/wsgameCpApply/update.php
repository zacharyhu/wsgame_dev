<?php
/* @var $this WsgameCpApplyController */
/* @var $model WsgameCpApply */

$this->breadcrumbs=array(
	'Wsgame Cp Applies'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List WsgameCpApply', 'url'=>array('index')),
	array('label'=>'Create WsgameCpApply', 'url'=>array('create')),
	array('label'=>'View WsgameCpApply', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage WsgameCpApply', 'url'=>array('admin')),
);
?>

<h1>Update WsgameCpApply <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>