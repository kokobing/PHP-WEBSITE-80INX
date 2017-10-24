<?php
require "../inc/cn_about_core.php";
?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
<title><?php if($str[pagetitle]!=''){echo $str[pagetitle];}else{echo $setinfo[title];}?></title>
<meta name="keywords" content="<?php if($str[keywords]!=''){echo $str[keywords];}else{echo $setinfo[keywords];}?>" />
<meta name="description" content="<?php if($str[description]!=''){echo $str[description];}else{echo $setinfo[description];}?>" />
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

	<!-- slider -->
	<div class="ui-dk-slider" id="ui_dk_slider_about">
				
		<!-- newsSlider -->
		  <div id="newsSlider" >
			<a class="action next" href="#" rel="0" hidefocus="true"></a>
			<!-- doNextee -->
			<div class="content doNextee container">
				<ul class="slides" id="myGallery_6">
                <?php 
				$aboutpics=getpagesetpicnuminfo(1,10,'title,url,opicname as pic');
				for($i=0;$i<sizeof($aboutpics);$i++){
				?>
				<li><a target="_blank" href="<?=$aboutpics[$i][url];?>"><img src="/upload/layout/<?=$aboutpics[$i][pic];?>" height="980" width="437" /></a><dl><dt><?=$aboutpics[$i][title];?></dt><dd></dd></dl></li>
                <?php }?>
			    </ul>		
			</div>
			<!-- /doNextee -->
		</div>
		<!-- /newsSlider -->
	</div>
	<!-- /slider -->
	
	<div>
		<h2 class="title-about"><?php $str=getpagesetinfo(1,'title,content,pagetitle,keywords,description');echo $str[pagetitle]?></h2>
		<div class="ui-wave"></div>
	</div>
	
	<div class="ui-about-cnt clear" id="ui_about_cnt">
	
		<!-- 将以下代码替换成后台代码 -->

<span style="font-size:14px; line-height:24px;"><p><?php $aboutcontent=getpagesetinfo(1,'content');echo $aboutcontent[content];?></p></span>

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
<script src="../inc/js/dk_slideplayer.js" charset="UTF-8"></script>
<script>
$(function(){
	var isIE = !','.split(/,/).length, 
        isIE6 = isIE && !window.XMLHttpRequest;

	new dk_slideplayer(".slides",{width:"980px",height:"437px",fontsize:"12px",time:"5000"});
	
});
</script>
</body>
</html>