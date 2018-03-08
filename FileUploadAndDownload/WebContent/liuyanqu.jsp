<%@ page import="com.stx.xc.model.Message" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.stx.xc.Dao.DBUtil" %>
<%@ page import="com.stx.xc.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Freightage Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<style>
	*{
		font-family:"微软雅黑";
	}
	</style>

    <meta charset="utf-8" />
    <title>留言区</title>
    <script>
        function isNotEmpty() {
            var name = document.getElementById("username").value;
            var error = document.getElementById("error");
            var content = document.getElementById("content").value;
            /*
            if (name.length === 0) {
                error.innerHTML = "名字不能为空";
                return false;
            }
            if (name.length > 12) {
                error.innerHTML = "名字最多为12位";
                return false;
            }
            */
            if (content.length === 0) {
                error.innerHTML = "留言内容不能为空";
                return false;
            }
            error.innerHTML = "";
            return true;
        }
    </script>
</head>
<body>
<div class="banner-w3layouts" id="home">
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
						<div class="nav-contact-w3ls"><span id="phone1" style="color: aliceblue;" class="glyphicon glyphicon glyphicon-phone" aria-hidden="true"></span><p style="color: aliceblue;font-weight: bolder">加群交流 <br> <span class="call">211939856</span></p></div> 
						<a class="page-scroll" href="#myModal2" data-toggle="modal" data-hover="LOGIN">本网站无需登录请尽情使用</a>
			
					</div>

					<!-- navbar-header -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li>
							<a class="hvr-underline-from-center active scroll" href="index.jsp" >首页</a></li>
							<li>
							<a  class="hvr-underline-from-center scroll"
							href="jieshao.jsp" >技师介绍</a>
							</li>
							<li><a href="Toxictips.jsp" class="hvr-underline-from-center scroll">Toxic Tips</a></li>
							
							<li><a href="${pageContext.request.contextPath}/servlet/ListFileServlet" class="hvr-underline-from-center scroll scroll">资源分享</a></li>
							<li><a href="liuyanqu.jsp" class="hvr-underline-from-center scroll scroll">留言区</a>
						</ul>
					</div>
					<div class="clearfix"> </div>	
				</nav>
	
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
	
	
	
	
	
	
	
	<div class="features" id="features">
		<div class="container">
			<h2 class="title-w3" style="color: aliceblue; font-weight: bold;font-family: '微软雅黑';">留言区</h2>

    <form action="/FileUploadAndDownload/MessageServlet" method="post" onsubmit="return isNotEmpty()" >
       <!--  <input type="text" id="username" name="username" placeholder="名字"  class="form-control"/>
        <br/> -->
        <textarea  rows="7" id="content" name="content" placeholder="请输入您的留言内容" class="form-control"></textarea>
        <br/>
        <div id="error" style="color:white"></div>
        <input type="submit" value="提交" class="btn btn-primary "/>
        <hr/>
        <div style="color:white" class="container-fluid">
        <%
            DBUtil db = new DBUtil();
            List<Message> messages = db.getAllMessage();
            int j=messages.size();
            for (int i=0;i<messages.size();i++) {
                Message msg=messages.get(i);

        %>
        
        <%=j-- %>楼 &nbsp;&nbsp;&nbsp;&nbsp;  <%=msg.getSendTime()%> 
        <br/>
        
        <%=msg.getContent()%>
        <br />
        <br />
        <br />
        <%
            }
         
        %>
        </div>
    </form>
    </div>
    </div>
    </div>
    

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

