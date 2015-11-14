<?php
/* @var $this GiohangController */
/* @var $data Giohang */
?>



	<div class="row">
		<div class="col-sm-7">
			<?php echo CHtml::encode($data->name_book); ?>
		</div>
		<div class="col-sm-2"><?php echo CHtml::encode($data->number); ?></div>
		<div class="col-sm-3"><?php echo CHtml::encode($data->cost); ?></div>
	</div>

	<!-- <b><?php echo CHtml::encode($data->getAttributeLabel('name_book')); ?>:</b>
	<?php echo CHtml::encode($data->name_book); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('cost')); ?>:</b>
	<?php echo CHtml::encode($data->cost); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('number')); ?>:</b>
	<?php echo CHtml::encode($data->number); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('status')); ?>:</b>
	<?php echo CHtml::encode($data->status); ?>
	<br /> -->

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('time')); ?>:</b>
	<?php echo CHtml::encode($data->time); ?>
	<br />

	*/ ?>

