<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.ArrayList" %>
     <%@ page import="com.stx.xc.Admin.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
input{
color:#000;
} 
</style>
<title>管理</title>
<script type="text/javascript">
function dele(){
var msg = "您真的确定要删除吗？";
if (confirm(msg)==true){
return true;
}else{
return false;
}}

</script>
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


</style>
</head>
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
 <%  
   ArrayList list=(ArrayList)request.getSession().getAttribute("list"); 
   %>
     <center>
   <table cellspacing="7" cellpadding="7">
  <tr>
  <td style="text-align:center">管理员账号</td>
  <td style="text-align:center">管理员密码</td>
  <td style="text-align:center">管理员权限</td>
  <td style="text-align:center">操作</td>

  </tr>
   <% for(int i=0;i<list.size();i++){
	   AdminModel am=(AdminModel)list.get(i);
	   %>

   <tr >
   <td style="text-align:center">
 
   <%=am.getUseranme() %>
   </td>
   <td style="text-align:center">

   <%=am.getPassword() %>
   </td>
   <td style="text-align:center">

   <%=am.getFlag() %>
   </td>
 
   <td style="text-align:center">
  <%CheckLogin cl=new CheckLogin();
String uname=cl.checkuanme();%>
<form action="/FileUploadAndDownload/DeletecomAdminServlet" method="post">
<input type="hidden"  name="username" value="<%=am.getAdminid() %>"/>
<input type="submit" value="删除管理" onclick="javascript:return dele();"/>
</form>
<form action="/FileUploadAndDownload/Admin/Updatepwd.jsp" method="post" >
<input type="hidden"	name="adminname" value<%=uname %>>
<input type="hidden"  name="pwd" value="<%=am.getUseranme() %>"/>
<input type="submit" value="修改密码" />
</form>
	</td>   
   </tr>
   <% } %>
   <tr>
   <td colspan="4" style="text-align:center;" style="text-align:center">
	<h3><a href="/FileUploadAndDownload/Admin/newcomadmin.jsp">设置新的管理员</a></h3>
   </td>
   </tr>
   </table></center>
</body>
</html>