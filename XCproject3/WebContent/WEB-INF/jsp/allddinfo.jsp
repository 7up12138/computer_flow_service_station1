
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>计算机流动服务站</title>
<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
body{background:#e3e3e3;height:100%;font:normal normal 12px/24px "Microsoft yahei", Arial;padding-bottom:30px;}
a{color:#333;text-decoration:none;}
a:hover{color:#093;text-decoration:none;}
#title{width:300px;margin:3% auto 0;}
#title h2{font-size:18px;}
#wrapper{width:980px;margin:0 auto;background:#f8f8f8;border:1px solid #a3a3a3;padding:20px 20px 50px;border-radius:5px;-moz-border-radius:5px;}
h3{color:#333;font-size:14px;text-align:center;margin:20px 0;}

/* box */
.box{width:1000px;margin:10px auto 0;background:#fff;border:1px solid #d3d3d3;}
.tab_menu{overflow:hidden;}
.tab_menu li{width:500px;float:left;height:30px;line-height:30px;color:#fff;background:#093;text-align:center;cursor:pointer;}
.tab_menu li.current{color:#333;background:#fff;}
.tab_menu li a{color:#fff;text-decoration:none;}
.tab_menu li.current a{color:#333;}
.tab_box{padding:20px;}
.tab_box li{height:24px;line-height:24px;overflow:hidden;}
.tab_box li span{margin:0 5px 0 0;font-size:12px;font-weight:400;color:#000;}
.tab_box .hide{display:none;}

#wo{border:1px solid red;}
#wo tr th{border:1px solid red;width: 100px;height: 30px;}
#wo tr td{border:1px solid red;width: 100px;height: 30px;}
</style>

</head>


<body style="background-image:url(/XCproject3/images/slide-2.jpg);color:white;font-family:'微软雅黑';">
		<h3 style="font-size: 40px;color:#fff;">计算机流动服务站</h3>
		<div class="box demo2">
			<ul class="tab_menu">
				<li class="current">未完成</li>
				<li>已完成</li>

			</ul>
			<div class="tab_box">
				<div>
					<table cellspacing="0" cellpadding="0" id="wo" style="color:#000;text-align:center;" >
						<tr>
					<th>订单编号</th>
					<th>问题描述</th>
					<th>姓名</th>
					<th>电话号码</th>
					<th>预约技师</th>
					<th>预约时间</th>
					<th>预约地点</th>
					<th>下单时间</th>
					<th>订单操作</th>
						</tr>
				<c:forEach items="${weiwancinfo}" var="list">
					<tr>
					<td >${list.id}
					<input type="hidden" value="${list.id }" id="updateid"/></td>
					<td>${list.qname}</td>
					<td>${list.pname}</td>
					<td>${list.phonenum}</td>
					<td >${list.yyjs}</td>
					<td>${list.yytime}</td>
					<td>${list.yyplace}</td>
					<td>${list.flag}</td>
					
					<td onclick="updateflag()"><input type="button" value="确认完成" style="border:0;background:#01bcfa;width:70px;height:36px;color:white;font-family:'微软雅黑'"></td>
					</tr>
					</c:forEach>
					</table>
				</div>

				<div class="hide">
					<table cellspacing="0" cellpadding="0" id="wo" style="color:#000;">
						<tr>
					<th>订单编号</th>
					<th>问题描述</th>
					<th>姓名</th>
					<th>电话号码</th>
					<th>预约技师</th>
					<th>预约时间</th>
					<th>预约地点</th>
					<th>下单时间</th>
					<th>订单操作</th>
						</tr>
 					<c:forEach items="${wancinfo}" var="list">
					<tr>
					<td >${list.id}
					<input type="hidden" value="${list.id }" id="ddid"/>
					</td>
					<td>${list.qname}</td>
					<td>${list.pname}</td>
					<td>${list.phonenum}</td>
					<td>${list.yyjs}</td>
					<td>${list.yytime}</td>
					<td>${list.yyplace}</td>
					<td>${list.flag}</td>
				
					<td onclick="deletedd()" style="font-size:20px;color:red;text-align:center;"><input type="button" value="删除" style="border:0;background:#01bcfa;width:70px;height:36px;color:white;font-family:'微软雅黑'"></td>
					</tr>
					</c:forEach>
					</table>
				</div>

			</div>
		</div><!--demo2 end-->

<script type="text/javascript" src="/XCproject3/js/jquery-1.4.2.min.js"></script>
<script src="/XCproject3/js/jquery.tabs.js"></script>
<script src="/XCproject3/js/jquery.lazyload.js"></script>
<script type="text/javascript">
$(function(){
	$("img[original]").lazyload({ placeholder:"images/color3.gif" });
	$('.demo1').Tabs();
	$('.demo2').Tabs({
		event:'click'
	});

	$('.demo3').Tabs({
		timeout:300
	});

	$('.demo4').Tabs({
		auto:3000
	});

	$('.demo5').Tabs({
		event:'click',
		callback:lazyloadForPart
	});

	//部分区域图片延迟加载

	function lazyloadForPart(container) {
		container.find('img').each(function () {
			var original = $(this).attr("original");
			if (original) {
				$(this).attr('src', original).removeAttr('original');
			}
		});
	}
});

</script>
<script>
function deletedd(){
	var ddid=$("#ddid").val();
	$.ajax({
	type:"post",
	url:"/XCproject3/admin/deleteid.do",
	data:"ddid="+ddid, 	
	success:function(data){
		if(data.msg!=0){
			alert("删除成功");
			window.location.reload(); 
			
		}else{
			alert("删除失败");
			}
		} 
	});
	
}

function updateflag(){
	var upid=$("#updateid").val();
	$.ajax({
	type:"post",
	url:"/XCproject3/admin/queren.do",
	data:"ddid="+upid, 	
	success:function(msg){
		if(msg!=0){	
			alert("确认成功！");
			window.location.reload();
		}else{
			alert("确认失败！");

			}
		} 
	});
	
}
</script>
<script src="http://www.jq22.com/js/jq.js"></script>
</body>

</html>
