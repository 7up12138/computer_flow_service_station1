<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新的管理员</title>
</head>
<style>
*{
font-family:微软雅黑;}
a:link{
 color:#fff;
text-decoration:none;
}
a{
color:#fff;
}
table{
margin-top:5%;
}

input{
color:#000;
}


</style>
<body style="background-image:url(images/slide-2.jpg);color:white;">
  <div class="navbar-fixed-top">
     
        <form action="${pageContext.request.contextPath}/index.jsp" method="post">
        <input type="submit" value="网站首页" style="color:#000" class="btn btn-default btn-sm"> 	 
        </form>
         <form action="${pageContext.request.contextPath}/servlet/CheckFile" method="post">
        <input type="submit" value="审核文件" style="color:#000" class="btn btn-default btn-sm"> 	 
        </form>
       <form action="${pageContext.request.contextPath}/servlet/ListMesServlet" method="get">
        <input type="submit" value="审核留言" style="color:#000" class="btn btn-default btn-sm"> 	 
        </form>
        </div>
<center>
<table cellspacing="7" cellpadding="7" >
<tr><td>
<form  action="/FileUploadAndDownload/NewComAdminServlet" method="post">
设置管理：<input type="text" name="username" placeholder="设置新管理员用户" required="required"/><br/><br/>
设置密码：<input type="password" name="password" placeholder="设置新管理密码" required="required"><br/><br/>
确认密码：<input type="password" name="password2" placeholder="确认密码" required="required"/><br/><br/>
设置权限：<select name="newjsd">
<option>普通管理员</option>
</select></td></tr><br/><br/>
<tr><td style="text-align:center">
<input type="submit" value="提交"/>
<input type="reset" value="重置"/>
</td></tr>
</form>
</table>
</center>
</body>
</html>