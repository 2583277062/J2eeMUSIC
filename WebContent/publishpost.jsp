<%@page import="domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>publish</title>
</head>
<body>
   <s:form action="post!publish" method="post" enctype="multipart/form-data">
      <s:label value="Upload your file"/><br/>
      <s:label value="title"/><s:textfield name="title"/><br/>
      <s:label value="content"/><s:textfield name="content"/><br/>
      <s:file name="musicFile" /><br/>
      <s:submit type="submit" value="发布"/>
   </s:form><br/>
</body>
</html>