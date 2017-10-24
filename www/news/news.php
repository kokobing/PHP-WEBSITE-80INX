<?php
require "../inc/cn_news_core.php";
?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
<meta name="keywords" content="<?php echo $setinfo[keywords];?>" />
<meta name="description" content="<?php echo $setinfo[description];?>" />
<title><?php echo $setinfo[title];?></title>
<meta name="language" content="cn" />
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

	<div class="news-wrapper" id="angles_wrapper">
	
		<h1 class="title-news">
			NEWS OF BUND-3<s></s>
		</h1>
		
		<div class="ui-wave"></div>


		<div class="ui-news clear" id="ui_news_list">
			<? require "leftmenu.php"; ?>
            
			<div class="ui-news-cnt">
			
			    
                <?php for($i=0;$i<sizeof($arrnews);$i++){?>
				<div class="ui-news-box">
					<div class="ui-news-box-top">
						<div class="ui-news-box-btm">
						
							<div class="news-body">
								<h3 class="news-title">
									<span class="new-title-text"><?=$arrnews[$i][title];?></span>
									<s></s>
								</h3>
								<div class="news-content">
                                    <?=$arrnews[$i][content];?>
								</div>
								<p class="news-time"><?=$arrnews[$i][newsdate];?></p>
								<p class="news-logo-wrapper clear"><span class="news-logo-mini"></span></p>
							</div>
						</div>
					</div>
				</div>
                <?php }?>
                
                
				
			</div>
		</div>
		
		<div class="ui-page">
			<?php if(substr(trim($strNavigate),-46)!='#494949"><strong>1</strong></font>&nbsp;&nbsp;'){echo $strNavigate;}?>
		</div>

		<div class="title-no-sweet-no-life">no sweet no life<s></s></div>
		

		<div class="ui-wave"></div>

		<div class="ui-gotop-wrapper" id="ui_gotop_wrapper">
			<a class="ui-gotop" href="#"></a>
		</div>
		
	</div>	
	
		<? require "../footertop.php"; ?>
	
</div>
<!-- .wrapper -->

<!-- .ui-service-float -->

<a class="ui-gotop ui-gotop-float js-pos-fixed" id="ui_gotop_float" href="#"><span>Top</span></a>

<? require "../footer.php"; ?>

<script src="/inc/js/jquery.js" charset="UTF-8"></script>
<script src="/inc/js/base.js" charset="UTF-8"></script>







</body>
</html>