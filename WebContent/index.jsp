<!--<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>主页面</title>
		<link rel="stylesheet" href="css/zhuyemian.css" />
		
		<script type="text/javascript">
			$(document).ready(function() {
				window.location.href = "zhujiemian.jsp";
			});
		</script>
	</head>

	<body>
		<div class="top">
			<div class="shouye" onclick="shouyeClick()">
				<span>论坛首页</span>

			</div>
			<span>欢迎来到xx音乐</span>
			<div class="denglu" onclick="dengluClick()">
				<span>请登录</span>

			</div>
			<div class="mianfeizhuce" onclick="zhuceClick()">
				<span>免费注册</span>

			</div>
			<div class="wodeyinyue" onclick="wodeyinyueClick()">
				<span>我的音乐</span>

			</div>
		</div>

		<!--<audio controls="controls">
				<source src="../music/chengquan.mp3" type="audio/mpeg" >
					
			</audio>-->
		<div class="searchDiv">

			<input type="text" name="keywords" class="search" value="音乐名称" />
			<button type="submit" class="searchBtn">搜索</button>
		</div>
		<div class="yinyuefenlei">
			<table>
				<tr>
					<th class="yinyuefenlei" onclick="yinyuefenleiClick()">音乐分类</th>
					<th class="yinyueshangcheng" onclick="yinyueshangchengClick()">音乐商城</th>
					<th class="yinyueshangcheng" onclick="zuixinfabuClick()">最新发布</th>
					<th class="yinyuexinwen">音乐新闻</th>
				</tr>
				<tr>
					<td class="ladingyinyue" onclick="hechengyueClick()">拉丁音乐</td>
				</tr>
				<tr>
					<td class="leiguiyinyue" onclick="leiguiyinyueClick()">雷鬼音乐</td>
				</tr>
				<tr>
					<td class="shuochangyinyue" onclick="shuochangyinyueClick()">嘻哈/说唱音乐</td>
				</tr>
				<tr>
					<td class="qiyueyanzou" onclick="qiyueyanzouClick()">器乐演奏</td>
				</tr>
				<tr>
					<td class="chengrenshengyue" onclick="chengrenshengyueClick()">成人声乐</td>
				</tr>
				<tr>
					<td class="tongshengyinyue" onclick="tongshengyinyue">童声音乐</td>
				</tr>
				<tr>
					<td class="geju" onclick="geju">歌剧</td>
				</tr>
				<tr>
					<td class="liuxingyinyue" onclick="liuxingyinyue">流行音乐</td>
				</tr>

			</table>

		</div>
		<div class="bottomDiv">
			<span>热搜音乐列表</span>
			<a class="getmore" href="">获取更多</a>
		</div>
		<div class="lading">
			<table>
				<tr>
					<td class="Samba" onclick="SmabaClick()">桑巴（Samba）</td>
					<td class="Rumba" onclick="RumbaClick()">伦巴(Rumba)</td>
					<td class="Salsa" onclick="SalsaClick()">萨尔萨(Salsa</td>
					<td class="ChaCha" onclick="ChaChaClick()">恰恰(Cha Cha)</td>
				</tr>
				<tr>
					<td class="Tango" onclick="TangoClick()">探戈（Tango）</td>
				</tr>
			</table>
		</div>
		<div class="leigui">
			<table>
				<tr>
					
					<td class="Mento" onclick="MentoClick()">Mento</td>
					<td class="Ska" onclick="MentoClick()">Ska</td>
					<td class="Rocksteady" onclick="RocksteadyClick()">Rocksteady</td>
					<td class="Reggae" onclick="ReggaeClick()">Reggae</td>
				</tr>
			</table>
		</div>
		<div class="xiha">
			<table>
				<tr>
					<td class="Abstract" onclick="AbstractClick()">抽象嘻哈</td>
					<td class="Acid" onclick="AcidClick()">酸性嘻哈</td>
					<td class="Alternative" onclick="AlternativeClick()">另类嘻哈</td>
					<td class="Christian" onclick="ChristianClick()">圣赞嘻哈</td>
				</tr>
				<tr>
					<td class="Comedy" onclick="ComedyClick()">喜剧嘻哈</td>
					<td class="Conscious" onclick="ConsciousClick()">良知嘻哈</td>
					<td class="Experimental" onclick="ExperimentalClick()">实验嘻哈</td>
					<td class="Freestyle" onclick="FreestyleClick()">即兴说唱</td>
				</tr>
				<tr>
					<td class="G-Funk" onclick="G-FunkClick()">帮匪放克</td>
					<td class="Gangsta" onclick="GangstaClick()">帮匪说唱</td>
					<td class="Hardcore" onclick="HardcoreClick()">硬核嘻哈</td>
				</tr>
			</table>
		</div>
		<div class="qiyue">
			<table>
				<tr>
				<td class="chuizou" onclick="chuizouClick()">吹奏乐器</td>
				<td class="tanbo" onclick="tanboClick()">弹拨乐器</td>
				<td class="daji" onclick="dajiClick()">打击乐器</td>
				
				</tr>
			</table>
		
		</div>
	</body>

</html>