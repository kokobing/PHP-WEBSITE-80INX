<?php
require "../inc/cn_product_core.php";
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
<link href="../inc/css/works.css" type="text/css" rel="stylesheet" />
<div class="ui-navs" id="ui_navs">
<? require "../sub_header.php"; ?>
	<!-- #nav end -->
	<!-- #sub nav start -->
	<div class="ui-nav-sub clear" id="ui_nav_sub">
		
		<div class="wrapper">

		</div>
	</div>
	<!-- #sub nav end -->

</div>

<div class="wrapper">

	
<h1 class="txt-works">
		WORKS OF BUND-3<s></s>
	</h1>
	<div class="ui-wave"></div>
	
	<div class="ui-gallery js-slideup-grp" id="ui_gallery">
		<ul class="ui-list clear">
		
		<?php for($i=0;$i<sizeof($arrprods);$i++){?>
			<li class="ui-list-item">
				<a class="ui-link" href="/product/productview.php?pid=<?=$arrprods[$i][id_prodinfo];?>">
					<img class="ui-img" alt="" src="/upload/product/<?=getproductpic($arrprods[$i][id_prodinfo]);?>">
				</a>
				
				<div class="ui-img-group">
					<p class="ui-img-txt">
						<?=$arrprods[$i][title];?>
					</p>
				</div>
                
			</li>
        <?php }?>        
        
        
		</ul>
	</div>
	
	
	
	<div class="ui-page hide" id="ui_gallery_page">
		<ul class="ui-nav-sub-cnt">
			<li class="ui-nav-item"><a class="ui-nav-text ui-state-active" href="#" rel="1" hidefocus="true">1</a></li>
			<li class="ui-nav-item"><a class="ui-nav-text" href="#" rel="2" hidefocus="true">2</a></li>
			<li class="ui-nav-item"><a class="ui-nav-text" href="#" rel="3" hidefocus="true">3</a></li>
		</ul>
	</div>

	<div class="ui-gotop-wrapper" id="ui_gotop_wrapper">
		
		<a class="ui-gotop-link js-png" href="#"></a>
		<a class="ui-gohome-link js-png" href="home.html"></a>
		
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