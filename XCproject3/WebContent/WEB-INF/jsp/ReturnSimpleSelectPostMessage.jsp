<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>留言界面</title>
</head>
<body>
<div>
	<div>标题：${title.topic_title}</div>
	<div>内容：${title.post_content}</div>
</div>

<p/><p/>
<p/><p/>
<div>
	<c:forEach var="simple"  items="${Simple}" >	
	<div>
		
		<c:if test="${username==simple.reply_user_id}">
		<a href="/XCproject3/replydelete.do?topic_id=${title.topic_id}&title=${title.topic_title}&content=${title.post_content}&replyid=${simple.reply_id}"  style="color:red;">删除回复</a>
		</c:if>
		<div>用户账号：${simple.reply_user_id}</div>		
		<div>回复内容：${simple.reply_content}</div>
		<div>回复时间：${simple.reply_time}</div>
		<p/>
	</div>
	</c:forEach>
	
</div>
<p/><p/>
<p/><p/>
<div>
	<form action="/XCproject3/replysimple.do" method="post">
		<input type="hidden" readonly="readonly" name="topic_id" value='${title.topic_id}'>
		<input type="hidden" readonly="readonly" name="title" value='${title.topic_title}'>
		<input type="hidden" readonly="readonly" name="content" value='${title.post_content}'>
		<input type="hidden" name="replyuserid" readonly="readonly" value='${username}'>
		<p>回复内容</p>
		<textarea rows="10" cols="60" name="replymsg"></textarea><p/>
		<input type="submit" value="确定提交">
	</form>
</div>
</body>
</html>