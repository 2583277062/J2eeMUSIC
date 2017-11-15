<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="Keywords" content="关键词"/>
<meta name="Description" content="描述信息"/>
<title></title>
<style type="text/css">
body{background:url(images/bg-register.jpg) center center no-repeat;background-size:cover;
	-moz-user-select: none;
	-webkit-user-select: none;
	-ms-user-select: none;
	-khtml-user-select: none;
	user-select: none;}
/* 去掉所有a链接的的下划线 */
a{text-decoration:none;}

/* 登陆的界面样式 */
.login{width:400px;height:400px;border:1px solid #c0c0c0;margin:100px auto;}

/* 顶部的样式 */
.login-top{width:100%;background-color:#c0c0c0;font-family:YouYuan;height:40px;color:#fff;font-size:24px;line-height:40px;
}
.login-top span{margin-left:40px;cursor:pointer;}
.login-top a{ display:block;width:20px;height:20px;float:right;margin-right:40px;background:transparent;border:none;color:white;cursor:pointer;}

/* 二维码登录样式 */
.select2d{width:55%;height:40px;float:right;margin-top:10px;cursor:pointer;}
.lospan{float:left;
color:#9b9b9b;border:1px solid red;border-radius:3px;}
.login-middle{width:60%;height:250px;margin:60px auto;}
.userid{width:100%;height:30px;border-radius:5px;}
.password{width:100%;height:30px;border-radius:5px; margin-top:10px;}
.tipslogin{width:100%;margin-top:10px;font-size:14px;color:#9d9d9d}
.tipslogin span{float:left}
.tipslogin a{display:block;float:right;color:#9d9d9d}
.login-button{display:block;width:100%;height:30px;margin-top:10px;background-color:#c0c0c0;text-align:center;border-radius:5px;line-height:30px;font-size:20px;margin-top:50px;font-family:;cursor:pointer;}
.register{color:#c0c0c0;float:right;}
.login-bottom{width:100%;margin-top:50px;font-size:12px;color:#9d9d9d; height:30px;line-height:30px;}
.login-bottom span{float:left;}
.login-bottom a{margin-left:10px;}
</style>
</head>
<body>
	<div class="login">
		<div class="login-top">
			<span>音乐天地</span>
			<a href="">×</a>
			<!-- <img src="" class="top-button"/> -->
		</div>
		<div class="select2d">
			<span class="lospan">二维码便捷登陆</span>
			<img src="images/erweima.png" title="扫码登陆"/>
		</div>
		
		<form action="user!login" class="login-middle" method="post">
		
			<input type="text" name="userId" class="userid" placeholder="用户名/手机/邮箱"/>
			<input type="password" name="password" class="password" placeholder="密码"/>
			
			<div class="tipslogin">
				<span>下次自动登陆</span>
				<a href="">忘记密码？</a>
			</div>
			
			<div class="login-button">
			<!--<a href="">登陆</a>  -->
			<input type="submit" value="登录"/>
			</div>
			
			<div><a href="" class="register">立即注册</a>
			</div>
			<div class="login-bottom">
			<span>其他方式登陆</span>
			<a href="" class="weixin"><img src="images/weixin.png"/></a>
			<a href="" class="qq"><img src="images/qq.png"/></a>
			<a href="" class="xinlang"><img src="images/weibo.png"/></a>
			</div>
			
		</form>
		
	</div>
		
	<!-- <a href="" class="login-button">登陆</a> -->
</body>
</html>