<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>计算机流动服务站</title>
	<style>body{padding-top: 60px;}</style>

    <link href="bootstrap3/css/bootstrap.css" rel="stylesheet" />

	<link href="css/login-register.css" rel="stylesheet" />
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">

	<script src="jquery/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="bootstrap3/js/bootstrap.js" type="text/javascript"></script>
	<script src="js/login-register.js" type="text/javascript"></script>
   <script type="text/javascript" src="/tree/jquery-2.1.4.min.js"></script>
   
   <script type="text/javascript">

	
	//验证用户名
	
	
		/*var name=$("#username").val();
	if(!name){
			$("#box").text("用户名不能为空");
			$("#myform").attr("onsubmit","return false");
			return;
		}
		if(name){
			$("#usernamecheck").text(" ");
			return;
		}
}

//验证手机号
function check1(){
				var phone=$("#phonenum").val();
				if(!phone){
					$("#phonenumcheck").text("手机号不能为空");
					$("#myform").attr("onsubmit","return false");
					return;
				}
				if(phone){
					$("#phonenumcheck").text("");
					return;
				}				
				}
				
function check1two(){
*/function check(){
	var phone=$("#phonenum").val();
				if(phone.length!=11){
						$("#box").text("手机号不合法");
						$("#myform").attr("onsubmit","return false");
						return;
					}
				if(phone.substring(0,1)!=1&&phone.substring(1,2)!=3&&phone.substring(1,2)!=5&&phone.substring(1,2)!=8&&phone.substring(1,2)!=7)
					{
					$("#box").text("手机号不合法");
						$("#myform").attr("onsubmit","return false");
						return;	
					}
				if((phone.length==11)&&(phone.substring(0,1)==1||phone.substring(1,2)==3||phone.substring(1,2)==5||phone.substring(1,2)==8||phone.substring(1,2)== 7))
					{
					$("#box").text("");
					return;	
					}
				}
	//验证密码是否一致
	function check2(){
	
	var pwd=$("#passwordtwo").val();
	var pwdtwo=$("#password_confirmation").val();
	
		if(pwd!=pwdtwo){
			$("#box").text("两次密码不一致");
			$("#myform").attr("onsubmit","return false");
			return;
		}
		if(pwd==pwdtwo){
			$("#box").text("");
			return;
		}
		
		
		}
	
	//验证邮箱是否合法
	function check3(){
		var email=$("#emailtwo").val();
		  var myreg = /^([\.a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/; 
		//if(email.indexOf("@")<0&&email.indexOf(".")<0)
			if(!myreg.test(email))
		{
			
			$("#box").text("邮箱号不合法");
			$("#myform").attr("onsubmit","return false");
			return;
		}
	if(email.indexOf("@")>0&&email.indexOf(".")>0){
			
			$("#box").text("");
			return;
		}
}
	
//输入验证码
var outyzm="";
function yzmail(){
	var emailsend=$("#emailtwo").val();
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
	var emailname=$("#emailtwo").val();
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
	
	

   
    <style type="text/css">
        *{margin:0;padding: 0;}
        body{background: url();}
        #check{width: 80px;height: 30px;border:0px;border:1px solid red;float: left;color: #fff;font-family: "微软雅黑";font-weight: bold;margin-top:-93px;margin-left: 180px; background: #f36;text-align: center;line-height: 30px;}
    </style>
</head>
<body style="background:url(img/home.jpg) no-repeat;">
<!-- <span >${msg }</span>
<form action="usermodel/login.do">
用户：<input type="text" name="username" placeholder="请输入邮箱地址"/>
<a href="register.jsp">注册账号</a><br/>
密码：<input type="password" name="password" placeholder="请输入密码"/>
<a href="forget.jsp">忘记密码</a><br/>

<input type="submit" value="登录"/>
</form>
<form action="all.do">
<input type="submit" style="width:200px;height:200px;" value="查看全部"/> 
</form>
-->

    <div class="container">
        <div class="row">
            <div class="col-sm-5"></div>
            <div class="col-sm-3"><font size="7" color="#f36" style="font-weight: bold;">上帝</font></div>
            <div class="col-sm-4"></div>
        </div>

         <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6"><font size="6" color="#abcdef"><b>请选择登录或者注册你的私有账号</b></font></div>
            <div class="col-sm-3"></div>
        </div>

        <div class="row" style="margin-top: 50px;">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                 <a class="btn big-login" data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();">登录</a>
                 <a class="btn big-register" data-toggle="modal" href="javascript:void(0)" onclick="openRegisterModal();">注册</a>
            </div>
            <div class="col-sm-4"></div>
        </div>

		 <div class="modal fade login" id="loginModal">
		      <div class="modal-dialog login animated">
    		      <div class="modal-content">
    		         <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">登录</h4>
                    </div>
                    <div class="modal-body">
                        <div class="box">
                             <div class="content">
                                <div class="social">
                                    <a class="circle github" href="#">
                                        <i class="fa fa-github fa-fw"></i>
                                    </a>
                                    <a id="google_login" class="circle google" href="#">
                                        <i class="fa fa-google-plus fa-fw"></i>
                                    </a>
                                    <a id="facebook_login" class="circle facebook" href="#">
                                        <i class="fa fa-facebook fa-fw"></i>
                                    </a>
                                </div>
                                <div class="division">
                                    <div class="line l"></div>
                                      <span>or</span>
                                      
                                    <div class="line r"></div>
								 </div>
                               <span id="box"></span>
                               <input type="hidden" id="hiddenput" value="" name="emailsend"/>
                               <span id="msg"></span>
                                 <div class="form loginBox">
                                    <form  action="/XCproject3/usermodel/login.do" accept-charset="UTF-8" id="form" >
                                    
                                    <input id="email" class="form-control" type="text" placeholder="请输入邮箱" name="username" required="required">
                                    <input id="password" class="form-control" type="password" placeholder="请输入密码" name="password" required="required">
                                    <input class="btn btn-default btn-login" type="submit" value="登录">
                                    
                                    </form>
                                </div>
                             </div>
                        </div>
                        <div class="box">
                            <div class="content registerBox" style="display:none;">
                             <div class="form">
                                <form method="post" html="{:multipart=>true}" data-remote="true" action="usermodel/regist.do" accept-charset="UTF-8" id="myform">
                                <input id="username" class="form-control" type="text" placeholder="姓名" name="username" required="required">
                                <input id="phonenum" class="form-control" type="text" placeholder="手机号" name="phonenum" required="required" oninput="yzphonenum()" onblur="check()">
                                <input id="emailtwo" class="form-control" type="text" placeholder="Email" name="emailname" required="required"  oninput="yzemail(),check3()">
                                <input id="passwordtwo" class="form-control" type="password" placeholder="Password" name="password" required="required" >
                                <input id="password_confirmation" class="form-control" type="password" placeholder="Repeat Password" name="passwordto" required="required" onblur="check2()">
                                <input id="yzm" class="form-control" type="text"  onchange="yzyzm()" placeholder="验证码" name="yzm" required="required" onchange="yzyzm()">

                                <input class="btn btn-default btn-register" type="submit" value="Create account" name="commit">
                                </form>
                               
                                    <input type="button" name="check" id="check" value="获取验证码"  onclick="yzmail()">
                              
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="forgot login-footer">
                            <span>Looking to
                                 <a href="javascript: showRegisterForm();">create an account</a>
                            ?</span>
                        </div>
                        <div class="forgot register-footer" style="display:none">
                             <span>已有账号?</span>
                             <a href="javascript: showLoginForm();">登录</a>
                        </div>
                    </div>
    		      </div>
		      </div>
		  </div>
    </div>
<input type="hidden" id="hiddenput" value="" name="emailsend"/>
<span id="msg">${msg}</span>

</body>
</html>