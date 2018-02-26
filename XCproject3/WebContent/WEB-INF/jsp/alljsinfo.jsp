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

<link href="" rel="stylesheet">
<link href="/XCproject3/css/global.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="/XCproject3/js/jquery-3.2.1.js"></script>
<script src="/XCproject3/js/jquery-1.10.2/jquery.min.js"></script>
<style>
	*{font-family:"微软雅黑";}
	#phone1{
		color:aliceblue;
	}
</style>
<style type="text/css">
        *{padding:0;margin:0;}
        a{text-decoration: none;color: #fff;}
        a:hover{text-decoration: none;}
        ul li{list-style: none;}
        body{background:url(img/home.jpg) no-repeat;}
        #top{width: 100%;height: 100px;background: rgba(0,0,0,0.2);overflow: hidden;}
        #left{width:300px;height: 100%;background:#FF304D;text-decoration: none;line-height: 100px;font-size: 36px;float: left;margin-left: 38px;font-weight: bold;padding-left:10px;padding-right: 10px;font-family: "微软雅黑";color: #fff; }
        #right{width: 600px;height:100%;float: right;overflow: hidden;}
        #top #right #inleft{width: 100px;height: 38px;border-right:3px solid #fff;margin-top: 15px;margin-left: 100px;float: left;}
        #top #right #inleft span{font-size: 18px;font-weight: bold;color: #fff;}
        #top #right #inright{font-size: 16px;color: #fff;background:#01BCFA;width: 230px;height:30px;float: left;margin-top: 18px;margin-left:25px;text-align: center;line-height:30px;font-weight: bold; }
        #top #right #inbtm{width: 500px;height: 30px;margin-top: 60px;position: relative;}
        #top #right #inbtm ul li{float: left;margin-left: 38px;font-family: "微软雅黑";}
        #top #right #inbtm .line1{border: 2px solid red;position: absolute;top:30px;left:38px;width: 30px;}
/*弹框样式*/
        #bigbox{width: 1346px;height:560px;background:rgba(0,0,0,0.5);position: absolute;z-index: 888;display: none;}
        #bigbox #tan{width: 600px;height: 480px;border:1px;position: absolute;z-index: 980;background: #fff;margin:10px 27%;border-radius: 5px;}
        #bigbox #tan #intan{width: 560px;height: 420px;margin: 3px 15px auto 20px;background: #272525;position: absolute;}
        #bigbox #tan #intan h1{font-size: 30px;color: #fff;margin-top:50px;margin-left: 45%;}
        #bigbox #tan #intan input{margin-top:30px;margin-left: 45px;width: 470px;height: 43px;font-size: 22px;
          background: #4A4848;border:0px;}
        #bigbox #tan #intan #ip2{margin-top: 30px;}
         #bigbox #tan #intan #out{overflow: hidden;height: 150px;}
        #bigbox #tan #intan div #selectpic{float: left;width: 15px;height: 15px;border:1px solid #fff;margin-left:50px;margin-top: 35px;}
        #bigbox #tan #intan #out #selectpic #inselectpic{width: 10px;height: 10px;border: 1px solid red;background: red;position: absolute;top:0;left: 0px;z-index: 999;}
        #bigbox #tan #intan div #remenber{float: left;color:#fff;margin-top: 32px;margin-left: 10px;}
        #bigbox #tan #intan div #wangji{float: right;color:#fff;margin-top: 32px;margin-right: 100px;}
        #bigbox #tan #intan div #login{color:#fff;margin-top: 32px;margin-right: 100px;font-weight: bold;margin-top: 90px;margin-left: 34%;font-size: 24px;font-family: "微软雅黑";}
        #bigbox #tan #intan div #login a{width: 180px;height:45px;display: block;text-align: center;line-height: 45px;background: #DD1733;}
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
						<div class="nav-contact-w3ls"><p style="color: aliceblue;font-weight: bolder">加群交流 <br> <span class="call">211939856</span></p></div> 
						<form action="intouserinfo.do">
						<input type="hidden" value="${emailname}" name="emailname"/>
						<input class="page-scroll" type ="submit" data-toggle="modal" data-hover="LOGIN" value="个人中心" style="border:0;background:#01bcfa;width:200px;height:36px;color:white;font-family:'微软雅黑'"/>
						</form>
					</div>
				
					
				
							
					<!-- navbar-header -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li>
							<a class="hvr-underline-from-center active scroll" href="/XCproject3/usermodel/login.do?username=${username}&password=${password}" >首页</a></li>
							<li>
							<a  class="hvr-underline-from-center scroll"href="/XCproject3/usermodel/alljsinfo.do" >技师介绍</a>
							</li>
							<li><a href="Toxictips.jsp" class="hvr-underline-from-center scroll">Toxic Tips</a></li>
							
							<li><a href="${pageContext.request.contextPath}/servlet/ListFileServlet" class="hvr-underline-from-center scroll scroll">资源分享</a></li>
							<li><a href="/XCproject3/TBModel/selectpost.do" class="hvr-underline-from-center scroll scroll">留言区</a> 
						</ul>
					</div>
					<div class="clearfix"> </div>	
				</nav>
	
	</div>
	
	<!--Slider-->
			
			
			
			
	 <div id="bigbox">

    <div id="tan">
      <div id="x">
        <img src="img/x2.png" style="width: 20px;height: 20px;margin-left: 92%;margin-top: 10px;">
      </div>
      <div id="intan">
        <h1>登陆</h1>
        <input type="" name="" placeholder="用户名" id="ip1" onfocus="ofs1()">
        <input type="" name="" placeholder="密码" id="ip2" onfocus="ofs2()">
        <div id="out">
            <div id="selectpic">
               <div id=inselectpic""></div>
            </div>
            <div id="remenber">记住密码</div>
            <div id="wangji"><a href="">忘记密码？</a></div>
            <div id="login"><a href="">立即登录</a></div>
        </div>
      </div>
    </div>
  </div>
<!-- 登陆框结束 -->

<!-- 下面开始 -->
    <div style="background:(255,255,255,0.5); padding:50px;">
<!--效果开始-->
    <div class="bd_con4">
       <div class="bd_t3">技师信息点击切换</div>
        <div class="bd_c4l">
        <ul>
       	<c:forEach items="${info }" var="info">
           <li class="bd_cutLi">${info.js_name}</li>
           </c:forEach>

        </ul>
       </div>

     <div class="bd_c4r">
      <div class="bd_c4top">
       <a href="#" class="bd_lbtn"></a>
       <div class="bd_chgBox">
          <div class="bd_long">
            <ul>
            <c:forEach items="${info}" var="info">
              <li>
         		<input type="hidden" value="${info.js_name}" name=" jsname" id="jsname"/>
                <div class="bc_chgTitle">${info.js_name}</div>
               <center> <a href="jsinfo.do?js=${info.js_name}"><img src="/XCproject3/${info.js_tp}" width="200" height="220" /></a></center>
                <p><a  href="jsinfo.do?js=${info.js_name}" ><span style="margin-left:40px;">年级：${info.js_nj}</span><br/><span style="margin-left:40px;">专业：${info.js_zy}</span><br/><span style="margin-left:40px;">邮箱：${info.js_emil}</span></a></p>
           		<br/>
           		<center><p><a  href="jsinfo.do?js=${info.js_name}" style="font-size:20px;" >查看详情</a></p></center>
              </li>
        
              </c:forEach>
            </ul>
          </div>
       </div>
       <a href="#" class="bd_rbtn"></a>
      </div>
      <br/>
     </div>
    </div>

    <script language="javascript">
  
    var cutItm=0;

    function autoPlay(){
        cutItm++;
        if(cutItm>11){
            cutItm=0;
        }
        $(".bd_c4l li").removeClass("bd_cutLi");
        $(".bd_c4l li").eq(cutItm).addClass("bd_cutLi");
        var leftVal=cutItm*268;
        $(".bd_long").animate({left:-leftVal},500);
    }

    var timeer=setInterval(autoPlay,2000);
    $(".bd_c4l,.bd_c4top").hover(function(){clearInterval(timeer)},function(){timeer=setInterval(autoPlay,2000);});

    $(".bd_c4l li").click(function(){
        cutItm=$(".bd_c4l li").index(this);
        $(".bd_c4l li").removeClass("bd_cutLi");$(this).addClass("bd_cutLi");
        var leftVal=cutItm*268;
        $(".bd_long").animate({left:-leftVal},500);
        });
    $(".bd_lbtn").click(function(){
        cutItm--;
        if(cutItm<0){
            cutItm=11;
        }
        $(".bd_c4l li").removeClass("bd_cutLi");
        $(".bd_c4l li").eq(cutItm).addClass("bd_cutLi");
        var leftVal=cutItm*268;
        $(".bd_long").animate({left:-leftVal},500);
    });
    $(".bd_rbtn").click(function(){
        cutItm++;
        if(cutItm>11){
            cutItm=0;
        }
        $(".bd_c4l li").removeClass("bd_cutLi");
        $(".bd_c4l li").eq(cutItm).addClass("bd_cutLi");
        var leftVal=cutItm*268;
        $(".bd_long").animate({left:-leftVal},500);
    });
    </script>
    <!--End-->
    </div>
    <div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
    </div>
    <!-- 下面结束 -->
        <script type="text/javascript">
        $(document).ready(function(){
            $("#one").mouseover(function(){
                $(".line1").animate({left:'58px',border:'2px solid red',width:'20px'});
            });
            $("#two").mouseover(function(){
                $(".line1").animate({left:'108px',width:'62px'});
            });
            $("#tree").mouseover(function(){
                $(".line1").animate({left:'205px',width:'90px'});
            });
            $("#four").mouseover(function(){
                $(".line1").animate({left:'334px',width:'62px'});
            });
            $("#five").mouseover(function(){
                $(".line1").animate({left:'435px',width:'50px'});
            });

            $("#one").mouseout(function(){
                $(".line1").animate({left:'38px',border:'1px solid red',width:'10px'});
            });
            $("#two").mouseout(function(){
                $(".line1").animate({left:'38px',border:'1px solid red',width:'10px'});
            });
            $("#tree").mouseout(function(){
                $(".line1").animate({left:'38px',border:'1px solid red',width:'10px'});
            });
            $("#four").mouseout(function(){
                $(".line1").animate({left:'38px',border:'1px solid red',width:'10px'});
            });
             $("#five").mouseout(function(){
                $(".line1").animate({left:'38px',border:'1px solid red',width:'10px'});
            });
        });

// 弹框
    var oInright = document.getElementById('inright');

    function ofs2(){
      var aInput = document.getElementsByTagName('input');
      aInput[1].style.outline='none';
      aInput[0].style.borderBottom='none';
      aInput[1].style.borderBottom='3px solid red';
    }
    function ofs1(){
      var aInput = document.getElementsByTagName('input');
      aInput[0].style.outline='none';
      aInput[1].style.borderBottom='none';
      aInput[0].style.borderBottom='3px solid red';
    }

    var oInselectpic = document.getElementById('inselectpic');
    oInselectpic.onclick = function(){


    };
    </script>
<script src="/XCproject3/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
    //关闭弹框
    $(document).ready(function(){
      $("#inright").click(function(){
         $("#bigbox").fadeIn(1000);
      });
      $("#x").click(function(){
        $("#bigbox").fadeOut(1000);
      });
    });
</script>	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
			
			
	<!--//Slider-->
			<div class="clearfix"></div>
						</div>
		
<!--//banner-->




	<div class="copy" style="">
		<p>© 2017  计算机科学系Toxic技术团| 双体系卓越人才教育基地 </p>
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
</body>
</html>