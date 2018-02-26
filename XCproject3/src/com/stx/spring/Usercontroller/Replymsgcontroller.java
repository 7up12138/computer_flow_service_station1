package com.stx.spring.Usercontroller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stx.spring.Userservice.IReply;
import com.stx.spring.Userservice.ISelectPost;
import com.stx.spring.Mymodel.TBModel;

@Controller
public class Replymsgcontroller {
	@Resource
	private IReply ireply;
	@RequestMapping("replysimple.do")
	public String replytb(int topic_id,String title,String content,String replymsg,String replyuserid,HttpServletRequest request)
	{
		//System.out.println("˵���˲�װ�Ƶ�"+topic_id+"---"+replymsg+"---"+title+"---"+content);
		TBModel mo=new TBModel();
		mo.setTopic_id(topic_id);
		mo.setTopic_title(title);
		mo.setPost_content(content);
		List<TBModel> list=ireply.insertReplymsg(topic_id,replymsg,replyuserid);		 
		request.setAttribute("title", mo);
		request.setAttribute("Simple", list);	
		
		return "ReturnSimpleSelectPostMessage";
		
	}
	
	@RequestMapping("replydelete.do")
	public String replydelete(int topic_id,String title,String content,int replyid,HttpServletRequest request)
	{
		TBModel mo=new TBModel();
		mo.setTopic_id(topic_id);
		mo.setTopic_title(title);
		mo.setPost_content(content);
		List<TBModel> list=ireply.selectReplymsg(topic_id,replyid);
		System.out.println("====="+list+"=========");
		request.setAttribute("title", mo);
		request.setAttribute("Simple", list);
		
		return "ReturnSimpleSelectPostMessage";
		
	}
}
