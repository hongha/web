<?php
/* @var $this GiohangController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Giohangs',
);


?>

<h1>Giohangs</h1>
<div class="view">
	

<div class="row">
	<div class="col-sm-7">Tên sách</div>
	<div class="col-sm-2">số luợng</div>
	<div class="col-sm-3">Giá cả</div>
</div>

	<?php foreach($dataProvider as  $data):?>		
		<div class="col-sm-7"><?php echo $data->name_book; ?></div>
		<div class="col-sm-2"><?php echo $data->number; ?></div>
		<div class="col-sm-3"><?php echo $data->number*$data->cost; ?></div>
		
	
	<?php endforeach;?>	
<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
</div>