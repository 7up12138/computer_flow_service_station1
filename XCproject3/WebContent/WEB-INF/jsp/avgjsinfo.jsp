<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>实验</title>
<meta name="description" content="">
<meta name="keywords" content="">
<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
<script src="../js/jquery-1.10.2/jquery.min.js"></script>
<!--  <link rel="stylesheet" href="/XCproject3/css/down.css">  --> 
  <link rel="stylesheet" href="../css/down.css"> 

<link href="" rel="stylesheet">
    <style type="text/css">
        *{padding:0;margin:0;}
        a{text-decoration: none;color: #fff;}
        a:hover{text-decoration: none;}
        ul li{list-style: none;}
        body{background:#9AC733;}
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
        #bigbox{width: 100%;height:100%;background:rgba(0,0,0,0.5);position: absolute;z-index: 888;display: none;}
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
        /*信息介绍*/
        #middlebox #msg{width: 1000px;margin: 0 auto;background: rgba(255,255,255,0.3);background:#830F49;}
        #middlebox #msg #msg_left{width: 200px;height: 300px;margin-top: 20px;margin-left: 100px;float: left;}
        #middlebox #msg #msg_right{float: left;width: 600px;height: 250px;margin-top: 20px;margin-left: 30px;padding: 20px;padding-top: 30px;font-size: 22px;background:#fff;}
        #middlebox #msg #msg_right table{margin-left:30px;}  /*上面有内边距*/
        #middlebox #msg #msg_right tr td{width: 100px;height: 30px;line-height: 30px;}
        #middlebox #msg #msg_right tr .td1{width: 70px;height: 30px;line-height: 30px;}
        #middlebox #msg #info{width: 870px;height: 250px;clear: both;margin-left:100px;text-indent: 32px;background:#fff;border-radius: 5px;font-size: 25px;}
        #middlebox #msg #pingjia{width: 870px;height: 55px;clear: both;margin-left:100px;text-indent: 32px;background:#fff;}
        #middlebox #msg #pingjia2{width: 870px;clear: both;margin-left:100px;text-indent: 32px;background:#fff;}
        #middlebox #footer{width: 100%;height: 100px;text-align: center;background: rgba(255,255,255,0.2);font-size: 25px;}
    </style>
</head>
<body>
<body>
	<div style="width: 100vw;  position: absolute;mix-blend-mode: screen; z-index: 100; cursor: pointer; ">
  
<!-- 上面开始 -->
    <div id="top">
        <div id="left">计算机流动服务站</div>
        <div id="right">
            <div id="inleft">
                <span>加群交流</span>
                <span>211939856</span>
            </div>

            <dir id="inright">个人中心</dir>
            <div id="inbtm">
                <ul>
                    <li><a href="/XCproject3/usermodel/login.do?username=${username}&password=${password}" id="one">首页</a></li>
                    <li><a href="/XCproject3/usermodel/alljsinfo.do"  id="two">技师介绍</a></li>
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
        <img src="../img/x2.png" style="width: 20px;height: 20px;margin-left: 92%;margin-top: 10px;">
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

<div id="middlebox">
    <div id="msg">
    <c:forEach  var="info" items="${info}">
        <div id="msg_left">
            <img src="/XCproject3/${info.js_tp}" style="width:200px;height: 300px; ">
        </div>
     </c:forEach>
        <div id="msg_right">
            <table cellpadding="0" cellspacing="0">
               <c:forEach  var="info" items="${info}">
                <tr><td class="td1">姓名：</td><td>${info.js_name}</td></tr>
                <tr><td class="td1">编号：</td><td>${info.js_id}</td></tr>
                <tr><td class="td1">邮箱：</td><td>${info.js_emil}</td></tr>
                <tr><td class="td1">年级：</td><td>${info.js_nj}</td></tr>
                <tr><td class="td1">专业：</td><td>${info.js_zy}</td></tr>
               </c:forEach>
            </table>
        </div>
        <c:forEach  var="info" items="${info}">
        <div style="clear: both;margin-left: 100px;padding-top: 10px;margin-bottom: 10px;"><span style="padding-left: 10px;border-left:3px solid red;font-size: 25px;color: red;">个人简介</span></div>
        <div id="info" >
            ${info.js_jj}
        </div>
        </c:forEach>
        <div style="padding-top: 10px;margin-bottom: 10px;margin-left: 100px;"><span style="padding-left: 10px;border-left:3px solid red;font-size: 25px;color: red;">综合评价区</span></div>
        <div style="float:left;margin-top:-40px;padding-top: -60px;margin-bottom: 10px;margin-left: 780px;"><span style="padding-left: 10px;border-left:3px solid red;font-size: 25px;color: red;">评价人数：${count}</span></div>
        
        <div id="pingjia" style="padding-top: 5px;font-size: 22px;">
           <c:forEach var="avgpj" items="${avgpj}">
                <p style="display: inline-block;"><span>服务质量：</span><span>${avgpj.wxzl}</span></p>
                <p style="display: inline-block;margin-left:50px;"><span>服务态度：</span><span>${avgpj.wxtd}</span></p>
                <p style="display: inline-block;margin-left: 50px;"><span>服务速度：</span><span>${avgpj.smsd}</span></p>
            </c:forEach>
        </div>

        <div style="padding-top: 10px;margin-bottom: 10px;margin-left: 100px;"><span style="padding-left: 10px;border-left:3px solid red;font-size: 25px;color: red;">综合评价区</span></div>
        <div id="pingjia2" style="font-size: 22px;padding: 10px;">
            <table >
               <c:forEach var="cpl" items="${cpl}">
                   <tr><td>匿名用户：</td><td style="border-bottom:3px solid red;height:60px;">${cpl}</br></td></tr>
               </c:forEach>
            </table>
        </div>
    </div>

	<div id="footer"  style="text-align:center;line-height:100px;" >
		<p>© 2017  计算机科学系Toxic技术团| 双体系卓越人才教育基地 </p>
	</div>
</div>

</div>

<div class="falling-leaves" style=""></div>








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
<script src="../js/jquery-3.2.1.js"></script>
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
<script src="../js/index.js"></script>
</body>
</html>