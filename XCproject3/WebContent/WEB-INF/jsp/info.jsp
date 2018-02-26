
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/down.css">
<style>
	a{text-decoration:none;}
	body{background:url(images/slide-2.jpg) no-repeat;}
	#tab{margin:0 auto;text-align: center;}
	#tab tr td{width: 130px;height: 30px;border: 1px solid red;line-height: 30px;}
</style>
</head>
<body style="font-family:'微软雅黑';color:white;">
	<div style="width: 100vw; height: 100vh; position: absolute;mix-blend-mode: screen; z-index:-10; cursor: pointer;"></div>
  <div class="falling-leaves"  style="z-index:-11;"></div>
  <br/><br/><br/><br/>
<table cellspacing="0" cellpadding="0" id="tab">
<caption><h1>技师的基本信息</h1></caption>
    <tr>
        <td>技师编号</td>
        <td>技师姓名</td>
        <td>技师年级</td>
        <td>技师专业</td>
        <td>技师简介</td>
        <td>电子邮箱</td>
     
        <td colspan="2"><a href="insert.do"><b>添加</b></a></td>
    </tr>
  <c:forEach var="qq" items="${list}">
     <tr>
        <td>${qq.js_id}</td>
        <td>${qq.js_name}</td>
        <td>${qq.js_nj}</td>
        <td>${qq.js_zy}</td>
        <td>${qq.js_jj}</td>
        <td>${qq.js_emil}</td>
        <td  style="width:50px;"><a href="update1.do?id=${qq.js_id}&name=${qq.js_name}&nj=${qq.js_nj}&zy=${qq.js_zy}&jj=${qq.js_jj}&emil=${qq.js_emil}&tp=${qq.js_tp}"><b>修改</b></a></td>
        <td style="width:50px;"><a href="delete.do?username=${qq.js_id}" ><b>删除</b></a></td>
     </tr>   
  </c:forEach> 
 </table>
    <script src="js/index.js"></script>
</body>
</html>