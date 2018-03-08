<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改权限</title>
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
margin-top:6%;
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
<table  cellspacing="7" cellpadding="7">
<tr><td>
<form action="/FileUploadAndDownload/UpdateAdminJsdServlet" method="post">
<%request.setCharacterEncoding("UTF-8");%>
<%response.setCharacterEncoding("UTF-8");%>
<input type="hidden" name="adminuname" value=<%=request.getParameter("adminuname") %>>
管理员账号：<input type="text" name="username" readonly="readonly" value=<%=request.getParameter("jsd")%>><br/><br/>
当前权限为：<input type="text" name="jsd" id="jsd" readonly="readonly" value=<%=request.getParameter("jsd2")%>><br/><br/>
修改权限为：<select name="newjsd">
<option>超级管理员</option>
<option>普通管理员</option>
</select>
<br/><br/></td></tr>
<tr>
<td style="text-align:center;">
<input type="submit" value="提交"/>


</td></tr>
</form>
</table>
</center>

</body>
</html>