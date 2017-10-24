<?php
require "../inc/config.php";
require "../inc/function.class.php";
require "../inc/pagenav.class.php";
require "../inc/cn_header_core.php";//页头 页脚调用 重复调用 如果买个页都涉及 可以写到这里



//page_content 内容
$intRows = 12;
//产品
$strSQLNum = "SELECT COUNT(*) as num from productinfo  where dele=1 order by ordernum desc";   
$rs = $objDB->Execute($strSQLNum);
$arrNum = $objDB->fields();
$intTotalNum=$arrNum["num"];

$objPage = new PageNav($intCurPage,$intTotalNum,$intRows);

$objPage->setvar($arrParam);
$objPage->init_page($intRows ,$intTotalNum);
$strNavigate = $objPage->output(1);
$intStartNum=$objPage->StartNum(); 

$strSQL = "select * from productinfo  where dele=1 order by ordernum desc" ;
$objDB->SelectLimit($strSQL,$intRows,$intStartNum);
$arrprods=$objDB->GetRows();



?>