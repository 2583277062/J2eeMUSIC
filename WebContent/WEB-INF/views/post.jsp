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
  <style type="text/css">
/* 上部分样式 */
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
	.top-content{width:70%;height:44px;margin:0px auto;background-color:#b2b2b2}
	.top-content a{text-decoration:none;display:block;font-size:16px;}
	.top-description li{list-style:none;margin-left:20px;float:left;line-height:44px;}
	.top-description .top-search{
	width:325px;
height:36px;}
	.top-description .search-btn{
	background: url(http://static.tianyaui.com/global/bbs/web/static/images/top-nav-bg_3264908.png) no-repeat #F7F7F7 0 -342px;width:30px;height: 30px;cursor: pointer;display: block;z-index: 1;margin-top: 8px;}
	.top-description .music-btn{position:relative;border:none;background:transparent;cursor:pointer;color:#fff;}
/* 上部分样式完毕 */
/* 内容部分样式 */
	.main-content{width:70%;margin:0px auto;padding:20px;text-align:center;}
	.main-content .header span{font-size:30px;font-weight:bold;color:#817ed8;}
	.main-content p{display:inline-block;float:right;margin-top:30px;color:#78afed}
	.main-content .top-description-content a{text-decoration:none;display:block;float:left;margin-top:40px;margin-bottom:20px;margin-left:20px;font-size:14px;border:2px solid #6fffff;border-radius:10px;background:#cccccc;color:#ffffff;box-shadow:0 0 10px #000040}
	.main-content .top-description-content a:hover{color:red}
	.info-content{border:2px solid red;width:100%;margin:10px;}
	.bottom-description a{text-decoration:none;display:block;float:left;margin-top:20px;margin-bottom:20px;margin-left:20px;font-size:14px;border:2px solid #6fffff;border-radius:10px;background:#cccccc;color:#ffffff;box-shadow:0 0 10px #000040}
	.bottom-description a:hover{color:red}

	 #textarea {  
				
                display: block;  
                margin: 20px auto;  
                overflow: hidden;  
                width: 100%;  
                font-size: 14px;  
                 
                line-height: 20px;  
                padding: 2px;  
            }  
              
            textarea {  
                outline: 0 none;  
                border-color: rgba(82, 168, 236, 0.8);  
                box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1), 0 0 8px rgba(82, 168, 236, 0.6);  
            } 
	.hon-img-btn{border:none;background:transparent;}
	.bottom-description{width:100%;height:30px;}
	.comment-content{margin-top:20px;width:100%;height:150px;}
	.comment-description{width:100%;height:100px;}
	.comment-btn a{text-decoration:none;display:block;float:right;margin-top:20px;margin-bottom:20px;margin-left:20px;font-size:14px;border:2px solid #6fffff;border-radius:10px;background:#cccccc;color:#ffffff;box-shadow:0 0 10px #000040}
	.comment-btn span{padding-left:50px;}
	.comment-btn a:hover{color:red;}
	
/* 内容部分样式完毕 */
  </style>
  <script>  
            /**  
             * 文本框根据输入内容自适应高度  
             * @param                {HTMLElement}        输入框元素  
             * @param                {Number}                设置光标与输入框保持的距离(默认0)  
             * @param                {Number}                设置最大高度(可选)  
             */  
            var autoTextarea = function(elem, extra, maxHeight) {  
                extra = extra || 0;  
                var isFirefox = !!document.getBoxObjectFor || 'mozInnerScreenX' in window,  
                    isOpera = !!window.opera && !!window.opera.toString().indexOf('Opera'),  
                    addEvent = function(type, callback) {  
                        elem.addEventListener ?  
                            elem.addEventListener(type, callback, false) :  
                            elem.attachEvent('on' + type, callback);  
                    },  
                    getStyle = elem.currentStyle ? function(name) {  
                        var val = elem.currentStyle[name];  
                        if (name === 'height' && val.search(/px/i) !== 1) {  
                            var rect = elem.getBoundingClientRect();  
                            return rect.bottom - rect.top -  
                                parseFloat(getStyle('paddingTop')) -  
                                parseFloat(getStyle('paddingBottom')) + 'px';  
                        };  
                        return val;  
                    } : function(name) {  
                        return getComputedStyle(elem, null)[name];  
                    },  
                    minHeight = parseFloat(getStyle('height'));  
                elem.style.resize = 'none';  
                var change = function() {  
                    var scrollTop, height,  
                        padding = 0,  
                        style = elem.style;  
                    if (elem._length === elem.value.length) return;  
                    elem._length = elem.value.length;  
                    if (!isFirefox && !isOpera) {  
                        padding = parseInt(getStyle('paddingTop')) + parseInt(getStyle('paddingBottom'));  
                    };  
                    scrollTop = document.body.scrollTop || document.documentElement.scrollTop;  
                    elem.style.height = minHeight + 'px';  
                    if (elem.scrollHeight > minHeight) {  
                        if (maxHeight && elem.scrollHeight > maxHeight) {  
                            height = maxHeight - padding;  
                            style.overflowY = 'auto';  
                        } else {  
                            height = elem.scrollHeight - padding;  
                            style.overflowY = 'hidden';  
                        };  
                        style.height = height + extra + 'px';  
                        scrollTop += parseInt(style.height) - elem.currHeight;  
                        document.body.scrollTop = scrollTop;  
                        document.documentElement.scrollTop = scrollTop;  
                        elem.currHeight = parseInt(style.height);  
                    };  
                };  
                addEvent('propertychange', change);  
                addEvent('input', change);  
                addEvent('focus', change);  
                change();  
            };  
        </script>  
 </head>
 
 <body>
  <jsp:include page="/WEB-INF/views/head.jsp"></jsp:include>
<div class="main-content">
	<div class="header">
		<span><s:property value="#session.post.title"/></span>
		<p class="author">发帖作者：<s:property value="#session.post.user.name"/></p>
	</div>
	<div class="top-description-content">
		<a class="ver-btn" href="" >打赏</a>
		<a class="man-btn" href="" >看楼主</a>
		<a class="dow-btn" href="post!download?type=<s:property value="#session.post.type"/>&musicFileFileName=<s:property value="#session.post.musicName"/>" >资源下载</a>
		<a class="last-page" href="">上一页</a>
		<a class="next-pate" href="">下一页</a>
		<s:if test="#session.post.user.id==#session.user.id">
		<a href="post!delete">删帖</a>
		</s:if>
	</div>
	
	<div>
	<textarea id="textarea" readonly>
   		<s:property value="#session.post.content"/>
	</textarea>
	</div>
	
	<div class="bottom-description">
		<a class="rep-btn" href="">举报</a>
		<a class="sha-btn" 	href="">分享</a>
		<a class="hon-btn" href="collection!collect">收藏</a>
		<a class="res-btn" href="comment!goComment">回复</a>
	</div>
	
	<s:iterator value="#session.comments" id="comment">
	<div class="comment-content">
		<textarea class="comment-description" readonly>
			<s:property value="#comment.content"/>
		</textarea>
		<div class="comment-btn">
		<span class="author">评论者：<s:property value="#comment.user.name"/> </pan>
		<span class="time">评论时间：<s:property value="#comment.time"/> </span>
		<button class="rep-btn" onmouseover="this.style.backgroundColor='#84ffff';
		this.style.color='red'" onmouseout="this.style.backgroundColor='#cccccc';
		this.style.color='#fff'">举报</button>
		<button class="res-btn" onmouseover="this.style.backgroundColor='#84ffff';
		this.style.color='red'" onmouseout="this.style.backgroundColor='#cccccc';
		this.style.color='#fff'">回复</button>
		<button class="com-btn" onmouseover="this.style.backgroundColor='#84ffff';
		this.style.color='red'" onmouseout="this.style.backgroundColor='#cccccc';
		this.style.color='#fff'">评论</button>
		<button class="hon-btn" onmouseover="this.style.backgroundColor='#84ffff';
		this.style.color='red'" onmouseout="this.style.backgroundColor='#cccccc';
		this.style.color='#fff'">赞</button>
		<s:if test="#comment.user.id==#session.user.id">
		<a href="comment!delete?id=<s:property value="#comment.id"/>" class="rep-btn" onmouseover="this.style.backgroundColor='#84ffff';
		this.style.color='red'" onmouseout="this.style.backgroundColor='#cccccc';
		this.style.color='#fff'">删除</a>
		</s:if>
		</div>
	</div>
	</s:iterator>

</div>
		<script>  
            var text = document.getElementById("textarea");  
            autoTextarea(text); // 调用  
        </script>
 </body>
</html>
