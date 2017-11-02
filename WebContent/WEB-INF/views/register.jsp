<%@page import="domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>注册</title>
  <style type="text/css">
  li{list-style:none}
  a{text-decoration:none;}
  body{background:url(images/bg-register.jpg) center center no-repeat;background-size:cover;
	-moz-user-select: none;
	-webkit-user-select: none;
	-ms-user-select: none;
	-khtml-user-select: none;
	user-select: none;}
  .top-content{margin:50px auto;text-align:center}
  .top-content span{font-size:50px;font-weight:bold;color:#8b8be9}
  .chang-content{text-align:center;margin:-20px auto}
  .chang-content a{display:inline-block;margin-left:30px;}
  .middle-content{width:70%;height:300px;margin:20px auto;text-align:center;}
  .middle-content .userid{margin-top:30px;width:300px;height:30px;border-radius:5px;}
  .middle-content .password{margin-top:30px;width:300px;height:30px;border-radius:5px;}
  .middle-content .phonenum{margin-top:30px;width:300px;height:30px;border-radius:5px;}
  .middle-content .verification{margin-top:30px;width:150px;height:30px;border-radius:5px;}
  .verification-btn{width:150px;height:30px;background:#46ec4f;cursor:pointer}
  .bottom-register{margin-top:10px;width:300px;height:30px; text-align:center;line-height:30px;background:#82db51;margin-left:580px;border-radius:5px;}
  </style>
 </head>
 <body>
	  <div class="register">
		<div class="top-content">
			<span>音乐天地</span>
			
		</div>
		<div class="chang-content">
		<a href="">注册</a>
		<a href="">登录</a>
		</div>
		<div class="middle-content">
		
		<ul>
		
		<li>
		<span>用户名：</span>
		<input type="text" class="userid" placeholder="请输入用户名"/>
		</li>
		<li>
		<span> &nbsp;&nbsp;密码 ：</span>
		<input type="text" class="password" placeholder="请输入密码"/>
		</li>
		<li>
		<span>手机号：</span>
		<input type="text" class="phonenum" placeholder="请输入手机号"/>
		</li>
		<li>
		<span>验证码：</span>
		<input type="text" class="verification" placeholder="请输入验证码"/>
		<button class="verification-btn">获取语音验证码</button>
		</li>
		
		</ul>
		
		</div>
		<div class="bottom-register">
		<a href="">立即注册</a>
		</div>
		
	  </div>
 </body>
</html>
