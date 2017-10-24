<?php
require "./inc/cn_index_core.php";
?>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="favicon.ico" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="description" content="<?php echo $setinfo[description];?>" />
<meta name="keywords" content="<?php echo $setinfo[keywords];?>" />
<title><?php echo $setinfo[title];?></title>
</head>
<body>
<link href="inc/css/base.css" type="text/css" rel="stylesheet" />
<style type="text/css">
.svwp-980{
	position:relative;
	width:980px;
	height:740px;
	margin:0 auto;
}
.svwp-980-cnt{
	position:absolute;
	z-index:1;
}
.svwp-980-ctrl{
	position:absolute;
	top:457px;
	z-index:0;
}
.svwp {width: 50px; height: 20px; background: #fff;} /*preloader stuff. do not modify!*/
.svwp ul{position: relative; left: -999em;}/*preloader stuff. do not modify!*/
.slideViewer { 
	position: relative;
	overflow: hidden; 
	padding: 0;
	background: #fff;
}
.slideViewer ul {  /*your list of images*/
position: relative;
left: 0;
top: 0;
width: 1%;
list-style-type: none;
margin: 0; 
padding: 0;
}
.slideViewer ul li {
float:left;
}

/*typographic info*/
.slideViewer span.typo{ 
padding: 6px; /* do not modify padding */
background: #fff;
color: #000;
font: normal 10px Verdana;
display:none;
}

.thumbSlider { /*the thumbnails slider*/
overflow: hidden;
width: 1%;
background: #fff;
}
.thumbSlider ul { 
list-style-type: none;
margin: 0; 
padding: 0;
}
.thumbSlider ul li{ 
float:left;
margin: 0;
}
.thumbSlider a{
color: #fff;
text-decoration: none;
}
.thumbSlider a img{
border: 0;
display: block;
padding: 0;
height:168px;
}
.thumbSlider p.tmbrdr { /* the border above -not around- each thumb */
/* width, height and top values are dynamically added by the script. Do not modify. */
position:relative; 
left: 0;
font-size: 0.01em;
left: 0;
margin: 0;
padding: 0;
display:none;
}

a.left, a.right { /*the left and right buttons (links)*/
background: transparent; /* could be any color  */
color: #ff0000;
font: bold 16px Arial;
overflow: hidden;
}
.slideViewer a.left{
	margin-left:-90px;
}
a.left span, a.right span{

}
a.left img, a.right img{
border: 0;
}
a.l_dis, a.r_dis {
background: transparent; /* ALWAYS leave transparent. this is the 'disabled' state of the link !  */
cursor: default;
}
a.l_dis span, a.r_dis span {
visibility: hidden;
}
a:focus {outline:none;}

object{margin:0;padding:0}
</style>
<script src="inc/js/jquery.js" charset="UTF-8"></script>
<script src="inc/js/slide.js" charset="UTF-8"></script>
<script src="inc/js/jquery.flatheights.js" charset="UTF-8"></script>

<script src="inc/js/jquery.slideViewerPro.1.5.js"></script>
<script src="inc/js/jquery.timers.js"></script>
<script src="inc/js/j.flash.js"></script>
<script>
$(window).bind("load", function() {
	$("div#ui_banner_ad").slideViewerPro({
		thumbs: 4, 
		thumbsRightMargin:18, 
		autoslide: true, 
		asTimer: 3500, 
		typo: true,
		galBorderWidth: 0,
		thumbsBorderOpacity: 0, 
		buttonsTextColor: "#707070",
		buttonsWidth: 75,
		thumbsActiveBorderOpacity: 0.8,
		thumbsActiveBorderColor: "aqua",
		thumbsPercentReduction:16.3,
		shuffle: true
	});
});
</script>
<script src="inc/js/base.js" charset="UTF-8"></script>
<script src="inc/js/roller.js" charset="UTF-8"></script>
<script>
$(function(){
	var isIE = !','.split(/,/).length, 
        isIE6 = isIE && !window.XMLHttpRequest;
	
	isIE6 && $('.ui-col-pic-cnt a').hover(function(e){
		$('.ui-skin-mask', this).removeClass('hide');
	},function(e){
		$('.ui-skin-mask', this).addClass('hide');
	})
	
	roller.init('ui_rank','v',-417,0,250,20);
	
	
	//add wlf
	$("#ui_list_elope > ul li").bind("mouseover",function(){
        $(this).children("a").eq(0).hide();
        $(this).children("a").eq(1).show();
	}).bind("mouseout",function(){
        $(this).children("a").eq(1).hide();
        $(this).children("a").eq(0).show();
	});
});

</script>

<script src="./inc/js/jquery.cycle.js"></script>

<script language="JavaScript">
$(document).ready(function(){

	
// logopic slideshow
	$('#maincontent').cycle({
		height:  'auto',	// container height 
	    fade:     1,		// true for fade, false for slide 
	    speed:    1000,		// any valid fx speed value 
	    timeout:  4000,		// ms duration for each slide 
	    random:   0,       // true for random, false for sequence 
	    fit:      0,       // force slides to fit container 
	    pause:    0,       // true to enable "pause on hover" 
		cleartype: 1,	   // true to enable cleartype corrections
	    autostop: 0        // true to end slideshow after X slides have been shown (where X == slide count) (note that if random == true not all slides are guaranteed to have been shown) 
	});


});

</script>

<!-- .ui-slider start -->
<div id="maincontent" class="ui-slider ui-slider-top" style="text-align:center" >

<?php 
$alladv=getalllayoutpicinfo(3);
for($i=0;$i<sizeof($alladv);$i++){?>
<img src="/upload/layout/<?=$alladv[$i][pic];?>" width="1004" height="359" />
<?php }?>

</div>
<div id="logo"><!--<img src="/upload/layout/<?=getlayoutpic(1,0);?>" >--></div>
<!-- .ui-slider end -->

<div class="ui-navs" id="ui_navs">
<!-- #nav start --><? require "sub_header.php"; ?><!-- #nav end -->
<div class="ui-nav-sub clear" id="ui_nav_sub"><div class="wrapper"></div></div>
</div>

<div class="wrapper">
<div><img src="/inc/pics/pic1.jpg"></div>
<div><img src="/inc/pics/advtop0.jpg"></div>
	<div class="ui-user-action" id="ui_user_action"></div>
	<!-- .ui-user-action -->
	<!-- .ui-user-action -->
	
	<div class="ui-rank clear" id="ui_rank">
	
        <?php 
		for($i=0;$i<3;$i++){
		$part1pic=getlayoutpicinfo(4,$i,'url,opicname as pic');
		?>
	  <div class="ly-col3 <?php if($i==0){echo 'ly-col3-1st';}?>">
			<div class="ui-col-pic">
				<div class="ui-col-pic-cnt">
					<a href="<?=$part1pic[url]?>" style="background-image:url(/upload/layout/<?=$part1pic[pic]?>);">
						<i class="ui-skin-mask"></i>
					</a>
				</div>
			</div><!-- .ui-col-pic -->
		</div>
       <?php }?> 
        

	</div>
	
	<div class="ui-wave ui-wave-split"></div>
	
	<div class="ui-wave"></div>
	
    <div class="ui-custom-wrapper">
		<img src="./inc/pics/advtop1.jpg">
    </div>
	
	<div class="svwp-980 clear">
		<div class="svwp-980-cnt">
			<div id="ui_banner_ad" class="svwp ui-banner-ad">
				<ul>
				<?php for($i=0;$i<4;$i++){?>
					<li><a  href="<?php $part2pic=getlayoutpicinfo(5,$i,'url,opicname as pic');echo $part2pic[url]?>"><img alt="" src="/upload/layout/<?=$part2pic[pic]?>"  src2="/upload/layout/<?php $part2pic2=getlayoutpicinfo(5,$i+4,'opicname as pic');echo $part2pic2[pic]?>" border="0"/></a></li>
                <?php }?>
				</ul>
			</div>
		</div>
		<div class="svwp-980-ctrl">
		
			<div class="ui-radius-box ui-mini-slider" id="ui_mini_slider">
				<div class="ui-radius-box-top">
					<div class="ui-radius-box-btm">
						
						<div class="ui-mini-slider-cnt" id="mini_slider">
							<!-- 
							<a class="ui-slider-left previous hide" href="#"><i>left</i></a>
							<a class="ui-slider-right next hide" href="#"><i>right</i></a>
							-->
						</div>
						
					</div>
				</div>
			</div>
			<!-- .ui-radius-box -->
		</div>
		
	</div>
	
	<div class="ui-wave-split"></div>
	
	<div class="ui-wave"></div>
	
	<!--div class="txt-quality" id="txt_quality"></div-->
	
    <div class="ui-custom-wrapper"><img src="./inc/pics/advtop2.jpg"></div>
	
	<div class="ui-list-quality clear ui-slideup js-slideup" id="ui_list_quality">
		<ul class="ui-list">
		<?php 
		$allpicinfo=getlayoutallpic(6,'opicname as pic,url,title');
		for($i=0;$i<sizeof($allpicinfo);$i++){?>
			<li class="ui-list-item">
			  <a href="<?=$allpicinfo[$i][url];?>">
					<img class="ui-img" src="/upload/layout/<?=$allpicinfo[$i][pic];?>" alt="<?=$allpicinfo[$i][title];?>" />
					<span class="ui-text"><?=$allpicinfo[$i][title];?></span>
				</a>
			</li>
          <?php }?>  

		</ul>
	</div>
	<!-- .ui-list-quality -->
	

	<div><img src="/inc/pics/adv_1.jpg"></div>

	<div style=" margin-bottom:30px;"></div>
	<div class="ui-wave"></div>
	<div class="ui-elope" id="ui_elope">
		
	<img src="./inc/pics/advtop3.jpg" />
	</div>
	
	
	<div class="ui-list-elope clear" id="ui_list_elope">
		<ul class="ui-list">
		<?php 
		$j=0;
		for($i=0;$i<4;$i++){
			?>
			<li class="ui-list-item">
				<a href="#"><img class="ui-img" src="/upload/layout/<?=getlayoutpic(7,$j);?>" alt="" /></a>
                <a href="<?php $part4info=getlayoutpicinfo(7,$j+1,'url,opicname as pic');echo $part4info[url];?>" style="display:none"><img class="ui-img" src="/upload/layout/<?php echo $part4info[pic];$j+=2;?>" alt="" /></a>
			</li>
         <?php }?>
		</ul>
	</div>
	<!-- .ui-list-quality -->
	

	
	

<div><img src="/inc/pics/adv_2.jpg"></div>
	

	
	<div class="ui-gotop-wrapper" id="ui_gotop_wrapper">
		
		<a class="ui-gotop-link js-png" href="#"></a>
		<a class="ui-gohome-link js-png" href="#"></a>
		
	</div>
	
		
	
</div>
<!-- .wrapper -->

<!-- .ui-service-float -->

<a class="ui-gotop ui-gotop-float js-pos-fixed" id="ui_gotop_float" href="#"><span>Top</span></a>

<? require "footer.php"; ?>

</body>
</html>