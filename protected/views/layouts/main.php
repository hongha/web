
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>

<body>
<div class="header-web">
<div class="container ">
	<div id="mainmenu" class="row npl navbar-right user-header" >
		<?php $this->widget('wHeader');?>
	</div><!-- mainmenu -->
</div>
</div>
<div class="container">
<div class="row">
	<div class="col-md-4 npl">
		<a href="<?php echo Yii::app()->request->baseUrl; ?>/index.php?r=/site/index"><img src="<?php echo Yii::app()->request->baseUrl; ?>/image/logo.png"></a>
	</div>
	<div class="col-md-4 npr">
		<form method="POST"  id = "" action="<?php echo Yii::app()->createUrl('Book/search1') ?>">
                <input id = "searchname" type="search" placeholder="search" name="search_str" ><br>
                <button id = "butsearch">Search</button>
        </form>
        <form method="get">
			<input type="search" placeholder="search" name="q" 

			value="<?=isset($_GET['q']) ? CHtml::encode($_GET['q']) : '' ; 

			?>" />
			<input type="submit" value="search" />
		</form>
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
	<div class="container">
		<div class="row">
            <div class="col-md-4">
            <div class="row">
               <p>Công ty TNHH Hedspi Việt Nam</p>
               <p>Tầng 4,5 Tòa nhà D9 Đại Học Bách Khoa Hà Nội</p>
               <p>Hà Nội, Việt Nam</p>
               <p>hedspi@gmail.com</p>
               <br />
               <span id="color-enjoy">Chọn ngôn ngữ</span> <a href="#" class="enjoy">Japanes</a> <a href="#" class="enjoy">Việt Nam</a>
            </div>
            </div>
        
	        <div class="col-md-4">
	        	<div class=" footer-img">
	        	<p id="tripopus-social">Tìm chúng tôi trên</p>
	               <img src="<?php echo Yii::app()->request->baseUrl; ?>/image/facebook.png">
	               <img src="<?php echo Yii::app()->request->baseUrl; ?>/image/google.png">
	               <img src="<?php echo Yii::app()->request->baseUrl; ?>/image/youtube.png">
	               <img src="<?php echo Yii::app()->request->baseUrl; ?>/image/twitter.png">
	            </div>
	        </div>
	        <div class="col-md-4">
	        	<div class="row">
	        	    <div class="col-md-5">
	        	    <div class="row">
                    <input class="form-control form-input  input-tripopus" type="text" placeholder=" Name " > 
                    </div>
               	    </div>
               		<div class="col-md-7">
               		<div class="row"style="padding-left:10px; margin-bottom:10px;" >
                  	<input class="form-control form-input form-input-tripopus input-tripopus" type="text" placeholder="Email">
                  	</div>
               		</div>
               		<textarea class = "oponion form-control col-md-12 input-tripopus" rows="3" style="margin-bottom:10px;" placeholder="Send us your opinions"></textarea>
               		<button type="button" class="btn btn-default btn-tripopus btn-sm col-md-12" style="">Send </button>
               </div>
	        </div>
        </div>
	</div>
</div>
<div id="copyright">
	<div class="container">
		<center><p id="right-reserved">© 2015 - All Rights Reserved</p></center>
	</div>
</div>



</body>
</html>
