<?php
/* @var $this WsgameCpApplyController */
/* @var $model WsgameCpApply */

$this->breadcrumbs=array(
	'Wsgame Cp Applies'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List WsgameCpApply', 'url'=>array('index')),
	array('label'=>'Manage WsgameCpApply', 'url'=>array('admin')),
);
?>

<h1>Create WsgameCpApply</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>