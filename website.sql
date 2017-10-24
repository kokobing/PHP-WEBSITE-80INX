-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2017 年 10 月 24 日 12:13
-- 服务器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `bund3`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `backmenu`
-- 

CREATE TABLE `backmenu` (
  `id_backmenu` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `remark` text NOT NULL,
  `url` varchar(100) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_backmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

-- 
-- 导出表中的数据 `backmenu`
-- 

INSERT INTO `backmenu` VALUES (1, 1, '产品系统', '', 'product', 0, 1, 2, 1);
INSERT INTO `backmenu` VALUES (3, 1, '信息系统', '', 'news', 0, 1, 3, 1);
INSERT INTO `backmenu` VALUES (4, 1, '人事系统', '', 'hr', 0, 1, 4, 1);
INSERT INTO `backmenu` VALUES (5, 1, '权限系统', '', 'perm', 0, 1, 5, 1);
INSERT INTO `backmenu` VALUES (6, 1, '数据库备份', '', 'dbase', 0, 1, 6, 0);
INSERT INTO `backmenu` VALUES (9, 1, '产品管理', '', '/admin/product/product_manage.php', 1, 2, 9, 1);
INSERT INTO `backmenu` VALUES (8, 1, '产品分类', '', '/admin/product/product_dir.php', 1, 2, 8, 1);
INSERT INTO `backmenu` VALUES (47, 1, '区块管理', '', '/admin/siteset/layout.php', 44, 2, 47, 1);
INSERT INTO `backmenu` VALUES (15, 1, '信息分类', '', '/admin/news/news_dir.php', 3, 2, 15, 1);
INSERT INTO `backmenu` VALUES (16, 1, '信息管理', '', '/admin/news/news_manage.php', 3, 2, 16, 1);
INSERT INTO `backmenu` VALUES (17, 1, '员工档案', '', '/admin/hr/hr_staff.php', 4, 2, 17, 1);
INSERT INTO `backmenu` VALUES (18, 1, 'test', '', '/admin/hr/hr_exam.php', 4, 2, 18, 0);
INSERT INTO `backmenu` VALUES (19, 1, 'test2', '', '/admin/hr/hr_job.php', 4, 2, 19, 0);
INSERT INTO `backmenu` VALUES (20, 1, '系统菜单', '', '/admin/perm/perm_menu.php', 5, 2, 20, 1);
INSERT INTO `backmenu` VALUES (21, 1, '权限管理', '', '/admin/perm/perm_manage.php', 5, 2, 21, 1);
INSERT INTO `backmenu` VALUES (22, 1, '数据库备份', '', '/phpMyAdmin/', 6, 2, 22, 1);
INSERT INTO `backmenu` VALUES (48, 1, '版面管理', '', '/admin/siteset/pageset.php', 44, 2, 48, 1);
INSERT INTO `backmenu` VALUES (49, 1, '前台菜单', '', '/admin/siteset/webmenu.php', 44, 2, 49, 0);
INSERT INTO `backmenu` VALUES (39, 1, '信息回收站', '', '/admin/news/newsrecycle.php', 3, 2, 39, 1);
INSERT INTO `backmenu` VALUES (41, 1, '产品回收站', '', '/admin/product/productrecycle.php', 1, 2, 41, 1);
INSERT INTO `backmenu` VALUES (46, 1, '站点设定', '', '/admin/siteset/siteset.php', 44, 2, 46, 1);
INSERT INTO `backmenu` VALUES (44, 1, '站点管理', '', 'siteset', 0, 1, 1, 1);
INSERT INTO `backmenu` VALUES (50, 1, '留言反馈', '', '/admin/news/news_manage.php?&searchselect=4', 3, 2, 50, 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `dept`
-- 

CREATE TABLE `dept` (
  `id_dept` int(11) NOT NULL auto_increment,
  `dept` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_dept`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

-- 
-- 导出表中的数据 `dept`
-- 

INSERT INTO `dept` VALUES (36, '111', 1);
INSERT INTO `dept` VALUES (35, 'q', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `exam`
-- 

CREATE TABLE `exam` (
  `id_exam` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `level` varchar(1) NOT NULL,
  `examdate` date NOT NULL,
  PRIMARY KEY  (`id_exam`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `exam`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `hr`
-- 

CREATE TABLE `hr` (
  `id_hr` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `sex` int(1) NOT NULL default '1',
  `birthday` date NOT NULL,
  `hrcode` varchar(10) NOT NULL,
  `dept` int(11) NOT NULL,
  `iswork` int(1) NOT NULL default '1',
  `idcard` varchar(28) NOT NULL,
  `ismarry` int(1) NOT NULL,
  `nation` varchar(30) NOT NULL,
  `native` varchar(30) NOT NULL,
  `register` varchar(60) NOT NULL,
  `inwork` date NOT NULL,
  `education` varchar(20) NOT NULL,
  `profession` varchar(20) NOT NULL,
  `school` varchar(40) NOT NULL,
  `political` varchar(20) NOT NULL,
  `post` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `address` varchar(60) NOT NULL,
  `hometel` varchar(20) NOT NULL,
  `mobi` varchar(20) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `hjqk` text NOT NULL,
  `cfqk` text NOT NULL,
  `gwbd` text NOT NULL,
  `ldht` text NOT NULL,
  `sbjn` text NOT NULL,
  `remark` text NOT NULL,
  `user` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `level` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `logindate` datetime NOT NULL,
  `loginip` varchar(16) NOT NULL,
  PRIMARY KEY  (`id_hr`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

-- 
-- 导出表中的数据 `hr`
-- 

INSERT INTO `hr` VALUES (1, 1, 'administrator', 1, '0000-00-00', '', 36, 1, '', 0, '', '', '', '2011-01-29', '', '', '', '', 9, 15, '', '', '', '', '', '', '', '', '', '', 'admin', 'admin888', 1, 1, '2011-01-29 18:08:13', '2011-02-25 22:22:35', '0000-00-00 00:00:00', '2013-07-27 14:14:55', '116.238.74.49');

-- --------------------------------------------------------

-- 
-- 表的结构 `layout`
-- 

CREATE TABLE `layout` (
  `id_layout` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `intro` text NOT NULL,
  `content` text NOT NULL,
  `openstat` int(1) NOT NULL default '1',
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_layout`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- 导出表中的数据 `layout`
-- 

INSERT INTO `layout` VALUES (1, 1, '全局LOGO', '', '', '', 0, 1);
INSERT INTO `layout` VALUES (2, 1, '页脚管理', '', '', 'Copyright &copy; 2013 &nbsp;Bond-3 &nbsp;All rights reserved.', 0, 2);
INSERT INTO `layout` VALUES (3, 1, '首页BANNER图', '', '', '', 0, 3);
INSERT INTO `layout` VALUES (4, 1, '首页－第一部分', '', '热门风格', '', 0, 4);
INSERT INTO `layout` VALUES (5, 1, '首页－第二部分', '', '客照展示', '', 0, 5);
INSERT INTO `layout` VALUES (6, 1, '首页－第三部分', '', '作品风格', '', 0, 6);
INSERT INTO `layout` VALUES (7, 1, '首页－第四部分', '', 'CICI高级婚纱定制', '', 0, 7);

-- --------------------------------------------------------

-- 
-- 表的结构 `layoutpic`
-- 

CREATE TABLE `layoutpic` (
  `id_layoutpic` int(11) NOT NULL auto_increment,
  `id_layout` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_layoutpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;

-- 
-- 导出表中的数据 `layoutpic`
-- 

INSERT INTO `layoutpic` VALUES (78, 3, 1, '', '', '', '1373361849.jpg', '', 1, 'JPG', '2013-07-09 17:24:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (73, 7, 1, '', '', '44', '1353151672.jpg', '', 1, 'JPG', '2012-11-17 19:27:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (74, 2, 1, '', '', '', '1353314887.png', '', 1, 'PNG', '2012-11-19 16:48:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (75, 2, 1, '', '', '', '1353314907.png', '', 1, 'PNG', '2012-11-19 16:48:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (81, 4, 1, '', '', '', '1374568548.jpg', '', 1, 'JPG', '2013-07-23 13:16:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (80, 4, 1, '', '', '', '1374737859.jpg', '', 1, 'JPG', '2013-07-23 13:15:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (79, 4, 1, '', '', '/product/productview.php?pid=1', '1374559212.jpg', '', 1, 'JPG', '2013-07-23 13:14:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (55, 5, 1, '', '', '', '1374592562.jpg', '', 1, 'JPG', '2012-11-17 16:59:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (56, 5, 1, '', '', '', '1374592544.jpg', '', 1, 'JPG', '2012-11-17 17:01:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (57, 5, 1, '', '', '', '1374592528.jpg', '', 1, 'JPG', '2012-11-17 17:02:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (71, 7, 1, '', '', '33', '1353151647.jpg', '', 1, 'JPG', '2012-11-17 19:27:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (72, 7, 1, '', '', '4', '1353151661.jpg', '', 1, 'JPG', '2012-11-17 19:27:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (48, 5, 1, '', '', '1', '1374592244.jpg', '', 1, 'JPG', '2012-11-17 16:49:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (49, 5, 1, '', '', '2', '1374592300.jpg', '', 1, 'JPG', '2012-11-17 16:49:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (50, 5, 1, '', '', '3', '1374592368.jpg', '', 1, 'JPG', '2012-11-17 16:50:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (51, 5, 1, '', '', '4', '1374592385.jpg', '', 1, 'JPG', '2012-11-17 16:50:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (52, 5, 1, '', '', '', '1374592577.jpg', '', 1, 'JPG', '2012-11-17 16:57:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (64, 6, 1, 'rural married', '', '7', '1353145047.jpg', '', 1, 'JPG', '2012-11-17 17:37:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (65, 6, 1, '我愿意 I DO', '', '8', '1353145075.jpg', '', 1, 'JPG', '2012-11-17 17:37:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (62, 6, 1, '恋人', '', '5', '1353144906.jpg', '', 1, 'JPG', '2012-11-17 17:35:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (63, 6, 1, '午后精灵', '', '6', '1353144980.jpg', '', 1, 'JPG', '2012-11-17 17:36:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (60, 6, 1, 'Just Married', '', '3', '1353144797.jpg', '', 1, 'JPG', '2012-11-17 17:33:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (61, 6, 1, '简单爱', '', '4', '1353144877.jpg', '', 1, 'JPG', '2012-11-17 17:34:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (58, 6, 1, '天秤座', '', '1', '1353144692.jpg', '', 1, 'JPG', '2012-11-17 17:31:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (59, 6, 1, '恋熊P', '', '2', '1353144739.jpg', '', 1, 'JPG', '2012-11-17 17:32:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (70, 7, 1, '', '', '3', '1353151637.jpg', '', 1, 'JPG', '2012-11-17 19:27:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (68, 7, 1, '', '', '2', '1353151586.jpg', '', 1, 'JPG', '2012-11-17 19:26:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (69, 7, 1, '', '', '22', '1353151620.jpg', '', 1, 'JPG', '2012-11-17 19:27:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (66, 7, 1, '', '', '1', '1353151324.jpg', '', 1, 'JPG', '2012-11-17 19:22:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (67, 7, 1, '', '', '11', '1353151334.jpg', '', 1, 'JPG', '2012-11-17 19:22:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (76, 1, 1, '', '', '', '1353315360.png', '', 1, 'PNG', '2012-11-19 16:56:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (83, 3, 1, '', '', '', '1374737726.jpg', '', 1, 'JPG', '2013-07-25 15:35:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `newsdir`
-- 

CREATE TABLE `newsdir` (
  `id_newsdir` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_newsdir`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- 导出表中的数据 `newsdir`
-- 

INSERT INTO `newsdir` VALUES (1, 1, '信息分类', '', 1, 0, 1, 1);
INSERT INTO `newsdir` VALUES (2, 1, '最新公告', '', 1, 1, 2, 2);
INSERT INTO `newsdir` VALUES (3, 1, '活动资讯', '', 1, 1, 2, 3);
INSERT INTO `newsdir` VALUES (4, 1, '媒体报导', '', 1, 1, 2, 4);

-- --------------------------------------------------------

-- 
-- 表的结构 `newsinfo`
-- 

CREATE TABLE `newsinfo` (
  `id_newsinfo` int(11) NOT NULL auto_increment,
  `id_newsdir` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `isnew` int(1) NOT NULL default '1',
  `url` varchar(255) NOT NULL,
  `newsdate` date NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_newsinfo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- 导出表中的数据 `newsinfo`
-- 

INSERT INTO `newsinfo` VALUES (1, 2, 0, 1, '10月重磅优惠，付9元换4999元大礼包', '', '外滩三号10月重磅优惠，定套餐只要再付9元换4999元大礼包！详情见店内细则。', '', 1, 1, '', '2012-11-22', '2012-11-22 15:42:41', '2012-11-22 15:51:51', '0000-00-00 00:00:00', 0, 1);
INSERT INTO `newsinfo` VALUES (3, 2, 0, 1, '外滩服务QQ ： 1150057560', '', '外滩服务QQ ： 1150057560', '', 1, 1, '', '2012-11-10', '2012-11-22 15:52:34', '2012-11-22 17:34:03', '0000-00-00 00:00:00', 0, 3);
INSERT INTO `newsinfo` VALUES (4, 3, 0, 1, '绍兴首家水下摄影机构外滩三号牵手自在城', '', '<img alt="" border="0" src="http://img.e0575.com/attachment/Day_110926/167_1080741_ca4450ed172cb9a.jpg?149" style="border: 0px none; vertical-align: middle; max-width: 750px; " width="680" /><br />\r\n<br />\r\n在钢筋水泥铸就的城市中忙碌，每天几乎相同的工作、生活，拘束而又一成不变，心灵再坚强时间久了也会疲倦。每个人都在追求幸福，幸福对城市人而言显得弥足珍贵，当幸福来临的时刻，体会与爱人彼此相守的温馨，是每个城市人梦寐以求的。而在这新元素繁多的世界里，追求幸福和与众不同的概念，是一种时尚。水下摄影，则正更好的诠释了这唯美而又充满创意的时尚。<br />\r\n<br />\r\n今天，美梦将成真，在美丽的坂湖之滨，金地集团迎来绍兴首家水下摄影机构&mdash;&mdash;外滩三号，成为绍兴首个水下摄影基地，站在时尚潮流前线，感受着湖的温柔，见证城市人的幸福一刻。<br />\r\n<br />\r\n9月25日金地自在城与绍兴首家水下摄影机构的签约现场，人头攒动，各路媒体聚焦坂湖之滨，在这个喜庆的日子，金地自在城将和外滩三号正式签约，主办方邀请了各位贵宾来到现场共同见证这一激动人心的时刻。<br />\r\n<br />\r\n外滩三号摄影机构是一家来自上海，以婚纱、广告摄影、宝宝照为主的时尚创意摄影机构。定位中高端人群、每个环节都以高品质的服务为标准。他们带来上海新派摄影概念，拒绝影楼版千篇一律&ldquo;流水线&rdquo;工作；因此才有了水下摄影这一全新的领域。<br />\r\n<br />\r\n金地自在城作为绍兴的领袖级大盘，总建面达150万方，其中包含约14万方的高端商业。沿大小坂湖分布，美景天成，项目共分五期进行开发，预计持续开发8-10年。建成之后将是柯桥，乃至整个绍兴区域内最具国际化和生活气息的社区，成为绍兴的商业名片与城市客厅。社区外部是大小坂湖的天然美景，社区内部，在4200平方的会所内金地规划了绍兴罕见的观光式室内恒温泳池。内外水景结合，成为绍兴水下摄影基地的不二之选。<br />\r\n此次合作的成功来自于金地绍兴公司和外滩三号摄影机构的真诚互助，为推动绍兴文化生活的丰富和进步，推动绍兴摄影事业的长足发展，金地自在城全程赞助，表现出了一个超级大盘的气度、实力和提高绍兴人居水平的决心和魄力。<br />\r\n<br />\r\n<img alt="" border="0" src="http://img.e0575.com/attachment/Day_110926/167_1080741_3d086b770ec2438.jpg?211" style="border: 0px none; vertical-align: middle; max-width: 750px; " width="680" /><br />\r\n<br />\r\n随着激情洋溢的音乐声起，一组时尚靓丽的泳装秀上场。本次特别邀请了第57届全球比基尼小姐大赛的模特登场。为大家倾情演绎了泳装、礼服、婚姻秀，获得了现场雷鸣般的掌声。结束后，双方签约代表金地集团绍兴公司总经理助理兼营销总监赵伟女士和外滩三号摄影市场总监陈小恩上台签约，现场气氛十分火爆，在音乐声和镁光灯的衬托下，签约仪式圆满结束。<br />\r\n<br />\r\n之后，各位贵宾移步泳池观摩，体验水下摄影的无穷魅力。接着，水下摄影的重头戏上演，来自外滩三号的模特们纷纷入水，在清澈的泳池中与水亲密接触，一对对男女沉浸在泳池中，进行一次时尚而且具有别样风情的水下摄影，在水下一对对幸福的男女化身水的精灵，两人牵手在水底嬉戏，自由舒展在池水的怀抱中，尽情享受着水中的自由，和来自嘉宾们的祝福，而这一幕幕瞬间都被恰到好处的保留下来，这一切该是如此美妙。<br />\r\n<br />\r\n在此，金地自在城携手外滩三号摄影机构祝福天下有情人终成眷属、长相厮守。', '', 1, 1, '', '2012-11-22', '2012-11-22 15:53:09', '2012-11-22 15:58:20', '0000-00-00 00:00:00', 0, 4);
INSERT INTO `newsinfo` VALUES (2, 2, 0, 1, 'www.bund-3.com 官方网址', '', '官方网址 www.bund-3.com', '', 1, 1, '', '2012-11-22', '2012-11-22 15:49:58', '2012-11-22 15:52:15', '0000-00-00 00:00:00', 0, 2);
INSERT INTO `newsinfo` VALUES (5, 2, 0, 1, '《第一热线》报道我司', '', 'http://www.sxtv.com.cn/folder16/folder32/2011/09/2011-09-298777.html', '', 1, 1, '', '2012-11-22', '2012-11-22 15:58:59', '2012-11-22 15:59:14', '0000-00-00 00:00:00', 0, 5);

-- --------------------------------------------------------

-- 
-- 表的结构 `newspic`
-- 

CREATE TABLE `newspic` (
  `id_newspic` int(11) NOT NULL auto_increment,
  `id_newsinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_newspic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `newspic`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `pageset`
-- 

CREATE TABLE `pageset` (
  `id_pageset` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `pagetitle` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_pageset`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- 导出表中的数据 `pageset`
-- 

INSERT INTO `pageset` VALUES (1, 1, '关于外滩 About', '', '外滩三号婚纱摄影', '', '', '源自上海，是绍兴婚纱摄影行业的品质代表。外滩三号人民路旗舰店定位绍兴最高端精致摄影工作室，超越影楼的硬件场景（5000平米摄影基地）是外滩的底气；精致的拍摄品质是外滩的生命线；服务一直都来自客人口口相传。<br />\r\n<br />\r\n以婚纱、商业摄影为主的时尚创意摄影机构,以中高端的消费人群为主，每个环节都以高品质的服务为标准。<br />\r\n<br />\r\n我们有：<br />\r\n正规高校团队保证，会英文，率先为绍兴市场创造独一无二的&ldquo;马来西亚蜜月婚纱照&rdquo;、以及国内-三亚-鼓浪屿-上海-绍兴-杭州-宁波实景地摄影服务体验。<br />\r\n<br />\r\n绍兴首家水下婚纱摄影机构；<br />\r\n外滩三号是全绍兴唯一具有5000平米的电影片场；<br />\r\n绍兴市人民代表大会唯一指定摄影机构；<br />\r\n横店影视基地签约机构；<br />\r\n桐庐薰衣草基地签约机构；<br />\r\n布查特花海基地签约机构；<br />\r\n绍兴独家游艇拍摄基地等', 0);
INSERT INTO `pageset` VALUES (2, 1, '联系我们 Contact', '', '联系我们 ', '', '', '<ul>\r\n	<li class="ui-list-item">\r\n		旗舰店：绍兴市人民路152号（中国银行&amp;工商银行对面）</li>\r\n	<li class="ui-list-item">\r\n		www.bund-3.com</li>\r\n	<li class="ui-list-item">\r\n		我们的工作时间 8：30AM-8：30PM</li>\r\n	<li class="ui-list-item">\r\n		幸福热线：0575-88650006</li>\r\n	<li class="ui-list-item">\r\n		客服QQ：1150057560</li>\r\n	<li class="ui-list-item">\r\n		官微信：wtshsheying&nbsp;<img alt="" src="/upload/other/images/20130718_030727.jpg" style="height: 80px; width: 80px;" /></li>\r\n</ul>\r\n', 0);
INSERT INTO `pageset` VALUES (3, 1, '婚纱定制 WEDDING', '', '', '', '', 'ANGELES婚纱高级定制<br /><br />\r\n<b>A</b><br />\r\n型号：<br />\r\n价格：<br />\r\n款式：<br />\r\n<br />\r\n<b>B</b><br />\r\n型号：<br />\r\n价格：<br />\r\n款式：<br />\r\n<br />\r\n<b>C</b><br />\r\n型号：<br />\r\n价格：<br />\r\n款式：<br />\r\n<br />\r\n<b>D</b><br />\r\n型号：<br />\r\n价格：<br />\r\n款式：<br />\r\n', 0);
INSERT INTO `pageset` VALUES (4, 1, '帮助中心 Help', '', '重大声明', '', '', '外滩三号婚纱摄影在全国只有浙江绍兴市人民路152号一家,官方网站:www.bund-3.com<br />\r\n<br />\r\n为保证照片风格的原创性以及精致服务的高标准,全国并未开设其他加盟连锁店<br />\r\n如有同名,均为仿冒<br />\r\n请消费者注意分辨,谨防受骗<br />\r\n<br />\r\n外滩三号摄影为注册商标,在此敬告其他侵权外滩三号摄影的商家,请立即停止侵权行为<br />\r\n外滩三号保留依法追究的权利&nbsp;<br />\r\n', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `pagesetpic`
-- 

CREATE TABLE `pagesetpic` (
  `id_pagesetpic` int(11) NOT NULL auto_increment,
  `id_pageset` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_pagesetpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

-- 
-- 导出表中的数据 `pagesetpic`
-- 

INSERT INTO `pagesetpic` VALUES (34, 3, 1, '111112222', '22211111', '', '1353415036.jpg', '', 1, 'JPG', '2012-11-20 20:37:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `pagesetpic` VALUES (24, 5, 1, '', '', '', '1350123560.jpg', '', 1, 'JPG', '2012-10-13 18:19:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `pagesetpic` VALUES (25, 7, 1, '', '', '', '1350483541.jpg', '', 1, 'JPG', '2012-10-17 22:19:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `pagesetpic` VALUES (26, 8, 1, '', '', '', '1350734560.jpg', '', 1, 'JPG', '2012-10-20 20:02:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `pagesetpic` VALUES (27, 9, 1, '', '', '', '1350735514.jpg', '', 1, 'JPG', '2012-10-20 20:18:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `pagesetpic` VALUES (28, 10, 1, '', '', '', '1350736543.jpg', '', 1, 'JPG', '2012-10-20 20:35:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `pagesetpic` VALUES (29, 11, 1, '', '', '', '1350736911.jpg', '', 1, 'JPG', '2012-10-20 20:41:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `pagesetpic` VALUES (30, 12, 1, '', '', '', '1350736935.jpg', '', 1, 'JPG', '2012-10-20 20:42:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `pagesetpic` VALUES (31, 13, 1, '', '', '', '1350822368.jpg', '', 1, 'JPG', '2012-10-21 20:26:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `pagesetpic` VALUES (43, 1, 1, '', '', '333', '1374111529.jpg', '', 1, 'JPG', '2013-07-18 09:38:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `pagesetpic` VALUES (42, 1, 1, '', '', '2222', '1374111521.jpg', '', 1, 'JPG', '2013-07-18 09:38:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `pagesetpic` VALUES (41, 1, 1, '', '', '11111', '1374111513.jpg', '', 1, 'JPG', '2013-07-18 09:38:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `pagesetpic` VALUES (44, 3, 1, '', '', '', '1374570413.jpg', '', 1, 'JPG', '2013-07-23 17:06:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `pagesetpic` VALUES (45, 3, 1, '', '', '', '1374570470.jpg', '', 1, 'JPG', '2013-07-23 17:07:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `pavy1`
-- 

CREATE TABLE `pavy1` (
  `id_pavy1` int(11) NOT NULL auto_increment,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `product_visit` int(1) NOT NULL default '0',
  `store_visit` int(1) NOT NULL default '0',
  `news_visit` int(1) NOT NULL default '0',
  `hr_visit` int(1) NOT NULL default '0',
  `pavy_visit` int(1) NOT NULL default '0',
  `data_visit` int(1) NOT NULL default '0',
  `siteset_visit` int(1) NOT NULL default '0',
  `level` int(1) NOT NULL default '0',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  PRIMARY KEY  (`id_pavy1`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- 
-- 导出表中的数据 `pavy1`
-- 

INSERT INTO `pavy1` VALUES (28, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `pavy2`
-- 

CREATE TABLE `pavy2` (
  `id_pvay2` int(11) NOT NULL auto_increment,
  `id_hr` int(11) NOT NULL,
  `id_backmenu` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `browseprem` int(1) NOT NULL default '0',
  `addprem` int(1) NOT NULL default '0',
  `editprem` int(1) NOT NULL default '0',
  `deleprem` int(1) NOT NULL default '0',
  `display` int(1) NOT NULL default '1',
  `level` int(1) NOT NULL default '0',
  `state` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  PRIMARY KEY  (`id_pvay2`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=265 ;

-- 
-- 导出表中的数据 `pavy2`
-- 

INSERT INTO `pavy2` VALUES (246, 1, 46, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (245, 1, 41, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (244, 1, 39, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (243, 1, 22, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (242, 1, 21, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (241, 1, 20, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (240, 1, 19, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (239, 1, 18, 1, 0, 0, 0, 0, 0, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (238, 1, 17, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (237, 1, 16, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (236, 1, 15, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (235, 1, 47, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (234, 1, 8, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (233, 1, 9, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (263, 1, 49, 1, 0, 0, 0, 0, 0, 0, 1, '2012-02-26 20:27:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (247, 1, 48, 1, 1, 1, 1, 1, 1, 0, 1, '2011-03-09 16:42:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (264, 1, 50, 1, 1, 1, 1, 1, 1, 0, 1, '2012-06-15 10:47:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `post`
-- 

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL auto_increment,
  `post` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_post`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- 导出表中的数据 `post`
-- 

INSERT INTO `post` VALUES (1, '普通员工', 1);
INSERT INTO `post` VALUES (2, '物料收发员', 1);
INSERT INTO `post` VALUES (3, 'IQC', 1);
INSERT INTO `post` VALUES (4, '仓库主管', 1);
INSERT INTO `post` VALUES (5, '采购主管', 1);
INSERT INTO `post` VALUES (6, '销售主管', 1);
INSERT INTO `post` VALUES (7, '副总经理', 1);
INSERT INTO `post` VALUES (8, '总经理', 1);
INSERT INTO `post` VALUES (9, '网站管理员', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `productdir`
-- 

CREATE TABLE `productdir` (
  `id_proddir` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL,
  `name` varchar(50) NOT NULL default '1',
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `dirurl` varchar(50) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_proddir`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `productdir`
-- 

INSERT INTO `productdir` VALUES (1, 0, '作品展示', '', 1, '', 0, 1, 1);
INSERT INTO `productdir` VALUES (2, 0, '摄影风格', '浪漫湘湖', 1, '', 1, 2, 2);

-- --------------------------------------------------------

-- 
-- 表的结构 `productinfo`
-- 

CREATE TABLE `productinfo` (
  `id_prodinfo` int(11) NOT NULL auto_increment,
  `id_proddir` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `isnew` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_prodinfo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `productinfo`
-- 

INSERT INTO `productinfo` VALUES (1, 2, 0, 1, '邮差', '名称 :邮差<br>\r\n拍摄地点 :杭州<br>\r\n适合季节 :四季<br>\r\n套餐限定 :无限定<br>', '<img alt="" src="/upload/other/images/20121122_105524.jpg" style="width: 820px; height: 1086px; " /><br />\r\n<br />\r\n<img alt="" src="/upload/other/images/20121122_105524(1).jpg" style="width: 669px; height: 1200px; " /><br />\r\n<br />\r\n<img alt="" src="/upload/other/images/20121122_105527.jpg" style="width: 759px; height: 1200px; " /><br />\r\n<br />\r\n<img alt="" src="/upload/other/images/20121122_105529.jpg" style="width: 704px; height: 1200px; " /><br />\r\n<br />\r\n<img alt="" src="/upload/other/images/20121122_105532(1).jpg" style="width: 820px; height: 1098px; " /><br />\r\n<br />\r\n<img alt="" src="/upload/other/images/20121122_105532(2).jpg" style="width: 820px; height: 1140px; " /><br />\r\n<br />\r\n<img alt="" src="/upload/other/images/20121122_105532.jpg" style="width: 820px; height: 1015px; " /><br />\r\n', '', 1, 1, '2012-11-22 18:46:06', '2012-11-22 19:17:33', '2012-11-22 18:46:12', 0, 1);
INSERT INTO `productinfo` VALUES (2, 2, 0, 1, '浪漫湘湖', '', '', '', 1, 1, '2013-07-18 11:07:58', '2013-07-23 17:27:04', '0000-00-00 00:00:00', 0, 2);

-- --------------------------------------------------------

-- 
-- 表的结构 `productpic`
-- 

CREATE TABLE `productpic` (
  `id_prodpic` int(11) NOT NULL auto_increment,
  `id_prodinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_prodpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `productpic`
-- 

INSERT INTO `productpic` VALUES (1, 1, 1, '', '', '', '1353581404.jpg', '', 1, 'JPG', '2012-11-22 18:50:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (2, 2, 1, '', '', '', '1374571617.jpg', '', 1, 'JPG', '2013-07-23 17:26:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `siteset`
-- 

CREATE TABLE `siteset` (
  `id_siteset` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `otherheader` text NOT NULL,
  `iscopy` int(1) NOT NULL default '0',
  `rmailbox` varchar(50) NOT NULL,
  `smailbox` varchar(50) NOT NULL,
  `smailboxpass` varchar(50) NOT NULL,
  `icp` varchar(25) NOT NULL,
  `mapcode` text NOT NULL,
  `statistics` text NOT NULL,
  `isstyle` varchar(8) NOT NULL,
  PRIMARY KEY  (`id_siteset`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `siteset`
-- 

INSERT INTO `siteset` VALUES (1, 1, '外滩三号婚纱摄影', '外滩三号婚纱摄影', '外滩三号婚纱摄影', '', 0, '', '', '', '', '<iframe width="697" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://ditu.google.cn/maps?f=q&amp;source=s_q&amp;hl=zh-CN&amp;geocode=&amp;q=%E7%BB%8D%E5%85%B4%E5%B8%82%E4%BA%BA%E6%B0%91%E8%B7%AF152%E5%8F%B7&amp;aq=&amp;sll=31.003509,122.003174&amp;sspn=2.036284,4.237976&amp;brcurrent=3,0x344cf420a90fe275:0xa7de100575abdebc,0,0x344c42f9ba150bdb:0x1859ede150b9ddce%3B5,0,0&amp;ie=UTF8&amp;hq=&amp;hnear=%E6%B5%99%E6%B1%9F%E7%9C%81%E7%BB%8D%E5%85%B4%E5%B8%82%E8%B6%8A%E5%9F%8E%E5%8C%BA%E4%BA%BA%E6%B0%91%E4%B8%AD%E8%B7%AF152%E5%8F%B7&amp;t=m&amp;ll=30.002591,120.585938&amp;spn=0.026015,0.059824&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe><br /><small><a href="http://ditu.google.cn/maps?f=q&amp;source=embed&amp;hl=zh-CN&amp;geocode=&amp;q=%E7%BB%8D%E5%85%B4%E5%B8%82%E4%BA%BA%E6%B0%91%E8%B7%AF152%E5%8F%B7&amp;aq=&amp;sll=31.003509,122.003174&amp;sspn=2.036284,4.237976&amp;brcurrent=3,0x344cf420a90fe275:0xa7de100575abdebc,0,0x344c42f9ba150bdb:0x1859ede150b9ddce%3B5,0,0&amp;ie=UTF8&amp;hq=&amp;hnear=%E6%B5%99%E6%B1%9F%E7%9C%81%E7%BB%8D%E5%85%B4%E5%B8%82%E8%B6%8A%E5%9F%8E%E5%8C%BA%E4%BA%BA%E6%B0%91%E4%B8%AD%E8%B7%AF152%E5%8F%B7&amp;t=m&amp;ll=30.002591,120.585938&amp;spn=0.026015,0.059824&amp;z=14&amp;iwloc=A" style="color:#0000FF;text-align:left">查看大图</a></small>', '', '');

-- --------------------------------------------------------

-- 
-- 表的结构 `title`
-- 

CREATE TABLE `title` (
  `id_title` int(11) NOT NULL auto_increment,
  `title` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- 导出表中的数据 `title`
-- 

INSERT INTO `title` VALUES (15, 'q', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `webmenu`
-- 

CREATE TABLE `webmenu` (
  `id_webmenu` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `url` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_webmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- 
-- 导出表中的数据 `webmenu`
-- 

INSERT INTO `webmenu` VALUES (1, 1, '网站首页----HOME', '/', 1, 0, 1, 8);
INSERT INTO `webmenu` VALUES (2, 1, '关于我们----About us', '/about/aboutus.php', 1, 0, 1, 7);
INSERT INTO `webmenu` VALUES (3, 1, '产品中心----Products', '/product/products.php', 1, 0, 1, 6);
INSERT INTO `webmenu` VALUES (4, 1, '新闻中心----News', '/news/news.php', 1, 0, 1, 5);
INSERT INTO `webmenu` VALUES (5, 1, '联系我们----Contact us', '/contactus/contactus.php', 1, 0, 1, 4);
INSERT INTO `webmenu` VALUES (11, 1, '公司介绍----Introduction', '/about/intro.php', 1, 2, 2, 0);
INSERT INTO `webmenu` VALUES (12, 1, '关于我们----About us', '/about/aboutus.php', 1, 2, 2, 0);
INSERT INTO `webmenu` VALUES (13, 1, '总经理致辞----CEO''s Message', '/about/ceomessage.php', 1, 2, 2, 0);
INSERT INTO `webmenu` VALUES (14, 1, '产品中心----Products', '/product/products.php', 1, 3, 2, 0);
INSERT INTO `webmenu` VALUES (15, 1, '资料下载----PDF download', '/product/productpdf.php', 1, 3, 2, 0);
INSERT INTO `webmenu` VALUES (16, 1, '我们的工厂----Our factory', '/product/ourfactory.php', 1, 3, 2, 0);
INSERT INTO `webmenu` VALUES (17, 1, '公司新闻----Company news', '/news/companynews.php', 1, 4, 2, 0);
INSERT INTO `webmenu` VALUES (18, 1, '产品新闻----Product news', '/news/productnews.php', 1, 4, 2, 0);
INSERT INTO `webmenu` VALUES (19, 1, '加入我们----Join us', '/news/joinus.php', 1, 4, 2, 0);
