<?php
/* @var $this WsgameCpApplyController */
/* @var $model WsgameCpApply */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'wsgame-cp-apply-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'cp_code'); ?>
		<?php echo $form->textField($model,'cp_code'); ?>
		<?php echo $form->error($model,'cp_code'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'game_name'); ?>
		<?php echo $form->textField($model,'game_name',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'game_name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'game_id'); ?>
		<?php echo $form->textField($model,'game_id'); ?>
		<?php echo $form->error($model,'game_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'URL'); ?>
		<?php echo $form->textField($model,'URL',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'URL'); ?>
	</div>


	<div class="row">
		<?php echo $form->labelEx($model,'check_status'); ?>
		<?php echo $form->textField($model,'check_status'); ?>
		<?php echo $form->error($model,'check_status'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->