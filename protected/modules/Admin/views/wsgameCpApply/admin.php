<?php
$this->breadcrumbs=array(
	'Wsgame Cp Applies'=>array('admin'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List WsgameCpApply','url'=>array('index')),
	array('label'=>'Create WsgameCpApply','url'=>array('create')),
);

?>

<?php

     $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'wsgame-cp-apply-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
// 		'id',
		'cp_code',
		'game_name',
		'game_id',
		'URL',
		'update_time',
		'check_status',
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
             //添加自定义按钮
			'template'=>'{view}{testcheck}',
            'buttons'=>array(
                 'testcheck'=>array(
                     'label'=>'验收此条目',
					'imageUrl'=>Yii::app()->request->baseUrl.'/images/buttons/edit.png',//新建图片另存
                     'url'=>'Yii::app()->createUrl("Admin/wsgameCpApply/testcheck",array("id"=>$data->id))',
                  ),
             ),
		),
	),
)); ?>
