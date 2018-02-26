<%@ page import="com.stx.xc.model.Message" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.stx.xc.Dao.DBUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
*{
font-family:微软雅黑;}
	*{color:#fff;}
	#sp{display:inline-block;margin-left:25px;}

input{
color:#000;
}

</style>
<title>欢迎你，伟大的管理员</title>
</head>
<body style="background-image:url(images/slide-2.jpg);">
<!--  
<%  
   String name=(String)request.getSession().getAttribute("last"); 
   %>
<%=name %>
-->

<div class="container">
	<div class="row">
		<div class="col-md-3 column"></div>
		<div class="col-md-6 column" style="font-size:35px;margin-left:5%;margin-top:5%;margin-bottom:2%;">伟大的<strong style="color:#EEC900; ">管理员</strong> &nbsp;  请您批阅奏折</div>
		<div class="col-md-3 column"></div>
	</div>
<div>
     <%
            DBUtil db = new DBUtil();
     		String i=db.banduannull();
     		if(i.equals("0")){%>    		
 <div class="col-md-20 column" style="font-size:20px;text-align:center;">   	  </div>  	
     <% 
     		}else{
          List<Message> messages = db.getAllUNMessage();
            for (Message msg : messages) {
        %>
<!-- <div class="container" style="margin-left:30%;"> -->
        <div class="col-md-4 col-md-offset-3">
         <%=msg.getSendTime()%> 
         	
        <span id="sp"><%=msg.getContent()%> </span>
	       </div>  
		  		<div class="col-md-1 column">
		        <form action="${pageContext.request.contextPath}/servlet/CheckMesServlet" method="post">
		        <input type="hidden"   name="id" value="<%=msg.getId() %>"/>
		        <input type="submit" value="通过" style="color:#000;"/>
		        </form>
		        </div>
	        
		        <div class="col-md-1 column">
		        <form action="${pageContext.request.contextPath}/DeleteMesServlet" method="post">
		        <input type="hidden"   name="id" value="<%=msg.getId() %>"/>
		        <input type="submit" value="不通过" style="color:#000;" />
		        </form>
		        </div>
		   

        <%
            }
            }
        %> 
     	
        <div class="navbar-fixed-top">
        <form action="${pageContext.request.contextPath}/index.jsp" method="post">
        <input type="submit" value="网站首页" style="color:#000" class="btn btn-default btn-sm"> 	 
        </form>
        <form action="${pageContext.request.contextPath}/servlet/CheckFile" method="post">
        <input type="submit" value="审核文件" style="color:#000" class="btn btn-default btn-sm"> 	 
        </form>
        </div>
		
</body>
</html>