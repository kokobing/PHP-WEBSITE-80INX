
README
===========================
A complete wedding photography website, including the foreground page and background admin page.  is uploaded in the warehouse because of the end of the project life cycle. The code is for learning only, and prohibits any business related behavior,Site does not use any MVC framework, very suitable for beginners PHP study.

PHP-WEBSITE-80INX 一个完整的婚纱摄影网站，包括前台后台，因为项目生命周期完结，整理到仓库中以做总结，代码仅供学习，禁止任何与商业有关的行为！
站点未用任何MVC框架，非常适合PHP初学者入门。  


运行环境和下载地址 
===========================
 * 集成环境 APPSERV appserv-win32-2.5.10.exe
 * Download link 下载地址：http://pan.baidu.com/s/1sldpyXZ  密码:94ig

安装调试
===========================
 * 拷贝www到网站目录 例如：C:\AppServ\www\website\www  

 * 导入数据库SQL文件 PHPMYADMIN中新建website数据库，并导入website.sql，注意新建数据库排序规则为utf8_general_ci 
 
 * 配置前台和后台数据库连接信息  
	 前台文件路径 /www/inc/config.php  
	 后台文件路径 /www/admin/inc/config_admin.php  
 
 	`$db_hostname="localhost"; //服务器  `  
	`$db_username="root"; //用户名  `  
	`$db_password="123456"; //密码  `  
	`$db_database="website"; //数据库  `  
	
	后台文件路径 /www/admin/inc/config_admin.php中需指定测试域名的字符串，如下  
	`$siteurl="http://www.website.com";`

 *安装盘：\AppServ\Apache2.2\conf\httpd.conf  
 
 *禁止访问目录,httpd.conf中找到如下行信息，去除Indexes  
	   Options `Indexes` FollowSymLinks Includes ExecCGI ------- httpd.conf去除 Indexes  
	
 * httpd.conf 中找到'# Include conf/extra/httpd-vhosts.conf'，去掉#，开启VHOST虚拟主机  
       
   
运行设置
=========================== 
 
 * You appserv httpd-vhosts.conf set  
	   安装盘：\AppServ\Apache2.2\conf\extra\httpd-vhosts.conf 设定虚拟主机信息,追加如下  
 
	`<VirtualHost *:80> `   
		`ServerAdmin webmaster@dummy-host2.x  `  
		`DocumentRoot "C:\AppServ\www\website\www"  `  
		`ServerName www.website.com  `  
		`ErrorLog "logs/dummy-host2.x-error.log"  `  
		`CustomLog "logs/dummy-host2.x-access.log" common  `  
	`</VirtualHost>  `  
	

 * 域名重定向，追加如下  
    127.0.0.1       www.website.com

 * 重启APACHE后，在浏览器中运行 http://www.website.com
 * 后台地址： http://www.website.com/admin/   User:admin  Password:admin888 
****
	
|Author|Koko Lv|
|---|---
|E-mail|495105@qq.com

****
![](https://github.com/Kokolpb/PHP-WEBSITE-80INX/blob/master/home.jpg)  

