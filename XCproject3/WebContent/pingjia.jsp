
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>计算机流动服务站</title>
    <style type="text/css">
        *{padding:0;margin:0;}
        a{text-decoration: none;color: #fff;}
        a:hover{text-decoration: none;}
        ul li{list-style: none;}
        body{background:url(img/home.jpg) no-repeat;background-size:100% 800px;}
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
<!-- 上面开始 -->
    <div id="top">
        <div id="left">计算机流动服务站</div>
        <div id="right">
            <div id="inleft">
                <span>加群交流</span>
                <span>211939856</span>
            </div>

            <dir id="inright">登陆后请尽情使用</dir>
            <div id="inbtm">
                <ul>
                    <li><a href="" id="one">首页</a></li>
                    <li><a href="" id="two">技师介绍</a></li>
                    <li><a href="" id="tree">TOXIC TIPS</a></li>
                    <li><a href="" id="four">资源分享</a></li>
                    <li><a href="" id="five">留言区</a></li>
                </ul>
                <div class="line1"></div>
                <div class="line2"></div>
                <div class="line3"></div>
                <div class="line4"></div>
                <div class="line5"></div>
            </div>
        </div>
    </div>
<!-- 上面结束 -->

<!-- 登陆框开始 -->
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

<div style="width: 530px;margin:0 auto;color: #fff;font-family: '微软雅黑';font-size: 18px; background: rgba(255,255,255,0.2);margin-top: 20px;border-radius: 5px;padding-bottom:10px;">
<form  action="usermodel/pingjia.do">
<input type="hidden" name="userid" value="${param.id }"/>
<input type="hidden" name="js" value="${param.js}"/>
<center>
	<div>
		<p style="font-size: 25px;padding:20px 8px 10px 8px;">
			请对为您服务的<span id="js" style="font-size: 30px;color: #FF304D">${param.js}</span>维修师进行评价
		</p>
	</div>
	<div>
		<p style="margin-top: 10px;margin-left: -120px;">维修质量：
			<select id="wxzl" name="wxzl">
			<option>5(非常满意)</option>
			<option>4(满意)</option>
			<option>3(一般)</option>
			<option>2(不满意)</option>
			<option>1(非常不满意)</option>
			</select>
		</p>
		<p style="margin-top: 10px;margin-left: -120px;">
		维修态度：
		<select id="wxtd" name="wxtd">
		<option>5(非常满意)</option>
		<option>4(满意)</option>
		<option>3(一般)</option>
		<option>2(不满意)</option>
		<option>1(非常不满意)</option>
		</select>
		</p>
		<p style="margin-top: 10px;margin-left: -120px;">
			上门速度：
			<select id="smsd" name="smsd">
			<option>5(非常满意)</option>
			<option>4(满意)</option>
			<option>3(一般)</option>
			<option>2(不满意)</option>
			<option>1(非常不满意)</option>
			</select>
		</p>
		<p style="margin-top: 10px;margin-left: -120px;">
			<div style="margin-left:-135px;">请写下你宝贵的评论：</div>
			<textarea id="pl" name="pl" style="width: 400px;height: 150px;">
			
			</textarea>
		</p>
			<input type="submit" value="确认提交" style="border: 0;background:#01BCFA;width: 80px;height:30px;color:#fff;margin-top:10px;"/>
		</form>
	</div>

</center>
</div>



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
<script src="js/jquery-3.2.1.js"></script>
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
</body>
</html>