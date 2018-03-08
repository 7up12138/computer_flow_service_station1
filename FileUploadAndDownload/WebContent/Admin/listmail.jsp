<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.ArrayList" %>
     <%@ page import="com.stx.xc.Dao.*" %>
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
<title>查看邮件信息</title>
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
  <td style="text-align:center">问题描述</td>
  <td style="text-align:center">姓名</td>
  <td style="text-align:center">电话号码</td>
  <td style="text-align:center">QQ</td>
<td style="text-align:center">预约技师</td>
<td style="text-align:center">预约时间</td>
<td style="text-align:center">预约地点</td>
  </tr>
   <% for(int i=0;i<list.size();i++){
	   InfoModel info=(InfoModel)list.get(i);
	   %>

   <tr >
   <td style="text-align:center">
 
   <%=info.getQname() %>
   </td>
   <td style="text-align:center">

   <%=info.getPname() %>
   </td>
   <td style="text-align:center">

   <%=info.getPhonenum() %>
   </td>
 
   <td style="text-align:center">
<%=info.getQqnum() %>
	</td>   
	<td style="text-align:center">
   <%=info.getJs() %>
   </td>
   <td  style="text-align:center">
   <%=info.getTime() %>
   </td>
   <td style="text-align:center">
   <%=info.getPlace() %>
   </td>
   </tr>
   <% } %>
   </table>
   </center>
</body>
</html>