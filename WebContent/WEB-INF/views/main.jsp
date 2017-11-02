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
  <meta name="Description" content="主页面">
  <title>首页</title>
  <style type="text/css">
  *{margin:0px;}
  /* 上部分样式 */
	.top-content{width:70%;height:44px;margin:0px auto;background-color:#b2b2b2}
	a{text-decoration:none;display:block;font-size:16px;color:white}
	.top-description li{list-style:none;margin-left:20px;float:left;line-height:44px;}
	.top-description .top-search{
	width:325px;
height:36px;}
	.top-description .search-btn{
	background: url(http://static.tianyaui.com/global/bbs/web/static/images/top-nav-bg_3264908.png) no-repeat #F7F7F7 0 -342px;width:30px;height: 30px;cursor: pointer;display: block;z-index: 1;margin-top: 8px;}
	.top-description .music-btn{position:relative;border:none;background:transparent;cursor:pointer;color:#000000}
/* 上部分样式完毕 */


/* 中间左边样式 */
	li{list-style:none;}
	.middle-content{width:70%;margin:0 auto;}
	.left-content{width:20%;height:720px;;background-color:#919191;overflow:auto;float:left;}
	.left-content ul li{margin-left:20px;line-height:40px;}
	/* 中间左边样式完毕 */

/* 中间右边样式 */
	.right-content{float:right;width:80%;overflow:auto}
	.top-right-content{width:100%;height:200px;}
	.top-right-content{text-align:center;}
	.top-right-content table{margin:10px auto;padding-bottom:20px;border-bottom:2px solid red;}
	.top-right-content table a{color:#2356cd;}
	.middle-right-content{margin-top:10px;width:100%;height:450px;
	}
	.tips-div{width:100%;height:40px;}
	.tips{margin-left:30px;font-size:18px;width:80px;height:40px;line-height:40px;background-size:80px 40px;}
	.middle-right-content ul li{float:left;margin-left:20px;line-height:40px;font-size:14px;}
	.hot-info{width:98%;height:400px;margin:5px auto;border:2px solid #3333ff}
	.middle-right-content a{color:#000000}
	.hot-info-top{width:100%;height:93%;}
	.hot-info-bottom button{margin-right:10px;line-height:16px;cursor:pointer;}
	.reword-info{width:98%;height:400px;margin:5px auto;border:2px solid #3333ff}
	.reword-info-top{width:100%;height:93%;}
	.reword-info-bottom button{margin-right:10px;line-height:16px;cursor:pointer;}
	.bottom-right-content a{display:inline-block;margin-left:20px;}
	.hot-info .hot-info-top a{display:block;text-indent:50px;color:#00ffcc}
/* 中间右边样式完毕 */


 </style>
 </head>
 <body>
<!-- 上部分内容 -->
 	<div class="top-content">
		<ul class="top-description">
			<li><a href="">音乐社区</a></li>
			<li><a href="">论坛</a></li>
			<li><a href="">热搜榜</a></li>
			<li class="top-search" style="overflow:hidden">
				<div class="search-btn"></div>
			</li>
			<s:if test="#session.user!=null">
				<li><button class="music-btn">我的音乐</button></li>
				<li>欢迎：${session.user.name }</li>
				<li><a href="user!exit">退出</a></li>
			</s:if>
			<s:else>
				<li><s:a href="user!goLogin">登录</s:a></li>
				<li><s:a href="user!goRegister">注册</s:a>></li>
			</s:else>
		</ul>
	</div>
<!-- 上部分内容完毕 -->

	<div class="middle-content">
		<div class="left-content">
			<ul class="left-description">
				<li><a href="">论坛首页</a></li>
				<li><a href="">了解论坛</a></li>
				<li><a href="">拉丁音乐</a></li>
				<li><a href="">雷鬼音乐</a></li>
				<li><a href="">嘻哈/说唱音乐</a></li>

				<li><a href="">古典音乐</a></li>
				<li><a href="">器乐演奏</a></li>
				<li><a href="">成人声乐</a></li>
				<li><a href="">童生声乐</a></li>
				<li><a href="">歌剧</a></li>
				<li><a href="">流行音乐</a></li>
				<li><a href="">MV</a></li>
				<li><a href="">电视原声</a></li>
				<li><a href="">电影原声</a></li>
				<li><a href="">动漫音乐</a></li>
				<li><a href="">儿歌、胎教</a></li>
				<li><a href="">民族音乐</a></li>
				<li><a href="">电子音乐</a></li>
				<li><a href="">轻音乐</a></li>
				<li><a href="">摇滚乐</a></li>
				<li><a href="">游戏音乐</a></li>
				<li><a href="">宗教音乐</a></li>

			</ul>
		</div>
		<div class="right-content">
			<div class="top-right-content">
				<table style="width:100%">
					<caption>热门搜索歌曲列表</caption>
					<tr>
					<td>[第一名]<a href="">第一名歌曲名</a></td>
					<td>[第二名]<a href="">第二名歌曲名</a></td>
					<td>[第三名]<a href="">第三名歌曲名</a></td>
					</tr>
					<tr>
					<td>[第四名]<a href="">第四名歌曲名</a></td>
					<td>[第五名]<a href="">第五名歌曲名</a></td>
					<td>[第六名]<a href="">第流名歌曲名</a></td>
					</tr>
					<tr>
					<td>[第七名]<a href="">第七名歌曲名</a></td>
					<td>[第八名]<a href="">第八名歌曲名</a></td>
					<td>[第九名]<a href="">第九名歌曲名</a></td>
					</tr>
				</table>
			</div>
			<div class="middle-right-content">
				<div class="tips-div">
					<ul>
						<li><span class="tips">热帖榜</span></li>
						<li><a href="">常去板块：</a></li>
						<li><a href="">流行音乐</a></li>
						<li><a href="">电视原声</a></li>
					</ul>
				</div>
				<div class="hot-info">
					<div class="hot-info-top">
					<!-- 添加论坛热帖内容 -->
					<a href="">jfoweihfjweuh</a>
					</div>
					<div class="hot-info-bottom">
						
						<button>1</button>
						<button>2</button>
						<button>3</button>
						<button>4</button>
						<button>5</button>
						<button>更多>>></button>
					</div>
				
				</div>
				<div class="tips-div">
					<ul>
					<li><span class="tips">打赏榜</span></li>
					</ul>
				</div>
				<div class="reword-info">
					<div class="reword-info-top">
					<!-- 添加打赏排行贴内容 -->
					</div>
					<div class="reword-info-bottom">
						
						<button>1</button>
						<button>2</button>
						<button>3</button>
						<button>4</button>
						<button>5</button>
						<button>更多>>></button>
					</div>
				</div>
				<div class="bottom-right-content">

				<a href="">关于论坛</a>
				<a href="">广告服务</a>
				<a href="">论坛客服</a>
				<a href="">隐私和版权</a>
				<a href="">联系我们</a>

				</div>
			</div>
			
		</div>
		

	</div>

 </body>
</html>
