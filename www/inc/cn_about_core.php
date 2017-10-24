<?php
require "../inc/config.php";
require "../inc/function.class.php";
require "../inc/cn_header_core.php";//页头 页脚调用 重复调用 如果买个页都涉及 可以写到这里



$pageid=1;//版面管理新闻默认PAGEID=2
$str=getpagesetinfo($pageid,'title,content,pagetitle,keywords,description');//获得版面管理的内容 标题 页面标题 等

?>