<?php
require "../inc/cn_about_core.php";
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
<link href="../inc/css/base.css" type="text/css" rel="stylesheet" />
<link href="../inc/css/about.css" type="text/css" rel="stylesheet" />
<div class="ui-navs" id="ui_navs">
<? require "../sub_header.php"; ?>
	<!-- #sub nav start -->
	<div class="ui-nav-sub clear" id="ui_nav_sub">
		<div class="wrapper"></div>
	</div>
	<!-- #sub nav end -->

</div>

<div class="wrapper">

	
	    <h1 class="title-about"><?php $str=getpagesetinfo(2,'title,content,pagetitle,keywords,description');echo $str[pagetitle]?></h1>
		<div class="ui-wave"></div>
	
	<div class="ui-about-cnt clear" id="ui_about_cnt">
<!-- baidu地图start -->
<?=$setinfo[mapcode];?>
<!-- baidu地图end -->
<br>
		<!-- 将以下代码替换成后台代码 -->
        <ul class="ui-list bg-contact contact-detail-list" id="contact_detail_list">
        <?php $aboutcontent=getpagesetinfo(2,'content');echo $aboutcontent[content];?>
        </ul>
		<!-- /将以下代码替换成后台代码 -->
	
	</div>
	<div class="ui-weibo" id="ui_weibo">
		<a class="ui-gotop" href="#"></a>
	</div>
	
		<? require "../footertop.php"; ?>
	
</div>
<!-- .wrapper -->

<!-- .ui-service-float -->
<a class="ui-gotop ui-gotop-float js-pos-fixed" id="ui_gotop_float" href="#"><span>Top</span></a>

<? require "../footer.php"; ?>

<script src="../inc/js/jquery.js" charset="UTF-8"></script>
<script src="../inc/js/base.js" charset="UTF-8"></script>
</body>
</html>