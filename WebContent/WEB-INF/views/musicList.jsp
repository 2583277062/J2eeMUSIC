<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>我的音乐</title>
  <style type="text/css">
  *{margin:0px;}
  li{list-style:none}
  /* 上部分样式 */
  body{background:url(images/info-bg.jpg) center center no-repeat;background-size:cover;}
body a{-moz-user-select: none;
	-webkit-user-select: none;
	-ms-user-select: none;
	-khtml-user-select: none;
	user-select: none;}
	body span{-moz-user-select: none;
	-webkit-user-select: none;
	-ms-user-select: none;
	-khtml-user-select: none;
	user-select: none;}
a:hover{color:red}
*{margin:0px;}
	.top-content{width:70%;height:44px;margin:0px auto;background-color:#b2b2b2;border-radius:5px;box-shadow:0 0 20px #6affff}
	.top-content a{color:white;text-decoration:none;display:block;font-size:16px;float:right}
	.top-description li{list-style:none;margin-left:20px;float:left;line-height:44px;}
	.top-description .top-search{
	width:325px;
height:36px;}
	.top-description .search-btn{
	background: url(http://static.tianyaui.com/global/bbs/web/static/images/top-nav-bg_3264908.png) no-repeat #F7F7F7 0 -342px;width:30px;height: 30px;cursor: pointer;display: block;z-index: 1;margin-top: 8px;}
	.top-description .music-btn{position:relative;border:none;background:transparent;cursor:pointer;color:#fff;}
	/* 上部分样式完毕 */
	
	.music-content{width:80%;height:600px;margin:50px auto;font-size:40px;font-weight:bold;color:#ffffff;}
	.music-content span{float:left;margin-left:20%}
	.music-content button{float:right;margin-right:20%;margin-top:20px;line-height:30px;border-radius:10px;cursor:pointer;color:white;box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1), 0 0 8px rgba(82, 168, 236, 0.6); }
	.head-musiclist{width:100%;height:15%;}
	.search-music{
		float:right;
		border-radius:10px;
		margin-top:20px;
		margin-right:2%;
		width:20%;
		height:30px;
		text-indent:1rem;
		outline: 0 none;  
		border-color: rgba(82, 168, 236, 0.8);  
		box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1), 0 0 8px rgba(82, 168, 236, 0.6); 
	}
	.musiclist{width:90%;height:80%;background:#d1d1d1;margin:0px auto;overflow:auto}
	.musiclist ul li{padding-top:2rem;font-size:16px;}
	.music .music-left{;float:left;width:25%;line-height:40px;margin-left:20%}
	.music .music-center{float:left;width:25%;line-height:40px;}
	.music .music-right{float:left;width:25%;line-height:40px;}
	.start-btn{background:transparent;}
	.start-stop{display:block;border:2px solid #ffffff;width:25px;border-radius:20px;font-size:8px;height:30px;line-height:30px;}
  </style>
 </head>
 <body>
  <jsp:include page="/WEB-INF/views/head.jsp"></jsp:include>
	
	<div class="music-content">
		<div class="head-musiclist">
		<span>我的音乐</span>
		
		<button>搜索</button>
		<input type="text" class="search-music" placeholder="输入搜索音乐名称"/>
		</div>
		<div class="musiclist">
		<ul>
		<li>音乐名称</li>
		<li>
		<div class="music">
			<div class="music-left">
				成全
			</div>
			<div class="music-center">
				tango
			</div>
			<div class="music-right">
				<a href="user!playMusic"><!-- <img src="images/start.jpg" width="40px" height="40px" class="start-btn"> -->
				播放
				</a>
			</div>
		</div>
		</li>
		<s:iterator value="#session.musics" id="music">
		<li>
		<div class="music">
			<div class="music-left">
				<s:property value="#music.name"/>
			</div>
			<div class="music-center">
				<s:property value="#music.type"/>
			</div>
			<div class="music-right">
				<a href="post!download?type=<s:property value="#music.type"/>&musicFileFileName=<s:property value="#music.name"/>" class="start-stop"><!-- <img src="images/start.jpg" width="40px" height="40px" class="start-btn"> -->
				播放
				</a>
			</div>
		</div>
		</li>
		</s:iterator>
		
		</ul>
		</div>
	
	
	</div>
 </body>
</html>
