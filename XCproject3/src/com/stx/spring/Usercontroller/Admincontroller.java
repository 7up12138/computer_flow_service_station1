package com.stx.spring.Usercontroller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stx.spring.Userservice.Adminservice;


@Controller
@RequestMapping("/admin")
public class Admincontroller {
	 @Resource
	    private Adminservice serv;
	    //登陆模块
     @RequestMapping("login.do")
     public String login(String emailname,String password,HttpServletRequest request){
    	 String adminname=serv.login(emailname,password);
    	 if(adminname!=""){
    		 return "adminfc";
    	 }else{
    		 request.setAttribute("msg", "帐号或者密码错误");
    		 return "admin";
    	 }
     }
     //查看订单信息
    @RequestMapping("ddinfo.do")
    public String ddinfo(HttpServletRequest request){
    	
    	List wanclist = serv.wcddinfo();
    	request.setAttribute("wancinfo", wanclist);
    	List weiwanclist=serv.wwcddinfo();
    	request.setAttribute("weiwancinfo", weiwanclist);
    	
    	return "allddinfo";
    }
    
    //确认完成订单 AJAX
    @RequestMapping("queren.do")
    public void quren(int ddid,HttpServletResponse response,HttpServletRequest request){
    	int x=0;
    	x=serv.quren(ddid);
    	if(x>0){
    	try {
    		List weiwanclist=serv.wwcddinfo();
        	request.setAttribute("weiwancinfo", weiwanclist);
        	response.getWriter().write("1");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//修改成功
    	}else{ 
    		try {
    			List weiwanclist=serv.wwcddinfo();
            	request.setAttribute("weiwancinfo", weiwanclist);
            	response.getWriter().write("0");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    		//确认失败
    	}
    }
    @RequestMapping("deleteid.do")
    public void deid(int ddid,HttpServletResponse response,HttpServletRequest request){
    	int x=0;
    	x=serv.deleteid(ddid);
    	if(x>0){
    		try {
    			List wanclist = serv.wcddinfo();
    	    	request.setAttribute("wancinfo", wanclist);
    			response.getWriter().write("1");
    		} catch (IOException e) {
    			e.printStackTrace();
    		}//删除成功
    	}else{
    		try {
				response.getWriter().write("0");
			} catch (IOException e) {
				// 删除失败
				e.printStackTrace();
			}
    	}
    }
}
