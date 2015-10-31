<?php /* @var $this Controller */ ?>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="language" content="en">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/style.css">

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>

<body>
<div class="header-web">
<div class="container ">
	<div id="mainmenu" class="row npl navbar-right user-header" >
	<?php if (!Yii::app()->user->isGuest) {
		echo Yii::app()->user->id;
		?>

		<a href="<?php echo Yii::app()->request->baseUrl; ?>/index.php?r=/report/admin"><span class="glyphicon glyphicon-envelope report"></span></a>
		<?php
	} ?>
		
		<?php $this->widget('zii.widgets.CMenu',array(
			'items'=>array(
				// array('label'=>'', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
				array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
			),
		)); ?>
	<?php
		if (Yii::app()->user->name=='admin') {
		?>
		<a href="#" class="quanli"><span>Quản lí</span></a>
		<?php

		}
		elseif(!Yii::app()->user->isGuest and Yii::app()->user->name!='admin')
		{
		?>
		<a href="<?php echo Yii::app()->request->baseUrl; ?>/index.php?r=/report/create" class="quanli"><span>Phản hồi</span></a>
		<?php
		}
	?>
	</div><!-- mainmenu -->
</div>
</div>
<div class="container">
<div class="row">
	<div class="col-md-4 npl">
		<a href="<?php echo Yii::app()->request->baseUrl; ?>/index.php?r=/site/index"><img src="<?php echo Yii::app()->request->baseUrl; ?>/image/logo.png"></a>
	</div>
	<div class="col-md-4 npr">
		<input id="search" class="form-control search-input input-tripopus" placeholder="Search"/>
	</div>
	<div class="col-md-4">
		<a href="<?php echo Yii::app()->request->baseUrl; ?>/index.php?r=/site/login"><button  class="btn btn-create btn-itineary">Đăng nhập</button></a>
		<a href="<?php echo Yii::app()->request->baseUrl; ?>/index.php?r=/user/create"><button class="btn btn-create btn-courses">Đăng kí</button></a>
		
	</div>
</div>
</div>
<div class="container">
	<div class="row">
		<div class="col-md-8 nplr background-white border-top-right border-left border-bottom border-bottom-left border-bottom-right">
			<div class="col-md-3 nplr ">
				<div class="all-ctg nplr">
				<p class="all-category">Category</p>
				</div>
				<?php $this->widget('wCategory');?>
			</div>
			<div class="col-md-9 nplr border-top-right">
				<div class="newest-book nplr border-right border-left border-top border-top-right">
					<?php if(isset($this->breadcrumbs)):?>
					<?php $this->widget('zii.widgets.CBreadcrumbs', array(
					'links'=>$this->breadcrumbs,
					)); ?><!-- breadcrumbs -->
					<?php endif?>

					<?php echo $content; ?>
					  <?php 
        				 $dat=new Report;
         				$this->renderPartial('//report/_search', 
            			array('model'=>$dat,
             			));
         			?>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<img src="<?php echo Yii::app()->request->baseUrl; ?>/image/quangcao.png" class="border border-radius-5">
			<?php $this->widget('wTop_nxb');?>
			<?php $this->widget('wTop_tacgia');?>
		</div>
	</div>
</div>




	<div id="footer">

	</div><!-- footer -->



</body>
</html>
