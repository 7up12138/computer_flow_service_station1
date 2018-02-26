
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="/XCproject3/js/jquery-2.1.4.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>个人安全中心</title>
<style>
</style>
</head>
<body  style="background-image:url(images/slide-2.jpg);color:white;font-family:'微软雅黑';">
<center>
<section id="home">
	<div class="container">
		<div class="row" style="margin-top:100px;">
			<div class="col-md-offset-2 col-md-8 col-sm-2">
				<div class="home-thumb">
					<h1 class="wow fadeInUp" style="font-size: 36px;">欢迎您 迷了路的<strong style="color:#EEC900">上帝</strong></h1>
          			<h3 class="wow fadeInUp" style="font-size: 30px;"> Welcome  lost <strong style="color:#EEC900">User</strong></h3>
          		 	<h4 style="font-size: 28px;">请您填入信息</h4>
          		 	<table>
          		 		<form action="usermodel/updateuser.do">
          		 	
						
						<tr>
          		 			<td>用户邮箱：</td>
          		 			<td><input type="text" name="emailname" id="emailname" placeholder="请输入邮箱" oninput="yzemail()" style="width: 200px;height:20px;"/></td>
          		 		<td></td>
          		 		</tr>
          		 		<tr>
          		 			<td style="letter-spacing: 5px;">新密码：</td>
          		 			<td><input type="password" name="password" id="password" placeholder="请输入新密码" style="width: 200px;height:20px;"/></td>
          		 		<td></td>
          		 		</tr>
						
						<tr>
          		 			<td>确认密码：</td>
          		 			<td><input type="password"  name="passwordto" id="passwordto" placeholder="确认密码" style="width: 200px;height:20px;"/></td>
          		 		<td></td>
          		 		</tr>
							
						<tr>
          		 			<td style="letter-spacing: 5px;">验证码：</td>
          		 			<td><input type="text" name="yzm" id="yzm" oninput="yzyzm()" placeholder="验证码" style="width: 200px;height:20px;"/></td>
          		 			<td><input type="button" value="获取验证码" onclick="yzmail()" style="border:0;background:#f36;width: 80px;height:25px;color: #fff;"/></td>
          		 		</tr>
          		 		<tr>	
          		 			<td colspan="3" ><center>
								<input type="submit" value="确认修改" style="border:0;background:#f36;width: 100px;height:40px;color: #fff;margin-top:10px;"/>
							</center>
							</td>
						</tr>
						</form>
					</table>
<span id="msg"></span>
				</div>																																									
			</div>

		</div>
	</div>		
</section>
</center>
</body>


<script >
var outyzm="";
//发送验证码

function yzmail(){
	var emailsend=$("#emailname").val();
	$.ajax({
	type:"post",
	url:"usermodel/sendyzm.do",
	data:"emailsend="+emailsend, 	
	success:function(msg){
		if(msg!=0){
			outyzm=msg;	
			$("#msg").text("验证码已发送至您的邮箱");
			$("#sendyzm").attr("onsubmit","return false");
		}else{
			$("#msg").text(" ");

			}
		} 
	});	
}

//验证验证码是否正确
function yzyzm(){
	var inyzm=$("#yzm").val();
	if(outyzm==inyzm){
		$("#msg").text(" ");
	}else{
		$("#msg").text("验证码错误，请注意区分大小写");	
	}		
}

//验证邮箱
function yzemail(){
	var emailname=$("#emailname").val();
	$.ajax({
	type:"post",
	url:"usermodel/yzemail.do",
	data:"emailname="+emailname, 	
	success:function(msg){
		if(msg==0){
			$("#msg").text("");			
		}else{
			$("#msg").text("此邮箱不存在");
			$("#sendyzm").attr("onsubmit","return false");
			}
		} 
	});	
}

</script>
</html>