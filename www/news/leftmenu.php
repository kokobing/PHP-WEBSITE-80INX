	<div class="ui-news-class">
				<ul class="ui-news-ul" id="ui_news_ul">
					<li>
						<a class="btn-news-class" href="#"><span class="btn-news-class-text">Class</span><s></s></a>
						<ul class="ui-news-sub-ul">
                        
                <?php 
				$newsdir2=getnewsdir2(1);
				for($i=0;$i<sizeof($newsdir2);$i++){?>
				<li class="ui-nav-item">
					<a class="ui-nav-link" href="news.php?ndir=<?php echo $newsdir2[$i][id_newsdir];?>"><span class="ui-nav-text"><?php echo $newsdir2[$i][name];?></span></a>
				</li>
                <?php }?>
			
						</ul>
					</li>
				</ul>
			</div>