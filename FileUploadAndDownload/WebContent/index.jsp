<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">

<style>
	*{font-family:"微软雅黑";}
	#phone1{
		color:aliceblue;
	}
</style>


</head>
<body>
<div class="banner-w3layouts" id="home">
		<!--Top-Bar-->
	<div class="header">
		<nav class="navbar navbar-default">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<h1><a  href="index.jsp">计算机流动服务站</a></h1>
					</div>
					<div class="top-nav-text">
						<div class="nav-contact-w3ls"><span id="phone1" class="glyphicon glyphicon glyphicon-phone" aria-hidden="true"></span><p style="color: aliceblue;font-weight: bolder">加群交流 <br> <span class="call">211939856</span></p></div> 
						<a class="page-scroll" href="#myModal2" data-toggle="modal" data-hover="LOGIN">本网站无需登录请尽情使用</a>
			
					</div>
				
					
					<div class="modal about-modal w3-agileits fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div> 
				<div class="modal-body login-page "><!-- login-page -->     
									<div class="login-top sign-top">
										<div class="agileits-login">
										<h5>登录</h5>
										<form action="/FileUploadAndDownload/Login" method="post">
											<input type="text" class="email" name="Username" placeholder="用户名" required=""/>
											<input type="password" class="password" name="Password" placeholder="密 码" required=""/>
											<div class="wthree-text"> 
												<ul> 
													<li>
														<label class="anim">
															<input type="checkbox" class="checkbox">
															<span> 记住密码</span> 
														</label> 
													</li>
													<!--<li> <a href="#">忘记密码?</a> </li>-->
												</ul>
												<div class="clearfix"> </div>
											</div>  
											<div class="w3ls-submit"> 
												<input type="submit" value="登录">  	
											</div>	
										</form>

										</div>  
									</div>
						</div>  
				</div> <!-- //login-page -->
			</div>
		</div>
					
					
					
					
					
					<!-- navbar-header -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li>
							<a class="hvr-underline-from-center active scroll" href="index.jsp" >首页</a></li>
							<li>
							<a  class="hvr-underline-from-center scroll"href="jieshao.jsp" >技师介绍</a>
							</li>
							<li><a href="Toxictips.jsp" class="hvr-underline-from-center scroll">Toxic Tips</a></li>
							
							<li><a href="${pageContext.request.contextPath}/servlet/ListFileServlet" class="hvr-underline-from-center scroll scroll">资源分享</a></li>
							<li><a href="liuyanqu.jsp" class="hvr-underline-from-center scroll scroll">留言区</a>
							
						</ul>
					</div>
					<div class="clearfix"> </div>	
				</nav>
	
	</div>
	
		<!--Slider-->
			<div class="w3l_banner_info" id="q">
				<div class="col-md-7 slider">
					<div class="callbacks_container">
								<ul class="rslides" id="slider3">
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
				<div class="col-md-5 banner-form-agileinfo">
					<form action="/FileUploadAndDownload/Email" method="post">
						<input type="text" class="" id="qname" name="qname" placeholder="问题描述" required=""/>
						<input type="text" class="password3" id="pname" name="pname" placeholder="姓名" required=""/>
						<input type="text" class="password1" id="phonenum" name="phonenum" placeholder="电话号码" required=""/>
						<input type="text" class="password2" id="qqnum" name="qqnum" placeholder="QQ" required=""/>
						<select class="form-control option-w3ls" name="js">
								<option>预约技师（非必选，沟通确认）</option>
								<option>徐阳</option>
								<option>刘旺</option>
								<option>刘世望</option>
								<option>刘钊</option>
								<option>王震宇</option>
							</select>
						<select class="form-control option-w3ls" name="time">
								<option >预约时间（非必选，沟通确认）</option>
								<option>周一</option>
								<option>周二</option>
								<option>周三</option>
								<option>周四</option>
								<option>周五</option>
			
							</select>
					<input type="text" class="place"  placeholder="预约地点：非必填（周五二教广场有设点）" name="place"/>
					<!--  <input type="text" class="place"  placeholder="请输入验证码" name="place"/>-->
						<input type="submit" class="hvr-shutter-in-vertical" value="确认" >  	
					</form>
				</div>
		</div>
			<!--//Slider-->
			<div class="clearfix"></div>
						</div>
		
<!--//banner-->




	<div class="copy" style="">
		<p>© 2017  计算机科学系Toxic技术团| 双体系卓越人才教育基地 </p>
	</div>
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- jarallax-js -->
			<script src="js/jarallax.js"></script>
			<script src="js/SmoothScroll.min.js"></script>
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
						<script src="js/responsiveslides.min.js"></script>
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


<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
</body>
</html>