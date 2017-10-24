<?php
require "../inc/cn_productview_core.php";
?>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
<meta name="keywords" content="<?php echo $setinfo[keywords];?>" />
<meta name="description" content="<?php echo $setinfo[description];?>" />
<title><?php echo $setinfo[title];?></title>
</head>
<body>
<script src="/inc/js/jquery.js" charset="UTF-8"></script>
<link href="../inc/css/base.css" type="text/css" rel="stylesheet" />
<link href="/inc/css/works.css" type="text/css" rel="stylesheet" />
<link href="/inc/css/subject.css" type="text/css" rel="stylesheet" />
<div class="ui-navs" id="ui_navs">
<? require "../sub_header.php"; ?>
	<!-- #sub nav start -->
	<div class="ui-nav-sub clear" id="ui_nav_sub">
		
		<div class="wrapper">

		</div>
	</div>
	<!-- #sub nav end -->
</div>
<div class="wrapper">
	<h1 class="txt-works">
		WORKS OF bund-3<s></s>
	</h1>
	<div class="ui-wave"></div>
	

	<div class="subject-wrapper">
        
		<div class="clear package">
			<div class="package-img-panel">
				<img class="package-img" src="/upload/product/<?=getproductpic($_GET[pid]);?>" alt=""/>
			</div>
			
			<div class="package-info-panel">
				
            <?=$oneproduct[intro];?>
				
			</div>
		
		
		</div>
		
		<div class="subject-radius-box">
			<div class="subject-radius-box-top subject-radius-box-top-no-select">
			</div>
			<div class=""><p>
            <?=$oneproduct[content];?>
            </p>
			</div>
		</div>

	
		
		<div class="title-no-sweet-no-life">no sweet no life<s></s></div>
		
		
	</div>
	
	
		
		
		<div class="ui-wave"></div>
		

			<div class="ui-gotop-wrapper" id="ui_gotop_wrapper">
			
			<a class="ui-gotop-link js-png" href="#"></a>
			<a target="_blank" class="ui-gohome-link js-png" href="home.html"></a>
			
		</div>
	
	
		
	<? require "../footertop.php"; ?>
	
</div>
<!-- .wrapper -->



<a class="ui-gotop ui-gotop-float js-pos-fixed" id="ui_gotop_float" href="#"><span>Top</span></a>



<script src="../inc/js/base.js" charset="UTF-8"></script>




<? require "../footer.php"; ?>



</body>
</html>