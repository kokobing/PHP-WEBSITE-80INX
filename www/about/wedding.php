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
<link href="../inc/css/angles.css" type="text/css" rel="stylesheet" />
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
				$aboutpics=getpagesetpicnuminfo(3,10,'title,url,opicname as pic');
				for($i=1;$i<sizeof($aboutpics);$i++){
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
	
    <div class="angles-wrapper" id="angles_wrapper">   
	  <h1 class="title-angles">`ANGLES OF bund-3<s></s></h1>
	  <div class="ui-wave"></div>
	</div>

	<div class="ui-about-cnt clear" id="ui_about_cnt">
	
		<!-- 将以下代码替换成后台代码 -->
        <div style="float:left; margin-right:30px;">
          <img src="/upload/layout/<?=getpagesetpic(3,0);?>" width="600" >
        </div>	
        <div class="ui-angles-detail">
					<div class="ui-angles-detail-top">
						<div class="ui-angles-detail-btm">
							<div class="angeles-content"><p>
<?php $weddingcontent=getpagesetinfo(3,'content');echo $weddingcontent[content];?>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:#999999;">婚纱定制在线咨询</span><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="tencent://message/?uin=<?php $qqnum=getpagesetpicinfo(3,'title,intro');echo $qqnum[title];?>&amp;Site=robinland.com.cn&amp;Menu=yes"><img title="点击这里给我发消息" border="0" alt="点击这里给我发消息" src="/inc/pics/pa.gif"></a>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 
<a href="tencent://message/?uin=<?=$qqnum[intro];?>&amp;Site=robinland.com.cn&amp;Menu=yes"><img title="点击这里给我发消息" border="0" alt="点击这里给我发消息" src="/inc/pics/pa.gif"></a></p></div>
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