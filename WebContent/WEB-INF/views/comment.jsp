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
  <title>回复或评论</title>
  <style type="text/css">
	body{background:url(images/bg-register.jpg) center center no-repeat;background-size:cover;}
	#textarea {  
				height:300px;
                display: block;  
                margin: 10px auto;  
                overflow: auto;  
                width: 100%;  
                font-size: 14px;  
                 
                line-height: 20px;  
                padding: 2px; 
				text-indent:2rem;
				padding-top:2rem;
				font-size:16px;
				color:#8888ff;
            }  
              
            textarea {  
                outline: 0 none;  
                border-color: rgba(82, 168, 236, 0.8);  
                box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1), 0 0 8px rgba(82, 168, 236, 0.6);  
            } 
	.text-content{width:40%;margin:50px auto;height:450px;}
	.top-content{width:100%;height:50px;}
	.top-content span{line-height:50px;margin-left:2rem;font-weight:bold;font-size:18px;color:#07c8f8}
	.bottom-content a{text-decoration:none;display:inline-block;border:2px solid #07c8f8;border-radius:5px;width:80px;height:20px;text-align:center;float:left;}
	.bottom-content button{float:right;width:100px;height:50px;border-radius:50%;cursor:pointer;background-color:#a4ebfd}
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
	<div class="text-content">
	<form action="comment!publish" method="post">
		 <div class="top-content">
		 <span>评论帖子或回复对象：</span>
		 </div>
		 
		<textarea id="textarea" name="content"></textarea>
		
		<div class="bottom-content">
			<input type="submit" value="发送"/>
			<a href="">评论</a>
			<a href="">回复</a>
		</div>
	</form>
	</div>
		<script>  
            var text = document.getElementById("textarea");  
            autoTextarea(text); // 调用  
        </script>
 </body>
</html>
