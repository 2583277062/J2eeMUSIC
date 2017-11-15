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
  <title>个人信息</title>
 </head>
 <body>
  <style type="text/css">
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

/* 中间部分样式 */
.middle-content{width:70%;height:1000px;margin:20px auto}
.left-information{width:320px;height:100%;background:#d2e8f4;float:left;text-align:center;}
.left-information img{margin-top:25px;border-radius:50%;box-shadow:0 0 20px #fff;}
.left-information span{font-size:20px;font-weight:bold;color:#a4a4a4;line-height:40px;}
.left-information button{width:100px;font-size:16px;border:2px solid #9a9a9a;border-radius:10px; color:#ffffff;background:#727272;cursor:pointer;}
.person-information ul li{list-style:none;font-size:18px;color:#636363;line-height:40px;}
.right-information{text-align:center;width:600px;height:100%;float:right;background:url(images/datatime.png);background-size:600px 100%;}
.right-information span{font-size:20px;font-weight:bold;color:#a4a4a4;line-height:40px;}

#head-comment{
border-radius:10px;
margin-top:40px;
width:90%;
height:30px;
text-indent:1rem;
outline: 0 none;  
border-color: rgba(82, 168, 236, 0.8);  
box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1), 0 0 8px rgba(82, 168, 236, 0.6); 
}
#textarea {  
				text-indent:1rem;
                display: block;  
                margin: 40px auto;  
                overflow: auto;  
                width: 90%;  
                font-size: 14px;  
                 height:300px;
                line-height: 20px;  
                padding: 2px;
				border-radius:10px;
				padding-top:1rem
            }  
              
            textarea {  
                outline: 0 none;  
                border-color: rgba(82, 168, 236, 0.8);  
                box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1), 0 0 8px rgba(82, 168, 236, 0.6);  
            } 

/* 中间部分样式完毕 */
  </style>
 </body>
 	<jsp:include page="/WEB-INF/views/head.jsp"></jsp:include>
	<div class="middle-content">
		<div class="left-information">
			<div>
			<img src="images/xi.png" width="130px" height="130px"/>
			</div>
				<span><s:property value="#session.user.name"/></span>
			<div>
				<button>粉丝:<p>200</p></button>
				<button>关注:<p>300</p></button>
			</div>
			
			<form action="user!update" method="post" class="person-information">
			<ul>
				<li>签名：<s:textfield name="sign" value="%{#session.user.sign}"/></li>
				<li>性别：
				<s:if test="#session.user.sex==true">男</s:if>
				<s:else>女</s:else>
				</li>
				<li>生日：<s:property value="#session.user.birthday"/></li>
				<li>所在地：<s:property value="#session.user.location"/></li>
				<li>邮箱：<s:property value="#session.user.email"/></li>
				<li><input type="submit" value="修改"/></li>
			</ul>
			</form>
			
			<s:form action="post!publish" method="post" enctype="multipart/form-data">
				<s:textfield type="text" name="title" id="head-comment" placeholder="用请输入发帖标题"/>
				<s:textarea name="content" id="textarea"/>
				<s:submit type="submit" value="发布帖子"/>
				<s:file name="musicFile" label="添加音乐"/>
			</s:form>
		</div>
		<div class="right-information"> 
			<span>收藏信息</span>
			<div class="hot-info-top">
				<s:iterator value="#session.posts" id="post">
    				<s:a href="post!read?id=%{#post.id}"><s:property value="#post.title"/></s:a>    <s:property value="#post.content.substring(0,10)"/>    <s:a href="collection!delete?postId=%{#post.id}">删除</s:a><br/>
    			</s:iterator>
			</div>
		</div>
	</div>
</html>
