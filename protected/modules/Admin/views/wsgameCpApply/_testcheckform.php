<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'id'=>'wsgame-cp-apply-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="help-block">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<?php 
	$model->cp_code = Yii::app()->user->name;
	//$model->check_status = '0';
	?>
	<?php //echo $form->textFieldRow($model,'cp_code',array('class'=>'span5')); ?>
	<?php echo $form->uneditableRow($model, 'cp_code'); ?>

	<?php echo $form->uneditableRow($model,'game_name',array('class'=>'span5','maxlength'=>50)); ?>

	<?php //echo $form->textFieldRow($model,'game_id',array('class'=>'span5')); ?>

	<?php echo $form->uneditableRow($model,'URL',array('class'=>'span5','maxlength'=>100)); ?>

	<?php // echo $form->textFieldRow($model,'update_time',array('class'=>'span5')); ?>
    
	<?php echo $form->textFieldRow($model,'check_status',array('class'=>'span5')); ?>
	<?php //echo $form->uneditableRow($model, 'check_status'); ?>
    <?php echo $form->textAreaRow($model,'check_result',array('class'=>'span8', 'rows'=>5)); ?>
    <?php echo $form->textFieldRow($model,'check_oper',array('class'=>'span5')); ?>
	
	
	<div class="form-actions">
		<?php $this->widget('bootstrap.widgets.TbButton', array(
			'buttonType'=>'submit',
			'type'=>'primary',
			'label'=>$model->isNewRecord ? 'Create' : 'Save',
		)); ?>
	</div>

<?php $this->endWidget(); ?>
