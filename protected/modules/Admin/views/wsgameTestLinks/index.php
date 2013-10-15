<?php
$this->breadcrumbs=array(
	'Wsgame Test Links',
);

$this->menu=array(
	array('label'=>'Create WsgameTestLinks','url'=>array('create')),
	array('label'=>'Manage WsgameTestLinks','url'=>array('admin')),
);
?>

<h1>Wsgame Test Links</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
