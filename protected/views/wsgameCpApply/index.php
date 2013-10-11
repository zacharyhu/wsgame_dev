<?php
/* @var $this WsgameCpApplyController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Wsgame Cp Applies',
);

$this->menu=array(
	array('label'=>'Create WsgameCpApply', 'url'=>array('create')),
	array('label'=>'Manage WsgameCpApply', 'url'=>array('admin')),
);
?>

<h1>Wsgame Cp Applies</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
