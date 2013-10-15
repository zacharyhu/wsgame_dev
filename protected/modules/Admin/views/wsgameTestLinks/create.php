<?php
$this->breadcrumbs=array(
	'Wsgame Test Links'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List WsgameTestLinks','url'=>array('index')),
	array('label'=>'Manage WsgameTestLinks','url'=>array('admin')),
);
?>

<h1>Create WsgameTestLinks</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>