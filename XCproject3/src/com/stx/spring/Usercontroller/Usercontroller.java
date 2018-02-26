package com.stx.spring.Usercontroller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;









import com.stx.spring.Mymodel.Mymodel;
import com.stx.spring.Mymodel.Plmodel;
import com.stx.spring.Mymodel.Usermodel;
import com.stx.spring.Userservice.Userservice;


	@Controller
	@RequestMapping("/usermodel")
	public class Usercontroller {
	    @Resource
	    private Userservice serv;
	    //登陆模块
        @RequestMapping("login.do")
	    public String login(String username,String password,HttpServletRequest request){
	    	String uname=serv.login(username,password);
	    	if(uname!=""){
	    		//根据用户邮箱查询用户姓名  最后显示在主页面
	    		//--------------未做
	    		List listjs = serv.listjs(); 
	    		request.getSession().setAttribute("js", listjs);
	    		 request.getSession().setAttribute("username", username);
	    		 request.getSession().setAttribute("password", password);
	    		 request.getSession().setAttribute("emailname", username);
	    		//将username传给index 显示username已经登录
	    		return "index";
	    	}else{
	    		request.setAttribute("msg", "用户名或密码错误");
	    		return "login";
	    	}
	    }
        //定义一个全局变量来设定验证码
        String eyzm ="";
        @RequestMapping("sendyzm.do")
        public void emailyz(String emailsend,HttpServletResponse response){
			String bool=serv.emailyz(emailsend);
			eyzm=bool;
			System.out.println(eyzm+"------");//测试验证码
			if(eyzm!=""){
				try {
					response.getWriter().write(eyzm);//验证码发送给前端
				} catch (IOException e) {
					e.printStackTrace();
				}
				
			}else{
				try {
					response.getWriter().write("0");//验证码发送失败
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
        }
        //注册模块
        @RequestMapping("regist.do")
        public String regist(Usermodel model,String yzm,HttpServletRequest request){
        	if(eyzm.equals(yzm)){
			int i=serv.regist(model);        	
        	if(i>0){
        	
        		return "registto";//注册成功后跳转成功页面
        	}else{
        		request.setAttribute("msg", "注册失败");
        		return "register"; //注册失败跳转回注册页面
        	}
        	}else{
        		request.setAttribute("msg", "验证码错误");
        		return "register";
        	}
        }
        //验证手机号码是否可用    在数据库中是否存在
        @RequestMapping("yzphonenum.do")
        public void yzphonenum(String phonenum,HttpServletResponse response){
        	String num=serv.yzphonenum(phonenum);
        	if(num!=""){
        		try {
					response.getWriter().write("0");//手机号已经存在，不可用状态
				} catch (IOException e) {
					e.printStackTrace();
				}
        	}else{
        		try {
					response.getWriter().write("1");//手机号不存在，可用状态
				} catch (IOException e) {
					e.printStackTrace();
				}
        	}
        }
        //验证邮箱是否可用 在数据库中是否存在
        @RequestMapping("yzemail.do")
        public void yzemail(String emailname,HttpServletResponse response){
           	String num=serv.yzemail(emailname);
        	if(num!=""){
        		try {
					response.getWriter().write("0");//邮箱已经存在，不可用状态
				} catch (IOException e) {
					e.printStackTrace();
				}                                                                                                                                                                                                                                                                           
        	}else{
        		try {
					response.getWriter().write("1");//邮箱不存在，可用状态
				} catch (IOException e) {
					e.printStackTrace();
				}
        	}
        	
        }
        //忘记密码模块
        @RequestMapping("updateuser.do")
        public String updatemima(String emailname,String password,HttpServletRequest request){
        	int x= serv.updatemima(emailname,password);
        	if(x>0){
        		//查询个人信息
        	List listuserinfo =serv.userinfo(emailname);
        	request.setAttribute("listuserinfo", listuserinfo);
        		//查询订单信息  可能为空需要判断
        	//未完成订单信息
        	List  wddinfo=serv.wddinfo(emailname);
        	request.getSession().setAttribute("wddinfo", wddinfo);
        	//已完成订单信息
        	List yddinfo=serv.yddinfo(emailname);
        	request.getSession().setAttribute("yddinfo", yddinfo);
        	/*	//查询发帖记录
        	List ftinfo=serv.ftinfo(emailname);
        		request.setAttribute("ftinfo", ftinfo);	
        	*/			
        		return "userinfo";
        	}else{
        		request.setAttribute("", "修改失败");
        		return "forget";
        	}
        }
        //登录后点击进入个人中心
        @RequestMapping("intouserinfo.do")
        public String userinfo(String emailname,HttpServletRequest request){
        	System.out.println(emailname+"-----------");
        	List listuserinfo =serv.userinfo(emailname);
        	request.setAttribute("listuserinfo", listuserinfo);
        		//查询订单信息  可能为空需要判断
        	//所有订单信息
        	List  ddinfo=serv.ddinfo(emailname);
        	request.getSession().setAttribute("ddinfo", ddinfo);
        	//未完成订单信息
        	List  wddinfo=serv.wddinfo(emailname);
        	request.getSession().setAttribute("wddinfo", wddinfo);
        	//已完成订单信息
        	List yddinfo=serv.yddinfo(emailname);
        	request.getSession().setAttribute("yddinfo", yddinfo);
        	/*	//查询发帖记录  --------------
        	List ftinfo=serv.ftinfo(emailname);
        		request.setAttribute("ftinfo", ftinfo);	
        	*/			
        		return "userinfo";    	
        }
        //下单模块
         @RequestMapping("xiadan.do")
         public void xidan(Mymodel model,HttpServletRequest request,HttpServletResponse response){
        	 int x=0;
        	 x=serv.xiadan(model);
        	 //当x>0时 代表数据库插入成功 一个单子已经下好
        	 if(x>0){
        		try {
        			response.getWriter().write("0");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
        		 
        	 }else{
        		 try {
        			 response.getWriter().write("1");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
        	 }
         }
	//评价功能模块
	@RequestMapping("pingjia.do")
	public String pingjia(Plmodel model,HttpServletRequest request){
		//取评价的第一个字符 是分数
		System.out.println( model.getJs()+"-----------------");
		int x=0;
		x=serv.pingjia(model);
		int ddid=Integer.parseInt(model.getUserid());
		String emailname=serv.pjcxusermail(ddid);
		List listuserinfo =serv.userinfo(emailname);
    	request.setAttribute("listuserinfo", listuserinfo);
    	//查询订单信息  可能为空需要判断
    	//所有订单信息
    	List  ddinfo=serv.ddinfo(emailname);
    	request.getSession().setAttribute("ddinfo", ddinfo);
    	//未完成订单信息
    	List  wddinfo=serv.wddinfo(emailname);
    	request.getSession().setAttribute("wddinfo", wddinfo);
    	//已完成订单信息
    	List yddinfo=serv.yddinfo(emailname);
    	request.getSession().setAttribute("yddinfo", yddinfo);
		
		return "userinfo";
	}
	
	//单个技师介绍功能模块
		@RequestMapping("jsinfo.do")
		public String jsinfo(String js,HttpServletRequest request){
			List  info = serv.jsinfo(js);  //查询技师的基本信息
			request.setAttribute("info", info);
			
			List  avgpj =serv.avgpj(js);//平均评分
			request.setAttribute("avgpj", avgpj);
			
			List pjcount=serv.countuser(js);
			request.setAttribute("count", pjcount);
			
			List   cpl=serv.cpl(js);//长评论
			request.setAttribute("cpl", cpl);
		
			return "avgjsinfo";
			
		}
	
		@RequestMapping("alljsinfo.do")
		public String alljsinfo(HttpServletRequest request){
			List  info = serv.alljsinfo();  //查询技师的基本信息
			request.setAttribute("info", info);
			return "alljsinfo";
		}
		
	}
	
	
	
	
	

 