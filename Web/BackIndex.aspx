<!DOCTYPE html> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<title>测试</title> 
<link rel="stylesheet" type="text/css" href="style/xt_css.css" /> 
</head> 
<body> 
<!-- 
作者：小湉 
网址：http://xtian.me 
时间：2013-11 
--> 

<div class="wmenu"> 
<dl> 
<dt class="user"><a href="#">用户管理</a></dt> 
<dd><a href="http://xtian.me">基本资料</a></dd> 
<dd><a href="http://xtian.me">邮箱管理</a></dd> 
<dd><a href="http://xtian.me">密码管理</a></dd> 
</dl> 
<dl> 
<dt class="edit"><a href="#">编辑管理</a></dt> 
<dd><a href="http://xtian.me">发布新闻管理</a></dd> 
</dl> 
</div> 
<script type="text/javascript" src="js/jquery.min.js"></script> 
<script type="text/javascript"> 
$('.wmenu dl dt').click(function(){ 
$(this).toggleClass('icotop'); 
$(this).siblings('dd').toggleClass('hidden'); 
}); 
</script> 
</body> 
</html> 