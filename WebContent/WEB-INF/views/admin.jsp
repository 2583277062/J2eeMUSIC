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
  <title>Document</title>
  
  <style class="text/css">
  *{margin:0px;}
  .top-content{width:70%;height:44px;margin:0 auto;background:#9b9b9b;text-align:center;}
  .top-content span{color:#ffffff;font-size:20px;font-weight:bold;}
  .main-content{width:70%;height:600px;margin:20px auto;}
  .left-content{width:30%;float:left;height:100%;z-index:100;text-align:center;background:#9b9b9b;}
  .left-content span{font-size:30px;}
  
  .left-content a{display:block;text-decoration:none;line-height:40px;margin:10px auto;color:#fff;font-size:20px;}
  
  .right-content{background:#9b9b9b;float:right;width:60%;height:100%;}
  .right-content a{display:block;text-decoration:none;line-height:20px;color:#fff;}
	.userone{float:left;line-height:30px;}
	.deleteuser{float:right;}
  .userlist-content{width:100%;height:100%;overflow:auto;}
  .search-text{width:70%;margin-left:15%;margin-top:20px;height:30px;border-radius:10px;text-align:center;}
  .user-info{width:80%;height:30px;margin:10px auto;}
  
  </style>
 </head>
 <body>
	<div class="top-content">
		<span>管理员</span>
	</div>
	
	<div class="main-content">
		<div class="left-content">
			<span style="color:white ">管理员权限</span>
			<a href="admin!userManage">用户管理</a>
			<a href="admin!musicManage">音乐管理</a>
			<a href="admin!postManage">贴子管理</a>
			<a href="admin!exit">退出</a>
		</div>
		
		<div class="right-content">
			<s:if test="#session.userm==true">
			<form method="post" action="admin!userManage">
				<input name="str" type="text" class="search-text"><input type="submit" value="搜索"/>
			</form>
			</s:if>
			<s:elseif test="#session.musicm==true">
			<form method="post" action="admin!musicManage">
				<input name="str" type="text" class="search-text"><input type="submit" value="搜索"/>
			</form>
			</s:elseif>
			<s:elseif test="#session.postm==true">
			<form method="post" action="admin!postManage">
				<input name="str" type="text" class="search-text"><input type="submit" value="搜索"/>
			</form>
			</s:elseif>
			
			<div class="userlist-content">
			<s:if test="#session.userm==true">
				<div class="userlist">
					<span>用户列表</span>
					<s:iterator value="#session.users" id="user">
					<div class="user-info">
						<s:property value="#user.id"/>
						<a href="" class="userone"><s:property value="#user.name"/></a>
						<a href="admin!deleteUser?id=<s:property value="#user.id"/>" class="deleteuser">删除</a>
					</div>
					</s:iterator>
				</div>
			</s:if>
			<s:if test="#session.musicm==true">
				<div class="userlist">
					<span>音乐列表</span>
					<s:form action="admin!addMusic" method="post" enctype="multipart/form-data">
						<input type="file" name="musicFile" value="添加音乐"/>
						<input type="file" name="musicFile" value="添加音乐"/>
						<input type="file" name="musicFile" value="添加音乐"/>
						<input type="file" name="musicFile" value="添加音乐"/>
						<input type="submit" value="上传"/>
					</s:form>
					<s:iterator value="#session.musics" id="music">
					<div class="user-info">
						<a href="" class="userone"><s:property value="#music.name"/></a>
						<a href="admin!deleteMusic?id=<s:property value="#music.id"/>" class="deleteuser">删除</a>
					</div>
					</s:iterator>
				</div>
			</s:if>
			<s:if test="#session.postm==true">
				<div class="userlist">
					<span>帖子列表</span>
					<s:iterator value="#session.posts" id="post">
					<div class="user-info">
						<s:property value="#post.id"/>
						<a href="post!read?id=<s:property value="#post.id"/>" class="userone"><s:property value="#post.title"/></a>
						<a href="admin!deletePost?id=<s:property value="#post.id"/>" class="deleteuser">删除</a>
					</div>
					</s:iterator>
				</div>
			</s:if>
		
		<!-- <a href="">事件一</a>
		<a href="">事件一</a>
		<a href="">事件一</a>
		<a href="">事件一</a>
		<a href="">事件一</a>
		<a href="">事件一</a>
		<a href="">事件一</a>
		<a href="">事件一</a>
		<a href="">事件一</a> -->
			</div>
		
			<div class="musiclist-content">

			</div>
		</div>
	</div>
	
</body>
</html>
