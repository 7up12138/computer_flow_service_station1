<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>贴吧界面</title>
</head>
<body>
<div>
	<c:forEach var="post"  items="${postcontent}" >	
	<div>
		<p/>
		<br/>
		<a href="simpselect.do?topic_id=${post.topic_id}&title=${post.topic_title}&content=${post.post_content}">标题：${post.topic_title}</a>
		<div>内容：${post.post_content}</div>
		<div>主题作者：${post.topic_user_id}</div>
		<div>发布时间：${post.topic_time}</div>
		
	</div>
	</c:forEach>
</div>
<p/>
<div>
	<form action="/XCproject3/TBModel/inserttopicpost.do" >
		<input type="hidden" name="topic_user_id" value="${username}"><br/>
		<span>帖子标题</span><br/>
		<input type="text" name="topic_title"><br/>
		<span>帖子内容</span><br/>
		<textarea name="post_content"></textarea><br/>
		<input type="submit" value="提交帖子">
	</form>
</div>
</body>
</html>