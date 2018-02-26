
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
 <script>
	      function show(){
	    	  var show = document.getElementById("f");//显示文本的对象 
	    	  var content = document.getElementById("content");//输入文字的对象
	    	  show.value=content.value;
	    	  }
	   </script>
<style type="text/css">
	*{ margin:0; padding:0;font-family: "微软雅黑";}
	a{text-decoration:none;}s
	body{width:100%; height:100%;overflow:hidden;}
	#selectbigbox{top: 0px;left: 0px;width: 550px;height:450px;margin-left:32%;padding-bottom:10px;background: rgba(255,255,255,0.2);border-radius: 5px;padding-top: 10px;}
	#selectbigbox #content{color:#fff;border:none;width:200px;height:20px;background:#00BBFF;opacity: 0;}
	#selectbigbox #sure{border: 0; background: #00BBFF;color:#fff;width:92px;height:32px;float:left;margin-left: 120px;margin-top:-54px;}
	#selectbigbox #sure1{border: 0; background: #00BBFF;color:#fff;width:245px;height:32px;float:left;margin-top:6px;}
	.ccc{margin-left:250px;}
	.aaaa{margin-left:-200px;margin-top:-240px;float:left;}
	
	
	#selectbigbox #oa{display:block;width: 100px;height: 30px;border:1px solid #00BBFF;color:#000;background:#00BBFF;text-align: center;line-height: 30px;margin-top:20px;margin-left:0px;}
	
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
        #bigbox{width: 100%;height:560px;background:rgba(0,0,0,0.5);position: absolute;z-index: 888;display: none;}
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

		#myform .aip{width:170px;height:20px;}
    </style>
</head>

<body style="background-image:url(images/slide-2.jpg);color:white;font-family:'微软雅黑';">






<div id="selectbigbox" style="margin-top:75px">
	<div class="ccc">

	<form action="photo1.do" method="post" enctype="multipart/form-data">
		
		<p id="oa"><b style="color: #fff;">修改照片</b><input type="file" id="content" name="file1" ></p>
		<br/>
		<input type="submit" value="确认" onclick="show()" id="sure">
	   
	</form>

	<form action="insert1.do" id="myform">
		技师编号:<input type="text" readonly value="${aa.js_id}" name="id" class="aip"><br><br>
		技师姓名:<input type="text" value="${aa.js_name}" name="name" class="aip"><br><br>
		技师年级:<input type="text" value="${aa.js_nj}" name="nj" class="aip"><br><br>
		技师专业:<input type="text" value="${aa.js_zy}" name="zy" class="aip"><br><br>
		技师简介:<input type="text" value="${aa.js_jj}" name="jj" class="aip"><br><br>
		电子邮件:<input type="text" value="${aa.js_emil}" name="emil" class="aip"><br><br>
		图片路径:<input type="text" id="f"  value="${aa.js_tp}" name="tp" class="aip"/><br>


		<div class="aaaa"><img src="${aa.js_tp}" style="width: 210px;height: 330px;margin-top:-60px;margin-left: -25px;"></div>

		<input type="submit" value="修改" id="sure1" style="margin-top:20px;">
	</form>
	</div>
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