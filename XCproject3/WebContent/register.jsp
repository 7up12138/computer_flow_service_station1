<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="/XCproject3/js/jquery-2.1.4.min.js"></script>
<title>注册</title>
</head>
<body>
<form action="usermodel/regist.do" id="myform" onsubmit="return false">
姓名：<input type="text" id="username" name="username" placeholder="请填写真实姓名"/>
<span id="usernamecheck"></span><br/>
手机：<input type="text" id="phonenum" name="phonenum" oninput="yzphonenum()" placeholder="请输入手机号"/>
<span id="phonenumcheck"></span><br/>
邮箱：<input type="text" id="emailname" name="emailname" oninput="yzemail()" placeholder="请输入邮箱地址"/>
<span id="emalinamecheck"></span><br/>
密码：<input type="password"  id="password "name="password" placeholder="请输入6-16位密码 "/>
<span id="passwordcheck"></span><br/>
确认密码：<input type="password" id="passwordto" name="passwordto" placeholder="请确认密码"/>
<span id="passwordtocheck"></span><br/>
验证码：<input type="text" id="yzm" name="yzm" onchange="yzyzm()" placeholder="请输入验证码/请注意区分大小写"/>
<span id="yzmcheck"></span>
<input type="button" value="获取验证码" onclick="yzmail()" onsubmit="return true" id="sendyzm"/><br/>
<input  type="submit" value="注册"/>
<input type="submit" value="重置"/>
</form>

<input type="hidden" id="hiddenput" value="" name="emailsend"/>

<span id="msg">${msg}</span>

</body>
<script>

//输入验证码
var outyzm="";
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
			$("#myform").attr("onsubmit","return false");
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
		$("#myform").attr("onsubmit","return true");
	}else{
		$("#msg").text("验证码错误，请注意区分大小写");	
	}		
}
//验证手机号
function yzphonenum(){
	var phonenum=$("#phonenum").val();
	$.ajax({
	type:"post",
	url:"usermodel/yzphonenum.do",
	data:"phonenum="+phonenum, 	
	success:function(msg){
		if(msg==0){
			
			$("#msg").text("此手机号已经注册");
			$("#sendyzm").attr("onsubmit","return false");
		}else{
			$("#msg").text(" ");
			flag=0;
			}
		} 
	});
	
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
			$("#msg").text("此邮箱已经注册");
			$("#sendyzm").attr("onsubmit","return false");
		}else{
			$("#msg").text(" ");
			
			}
		} 
	});	
}

</script>
</html>