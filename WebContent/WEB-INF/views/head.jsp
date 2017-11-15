<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>head</title>
</head>
<body>
<div class="top-content">
		<ul class="top-description">
			<li><a href="user!goMain">音乐社区</a></li>
			<li><a href="">论坛</a></li>
			<li><a href="">热搜榜</a></li>
			<li class="top-search" style="overflow:hidden">
				<div class="search-btn"></div>
			</li>
			<s:if test="#session.user!=null">
				<li><a class="music-btn" href="user!myMusic">我的音乐</a></li>
				<li><a href="user!myself">欢迎：<s:property value="#session.user.name"/></a></li>
				<li><a href="user!exit">退出</a></li>
			</s:if>
			<s:else>
				<li><s:a href="user!goLogin">登录</s:a></li>
				<li><s:a href="user!goRegister">注册</s:a></li>
			</s:else>
		</ul>
	</div>
</body>
</html>