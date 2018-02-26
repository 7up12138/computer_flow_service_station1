<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>计算机流动服务站</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="/XCproject3/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="/XCproject3/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="/XCproject3/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
	

    <link href="bootstrap3/css/bootstrap.css" rel="stylesheet" />

	<link href="css/login-register.css" rel="stylesheet" />
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">

	<script src="jquery/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="bootstrap3/js/bootstrap.js" type="text/javascript"></script>
	<script src="js/login-register.js" type="text/javascript"></script>
   <script type="text/javascript" src="/tree/jquery-2.1.4.min.js"></script>

<style>
	*{font-family:"微软雅黑";padding: 0;margin: 0;}
</style>


</head>
<body>
<div class="banner-w3layouts" id="home">
		<!--Top-Bar-->
	<div class="header">
		
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<h1><a  href="index.jsp">计算机流动服务站</a></h1>
					</div>
				
				
					
				
							
		
	
		<!--Slider-->
			<div class="w3l_banner_info" id="q" style="">
				<div class="col-md-1"></div>
				<div class="col-md-7 slider">
					<div class="callbacks_container">
								<ul class="rslides" id="slider3" style="margin-top:30px;">
									<li>
										<div class="slider_banner_info">
											 <h4 style="font-family: '微软雅黑';">移通学院<br/>优秀志愿项目</h4>
											<p>2015-2016年度</p>
										</div>

									</li>
									<li>
										<div class="slider_banner_info">
											<h4 style="font-family: '微软雅黑';">依托专业特色<br/>服务社会</h4>
											<p>移通学院计算机科学系</p>
										</div>

									</li>
									<li>
										<div class="slider_banner_info">
											<h4 style="font-family: '微软雅黑';">成立于2011年<br/>今年六岁了</h4>
											<p>一路走来，风雨兼程</p>
										</div>

									</li>
									<li>
										<div class="slider_banner_info">
											<h4 style="font-family: '微软雅黑';">合川高校唯一的计<br/>算机维护公益组织</h4>
											<p>计算机软硬件专业维护组织</p>
										</div>

									</li>
								</ul>
					</div>
				</div>
				<div class="col-md-4 banner-form-agileinfo">
					
					     <div class="container">
    
        <div class="row" style="">
            <div class="col-sm-3"></div>
            <div class="col-sm-7">
                 <a class="btn big-login" data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();">登录</a>
				<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                 <a class="btn big-register" data-toggle="modal" href="javascript:void(0)" onclick="openRegisterModal();">注册</a>
            </div>
            <div class="col-sm-2"></div>
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
                        	<span><a href="forget.jsp"> 忘记密码</a></span><br/>
                            <span>没有账号？
                                 <a href="javascript: showRegisterForm();">注册</a>
                            </span>
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
		</div>
			<!--//Slider-->
			<div class="clearfix">
						</div>
		
<!--//banner-->



<!--
	<div class="copy">
		<p>© 2017  计算机科学系Toxic技术团| <a href="/XCproject3/admin.jsp" style="linked:none;color:white;">双体系</a>卓越人才教育基地 </p>
	</div>
-->
	</div>
	

<div id="ft" style="width: 100%;height: 60px;background: rgba(0,0,0,0.2);padding: 20px;position: absolute;left: 0px;top:585px;text-align: center;color: #fff;">
	<div>© 2017  计算机科学系Toxic技术团| <a href="/XCproject3/admin.jsp" style="color:white;">双体系</a>卓越人才教育基地 </p>	
</div>
<!-- js -->
<script type="text/javascript" src="/XCproject3/js/jquery-2.1.4.min.js"></script>
<!-- jarallax-js -->
			<script src="/XCproject3/js/jarallax.js"></script>
			<script src="/XCproject3/js/SmoothScroll.min.js"></script>
			<script type="text/javascript">
				/* init Jarallax */
				$('.jarallax').jarallax({
					speed: 0.5,
					imgWidth: 1366,
					imgHeight: 768
				})
			</script>
<!-- //jarallax-js -->
					<!--banner Slider starts Here-->
						<script src="/XCproject3/js/responsiveslides.min.js"></script>
							<script>
								// You can also use "$(window).load(function() {"
								$(function () {
								  // Slideshow 4
								  $("#slider3").responsiveSlides({
									auto: true,
									pager:true,
									nav:false,
									speed: 500,
									namespace: "callbacks",
									before: function () {
									  $('.events').append("<li>before event fired.</li>");
									},
									after: function () {
									  $('.events').append("<li>after event fired.</li>");
									}
								  });
							
								});
							 </script>

							<!--banner Slider starts Here-->


<!--light-box-files -->
<script src="js/modernizr.custom.js"></script>
<script src="js/jquery.chocolat.js"></script>
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen">
<!--//light-box-files -->
		<script type="text/javascript">
		$(function() {
			$('.gallery a').Chocolat();
		});
		</script>
<!-- //js -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	// jQuery(document).ready(function($) {
	// 	$(".scroll").click(function(event){		
	// 		event.preventDefault();
	// 		$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
	// 	});
	// });
</script>
<!-- start-smoth-scrolling -->
<!--//footer-section-->
<!-- Starts-Number-Scroller-Animation-JavaScript -->		
<script type="text/javascript" src="js/numscroller-1.0.js"></script>
<!-- //Starts-Number-Scroller-Animation-JavaScript -->
<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->


<script type="text/javascript" src="/XCproject3/js/bootstrap-3.1.1.min.js"></script>
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
</body>
</html>