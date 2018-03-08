<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
	#bigbox{margin:0 auto;}
	#topbox{margin-top:7%;}

input{
color:#000;
}
*{
font-family:微软雅黑;}
</style>
<title>欢迎你，伟大的管理员</title>
</head>
<body style="background-image:url(images/slide-2.jpg);">




 <%  
   Map<String,String> fileNameMap=(Map<String,String>)request.getSession().getAttribute("fileNameMap"); 
   %>
<div id="bogbox" class="container">
<div class="row" id="topbox">
	<div class="col-md-3 column"></div>
	<div class="col-md-6 column" style="font-size:35px;margin-left:35px;color:#fff;">伟大的<strong style="color:#EEC900;">管理员</strong> &nbsp;  请您批阅文件</div>
	<div class="col-md-3 column"></div>
</div>
<br/>
<br/>
<br/>

<div class="row" id="adiv">
    <c:forEach var="me" items="${fileNameMap}">
        <c:url value="/servlet/DownloadFile" var="downurl">
            <c:param name="filename" value="${me.key}"></c:param> 
        </c:url> 
        <div class="col-md-6 col-sm-offset-1" style="color:#fff;"> ${me.value}</div>   
    	<div class="col-md-1 column"><a  href="${downurl}" >下载</a></div>
    <div class="col-md-1 column">  
    <form action="${pageContext.request.contextPath}/servlet/Move" method="post" >
    <input type="hidden" name="filename" value="${me.key}">
    <input type="submit" value="通过"/>
    </form>
    </div>
    <div class="col-md-1 column"> 
    <form action="/FileUploadAndDownload/DeleteFile" method="post">
    <input type="hidden" name="filepath" value="${me.key}">
    <input type="submit" value="不通过"/>
    </form>
    </div>    
    </c:forEach>
    <div class="navbar-fixed-top">
     
        <form action="${pageContext.request.contextPath}/index.jsp" method="post">
        <input type="submit" value="网站首页" style="color:#000" class="btn btn-default btn-sm"> 	 
        </form>
       <form action="${pageContext.request.contextPath}/servlet/ListMesServlet" method="get">
        <input type="submit" value="转到留言" style="color:#000" class="btn btn-default btn-sm"> 	 
        </form>
        </div>
</div>
</div>  
</body>
</html>