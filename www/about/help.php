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
<link href="../inc/css/news.css" type="text/css" rel="stylesheet" />
<div class="ui-navs" id="ui_navs">
<? require "../sub_header.php"; ?>
	<!-- #sub nav start -->
	<div class="ui-nav-sub clear" id="ui_nav_sub">
		<div class="wrapper"></div>
	</div>
	<!-- #sub nav end -->

</div>

<div class="wrapper">
	
        <h1 class="title-help">
			HELP bund-3<s></s>
		</h1>
		<div class="ui-wave title-wave"></div>	
        
	<div class="ui-about-cnt clear" id="ui_about_cnt">
		<!-- 将以下代码替换成后台代码 -->

            <div class="ui-news-cnt">
				<div class="ui-news-box">
					<div class="ui-news-box-top">
						<div class="ui-news-box-btm">
							<div class="news-body">
								<h3 class="news-title">
									<span class="new-title-text"><?php $helpcontent=getpagesetinfo(4,'pagetitle,content');echo $helpcontent[pagetitle];?></span>
									<s></s>
								</h3>
								<div class="news-content">
									<p style="font-size:14px;"><?php echo $helpcontent[content];?></p>
								</div>
								<p class="news-time"></p>
								<p class="news-logo-wrapper clear"><span class="news-logo-mini"></span></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		
		
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