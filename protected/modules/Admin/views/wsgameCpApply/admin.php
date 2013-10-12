<?php
$this->breadcrumbs=array(
	'Wsgame Cp Applies'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List WsgameCpApply','url'=>array('index')),
	array('label'=>'Create WsgameCpApply','url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('wsgame-cp-apply-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Wsgame Cp Applies</h1>

<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button btn')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php

     $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'wsgame-cp-apply-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'cp_code',
		'game_name',
		'game_id',
		'URL',
		'update_time',
		'check_status',
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
             //添加自定义按钮
			'template'=>'{view}{testcheck}{delete}',
            'buttons'=>array(
                 'testcheck'=>array(
                     'label'=>'验收此条目',
					'imageUrl'=>Yii::app()->request->baseUrl.'/images/edit.png',
                     'url'=>'Yii::app()->createUrl("Admin/wsgameCpApply/testcheck",array("id"=>$data->id))',
                  ),
             ),
		),
	),
)); ?>
