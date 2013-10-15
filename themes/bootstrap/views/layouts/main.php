<?php /* @var $this Controller */ ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content="en" />

    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/styles.css" />

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>

	<?php Yii::app()->bootstrap->register(); ?>
</head>

<body>

<?php
if (!Yii::app()->user->isGuest){
	$show_name=AuthUser::model()->getUserDisplay(Yii::app()->user->name);
}else {
	$show_name=Yii::app()->user->name;
}
 	$this->widget('bootstrap.widgets.TbNavbar',array(
    'items'=>array(
        array(
            'class'=>'bootstrap.widgets.TbMenu',
            'items'=>array(
                array('label'=>'Home', 'url'=>array('/site/index')),
            		array('label'=>'游戏数据与验收提交','url'=>'#','items'=>array(
            				array("label"=>'游戏验收提交','url'=>array('//Admin/wsgameCpApply/create')),
            				array("label"=>'游戏验收查看','url'=>array('//Admin/wsgameCpApply/showlist')),
            				array('label'=>'线上充值数据','url'=>array('//Admin/cpgameData1/showdata')),
            				array('label'=>'线上游戏点击量数据','url'=>array('//Admin/cpgameData2/showdata')),
            			), "visible"=>Yii::app()->user->checkAccess('游戏厂商')),
            		array('label'=>'游戏验收处理','url'=>'#','items'=>array(
            				array("label"=>'游戏验收','url'=>array('//Admin/wsgameCpApply/admin')),
            			), "visible"=>Yii::app()->user->checkAccess('验收测试')),
					array('label'=>'管理','url'=>'#','items'=>array(
							array("label"=>'创建用户','url'=>array('authUser/create')),
							array("label"=>'管理用户','url'=>array('authUser/admin')),
						), "visible"=>Yii::app()->user->checkAccess('管理员')),
            		array('label'=>'机顶盒链接','url'=>'#','items'=>array(
            				array("label"=>'云币链接测试页面','url'=>array('//TvTest/wsgameCpApply/testview')),
            				array("label"=>'单点计费测试页面','url'=>array('//TvTest/wsgameCpApply/oldrecharge')),
            		), ),
            		array('label'=>'日常工作','url'=>'#','items'=>array(
                            array('label'=>'测试页面链接配置管理','url'=>array('//Admin/TestLinks/admin')),
					        array('label'=>'新建页面链接','url'=>array('//Admin/TestLinks/create')),
            				array('label'=>'wiki','url'=>array('//Admin/Wiki/index')),
            				array('label'=>'wikimanage','url'=>array('//Admin/Wiki/admin')),
					),"visible"=>Yii::app()->user->checkAccess('技术部门')),
                array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
                array('label'=>'Logout ('.$show_name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
            ),
        ),
    ),
)); ?>

<div class="container" id="page">

	<?php if(isset($this->breadcrumbs)):?>
		<?php $this->widget('bootstrap.widgets.TbBreadcrumbs', array(
			'links'=>$this->breadcrumbs,
		)); ?><!-- breadcrumbs -->
	<?php endif?>

	<?php echo $content; ?>

	<div class="clear"></div>

	<div id="footer">
		Copyright &copy; <?php echo date('Y'); ?> by WSgame DEV.<br/>
		All Rights Reserved.<br/>
	</div><!-- footer -->

</div><!-- page -->

</body>
</html>
