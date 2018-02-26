<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>个人中心</title>
<link href="/XCproject3/css/ourCss.css" rel="stylesheet">
    <style type="text/css">
        #content #tb #tb_top #tb_ul li{float: left;border:1px solid red;}
    </style>
</head>
<body>
<!-- 个人信息：
<br/>
<c:forEach items="${listuserinfo}" var="list">
姓名：${list.username}
电话号码：${list.phonenum}
<span id="useremail">个人邮箱：${list.emailname}</span>
</c:forEach>
<br/>
订单信息： -->

<!-- 需要循环 -->

<!-- <table  border="1">
<tr>
<th>订单编号</th>
<th>问题描述</th>
<th>姓名</th>
<th>电话号码</th>
<th>预约技师</th>
<th>预约时间</th>
<th>预约地点</th>
<th>下单时间</th>
<th>订单状态</th>
<c:forEach items="${ddinfo}" var="list">
<tr>
<td>${list.id}</td>
<td>${list.qname}</td>
<td>${list.pname}</td>
<td>${list.phonenum}</td>
<td>${list.yyjs}</td>
<td>${list.yytime}</td>
<td>${list.yyplace}</td>
<td>${list.yydate}</td>
<td>${list.flag}</td>
</tr>
</c:forEach>
</table>
<br/>
未完成订单：
<table  border="1">
<tr>
<th>订单编号</th>
<th>问题描述</th>
<th>姓名</th>
<th>电话号码</th>
<th>预约技师</th>
<th>预约时间</th>
<th>预约地点</th>
<th>下单时间</th>
<th>订单状态</th> -->

<!-- <th>订单操作</th> -->
<!-- <c:forEach items="${wddinfo}" var="list">
<tr>
<td>${list.id}</td>
<td>${list.qname}</td>
<td>${list.pname}</td>
<td>${list.phonenum}</td>
<td>${list.yyjs}</td>
<td>${list.yytime}</td>
<td>${list.yyplace}</td>
<td>${list.yydate}</td>
<td>${list.flag}</td> -->

<!-- <td>催单</td>  -->
<!-- </tr>
</c:forEach>
</table>
<br/>
已完成订单：
<table  border="1">
<tr>
<th>订单编号</th>
<th>问题描述</th>
<th>姓名</th>
<th>电话号码</th>
<th>预约技师</th>
<th>预约时间</th>
<th>预约地点</th>
<th>下单时间</th>
<th>订单状态</th>
<th>订单操作</th>
<c:forEach items="${yddinfo}" var="list">
<tr>
<td>${list.id}
<td>${list.qname}</td>
<td>${list.pname}</td>
<td>${list.phonenum}</td>
<td id="js">${list.yyjs}</td>
<td>${list.yytime}</td>
<td>${list.yyplace}</td>
<td>${list.yydate}</td>
<td>${list.flag}</td>
<td><a href="/XCproject3/pingjia.jsp?js=${list.yyjs}&id=${list.id}">评价</a></td>
</tr>
</c:forEach>
</table>
<br/>

发帖记录：  -->

<!-- 上面开始 -->
    <div id="top">
        <div id="left">计算机流动服务站</div>
        <div id="right">
            <div id="inleft">
                <span>加群交流</span>
                <span>21193985</span>
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
        <img src="/XCproject3/img/x2.png" style="width: 20px;height: 20px;margin-left: 92%;margin-top: 10px;">
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
    <div id="info">
        <div id="head">
            <img src="/XCproject3/img/bg2.png">
        </div>
        <div id="usernam">${emailname }</div>
    </div>

        <img src="/XCproject3/img/Kik-57.png" style="position: absolute;top: 255px;left: 230px;width: 30px;height: 30px;z-index: 10;">
        <img src="/XCproject3/img/Twitter-57.png" style="position: absolute;top: 295px;left: 230px;width: 30px;height: 30px;z-index: 10;">
        <img src="/XCproject3/img/Zynga-57.png" style="position: absolute;top: 335px;left: 230px;width: 30px;height: 30px;z-index: 10">
     <ul id="ul">

        <li class="active" id="select">个人信息</li>
        <li id="ding"  style="font-size: 20px;">订单信息</li>
        <li style="font-size: 20px;">发帖记录</li>
      </ul>

    <div id="content">
         <div class="aa" style="">
            <img src="/XCproject3/img/bd_bg1.jpg">
            <center>
             <table id="tab1" cellpadding="0" cellspacing="0">
                	<tr>
                	<td>姓名</td>
                	<td>电话号码</td>
                	<td>个人邮箱</td>
                	</tr>
                	<c:forEach items="${listuserinfo}" var="list">
                	<tr>
                	<td>${list.username}</td>
                	<td>${list.phonenum}</td>
                	<td>${list.emailname}</td>
                	</tr>
                	</c:forEach>
             </table>
             </center>
         </div>
         <div id="danzi" style="width:800px;">
            <p id="cont_top">
                <span id="sp1" style="background:#C8FF14;color: #000;" onclick="notext()">未完成</span>
                <span id="sp2" onclick="yestext()">已完成</span>
            </p>
            <table id="tab2" cellspacing="5" cellpadding="0" style="width:800px;">
                <tr>
                    <th>订单编号</th>
					<th>问题描述</th>
					<th>姓名</th>
					<th>电话号码</th>
					<th>预约技师</th>
					<th>预约时间</th>
					<th>预约地点</th>
					<th>下单时间</th>
					
                </tr>
                <c:forEach items="${wddinfo}" var="list">
					<tr>
					<td>${list.id}</td>
					<td>${list.qname}</td>
					<td>${list.pname}</td>
					<td>${list.phonenum}</td>
					<td>${list.yyjs}</td>
					<td>${list.yytime}</td>
					<td>${list.yyplace}</td>
					<td>${list.yydate}</td>
					
					</tr>
					</c:forEach>
            </table>

              <table id="tab3" cellspacing="5" cellpadding="0" style="width:800px;">
                <tr>
                 <th>订单编号</th>
					<th>问题描述</th>
					<th>姓名</th>
					<th>电话号码</th>
					<th>预约技师</th>
					<th>预约时间</th>
					<th>预约地点</th>
					<th>下单时间</th>
					<th>订单状态</th>
					<th>订单操作</th>
                </tr>
               <c:forEach items="${yddinfo}" var="list">
					<tr>
					<td>${list.id}
					<td>${list.qname}</td>
					<td>${list.pname}</td>
					<td>${list.phonenum}</td>
					<td id="js">${list.yyjs}</td>
					<td>${list.yytime}</td>
					<td>${list.yyplace}</td>
					<td>${list.yydate}</td>
					<td>${list.flag}</td>
					<td><a href="/XCproject3/pingjia.jsp?js=${list.yyjs}&id=${list.id}" style="color:red;">评价</a></td>
					</tr>
					</c:forEach>
            </table>
         </div>

         <div id="tb" style="background:#fff;height: 1000px;">
            <p id="tb_top">
                <ul id="tb_ul"">
                    <li style="margin-left: 400px;">网页</li>
                    <li>新闻</li>
                    <li>贴吧</li>
                    <li>地图</li>
                    <li>文库</li>
                </ul>
            </p>
            <p id="ip">
                <img src="/XCproject3/img/baidu.png" style="width: 100px;height: 35px;float: left;margin-top: 30px;margin-left: 105px;">
               <input type="" name="" id="ip_serch1" placeholder="百度">
                <input type="button" name="" value="百度一下" id="ip_serch2">
            </p>
            <p>
                <img src="/XCproject3/img/baidu2.png" style="width: 660px;height: 200px;margin-top: 80px;margin-left: 7px;">
            </p>

            <p>
                <p style="margin-top: 210px;"></p>
                <table id="tab4">
                    <tr>
                        <td>
                            <a href="" style="color: #000;">
                                <div contenteditable="true" class="divcon">
                                    11111111111111
                                </div>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="" style="color: #000;">
                                <div contenteditable="true" class="divcon">
                                    11111111111111
                                </div>
                            </a>
                        </td>
                    </tr>

                </table>
            </p>

            <p id="fix1">
                <a href="#answer">
                    <input type="button" name="" style="border: 0;background-position: #f36;width: 50px;height: 30px;" value="回复"></input>
                </a>
            </p>
            <p id="fix2">
                <input type="button" name="" style="border: 0;background-position: #f36;width: 50px;height: 30px;" value="顶部"></input>
            </p>
<!-- 回复 -->
            <p id="ans" style="background: #f36;">
                <div id="footer">
                    <span>发表新帖</span>
                    <span>发起投票</span>
                </div>
                <form action="" method="post">
                    <input type="text" name="" placeholder="请输入标题" style="width: 500px;height: 30px;margin-top: 5px;outline-color: #f36;">
                    <div contenteditable="true" id="answer">
                        2222222222222222
                    </div>
                    <input type="button" name="" value="发表" style="border: 0;background:#f36;color: #fff;width: 50px;height: 30px;margin-top:10px;">
                </form>
                <pre style="margin-top: 20px;margin-left: 50px;">©2017 Baidu 贴吧协议    | 吧主制度  | 意见反馈  | 网络谣言警示</pre>
            </p>
         </div>
     </div>
<!-- 下面结束 -->

<script src="/XCproject3/js/jquery-3.2.1.js"></script>
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

<script>
     $(function(){
               $('#ul>li').click(function(){
                  $(this).addClass('active').siblings().removeClass('active');
                  // '#content div 下索引与当前点击eq($(this)索引一致的显示.其他同胞兄弟隐藏;
                 $('#content div').eq($(this).index()).show().siblings().hide();
               })
     })
</script>

<script type="text/javascript">
    $(document).ready(function(){
      $("#select").click(function(){
         $("#select1").fadeToggle(500);
         $("#select2").fadeToggle(500);
         $("#select3").fadeToggle(500);
      });

      $("#ding").click(function(){
         $("#ding1").fadeToggle(500);
         $("#ding2").fadeToggle(500);
      });
    });
</script>

<!-- 订单信息 -->
<script type="text/javascript">
    var oCont_top = document.getElementById('cont_top');
    var aSp = oCont_top.getElementsByTagName('span');
    var oTab2 = document.getElementById('tab2');
    var oTab3 = document.getElementById('tab3');
    oTab2.style.display= 'block';
    function notext(){
        oTab3.style.display = 'none';
        aSp[1].style.cssText = 'background:#f36;color:#fff;';
        aSp[0].style.cssText = 'background:#C8FF14;color:#000;';
        oTab2.style.display = 'block';
    }
      function yestext(){
        oTab2.style.display = 'none';
        aSp[0].style.cssText = 'background:#f36;color:#fff;';
        aSp[1].style.cssText = 'background:#C8FF14;color:#000;';
        oTab3.style.display = 'block';
    }
</script>


</body>
</html>