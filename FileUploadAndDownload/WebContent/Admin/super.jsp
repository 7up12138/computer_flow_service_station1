<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎你，超級管理员</title>

	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
<style type="text/css">
input{
color:#000;
}
</style>

</head>
<body style="background-image:url(images/slide-2.jpg);color:white;">


<section id="home">
	<div class="container">
		<div class="row">

			<div class="col-md-offset-2 col-md-8 col-sm-12">
				<div class="home-thumb">
					<h1 class="wow fadeInUp" >欢迎您 超级<strong style="color:#EEC900">管理员</strong></h1>
          			<h3 class="wow fadeInUp" > Welcome  Super <strong style="color:#EEC900">Administrator</strong></h3>
          		 	<a href="${pageContext.request.contextPath}/servlet/CheckFile" class="btn btn-lg btn-success smoothScroll wow fadeInUp" style="color:white;font-size:30px;font-family:等线;">查看文件</a>
        			<a href="${pageContext.request.contextPath}/servlet/ListMesServlet"  class="btn btn-lg btn-success smoothScroll wow fadeInUp" style="color:white;font-size:30px;font-family:等线;">查看留言</a><br/>
					<a href="${pageContext.request.contextPath}/ListcomAdminServlet"  class="btn btn-lg btn-success smoothScroll wow fadeInUp" style="color:white;font-size:30px;font-family:等线;">查看各级管理员</a>
					<a href="${pageContext.request.contextPath}/ListMailServlet"  class="btn btn-lg btn-success smoothScroll wow fadeInUp" style="color:white;font-size:30px;font-family:等线;">查看邮件信息</a>
				</div>																																																																																																																																																																																																																		
			</div>

		</div>
	</div>		
</section>

</body>
</html>