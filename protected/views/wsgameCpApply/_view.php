<?php
/* @var $this WsgameCpApplyController */
/* @var $data WsgameCpApply */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('cp_code')); ?>:</b>
	<?php echo CHtml::encode($data->cp_code); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('game_name')); ?>:</b>
	<?php echo CHtml::encode($data->game_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('game_id')); ?>:</b>
	<?php echo CHtml::encode($data->game_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('URL')); ?>:</b>
	<?php echo CHtml::encode($data->URL); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('update_time')); ?>:</b>
	<?php echo CHtml::encode($data->update_time); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('check_status')); ?>:</b>
	<?php echo CHtml::encode($data->check_status); ?>
	<br />


</div>